pub type EditorResourcePreviewGenerator = voidptr

pub fn (r &EditorResourcePreviewGenerator) uhandles(type_name String) bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePreviewGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("_handles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourcePreviewGenerator) ugenerate(resource Resource, size Vector2i, metadata Dictionary) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("EditorResourcePreviewGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("_generate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourcePreviewGenerator) ugenerate_from_path(path String, size Vector2i, metadata Dictionary) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("EditorResourcePreviewGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("_generate_from_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourcePreviewGenerator) ugenerate_small_preview_automatically() bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePreviewGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("_generate_small_preview_automatically")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourcePreviewGenerator) ucan_generate_small_preview() bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePreviewGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("_can_generate_small_preview")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
