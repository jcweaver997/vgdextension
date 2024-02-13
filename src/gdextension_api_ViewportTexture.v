module vgdextension

@[noinit]
pub struct ViewportTexture {
    Texture2D
}

pub fn (mut r ViewportTexture) set_viewport_path_in_scene(path NodePath) {
    classname := StringName.new("ViewportTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_viewport_path_in_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ViewportTexture) get_viewport_path_in_scene() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("ViewportTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_viewport_path_in_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
