module vgdextension

@[noinit]
pub struct EditorInspector {
    ScrollContainer
}

pub fn (r &EditorInspector) get_selected_path() String {
    mut object_out := String{}
    classname := StringName.new("EditorInspector")
    fnname := StringName.new("get_selected_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorInspector) get_edited_object() Object {
    mut object_out := Object{}
    classname := StringName.new("EditorInspector")
    fnname := StringName.new("get_edited_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2050059866)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
