module vgdextension

@[noinit]
pub struct EditorExportPlatform {
    RefCounted
}

pub fn (r &EditorExportPlatform) get_os_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorExportPlatform")
    fnname := StringName.new("get_os_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
