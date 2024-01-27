pub type EditorSceneFormatImporter = voidptr

pub fn (r &EditorSceneFormatImporter) uget_import_flags() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorSceneFormatImporter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_import_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorSceneFormatImporter) uget_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSceneFormatImporter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSceneFormatImporter) uimport_scene(path String, flags i32, options Dictionary) Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("EditorSceneFormatImporter")
    defer { classname.deinit() }
    fnname := StringName.new("_import_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&flags)}
    args[2] = unsafe{voidptr(&options)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSceneFormatImporter) uget_import_options(path String) {
    classname := StringName.new("EditorSceneFormatImporter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_import_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSceneFormatImporter) uget_option_visibility(path String, for_animation bool, option String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorSceneFormatImporter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_option_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&for_animation)}
    args[2] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
