pub type EditorScenePostImport = voidptr

pub fn (mut r EditorScenePostImport) upost_import(scene Node) Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("EditorScenePostImport")
    defer { classname.deinit() }
    fnname := StringName.new("_post_import")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scene)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorScenePostImport) get_source_file() String {
    mut object_out := String{}
    classname := StringName.new("EditorScenePostImport")
    defer { classname.deinit() }
    fnname := StringName.new("get_source_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
