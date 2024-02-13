module vgdextension

@[noinit]
pub struct PlaceholderTextureLayered {
    TextureLayered
}

pub fn (mut r PlaceholderTextureLayered) set_size(size Vector2i) {
    classname := StringName.new("PlaceholderTextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PlaceholderTextureLayered) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("PlaceholderTextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PlaceholderTextureLayered) set_layers(layers i32) {
    classname := StringName.new("PlaceholderTextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("set_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
