module vgdextension

@[noinit]
pub struct EditorScenePostImport {
    RefCounted
}

pub interface IEditorScenePostImportPostImport {
    mut:
    virt_post_import(scene Node) Object
}

pub fn (r &EditorScenePostImport) upost_import(scene Node) Object {
    mut object_out := Object{}
    classname := StringName.new("EditorScenePostImport")
    fnname := StringName.new("_post_import")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&scene.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorScenePostImport) get_source_file() string {
    mut object_out := String{}
    classname := StringName.new("EditorScenePostImport")
    fnname := StringName.new("get_source_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
