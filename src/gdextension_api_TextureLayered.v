module vgdextension

pub enum TextureLayeredLayeredType {
    layered_type_2d_array = 0
    layered_type_cubemap = 1
    layered_type_cubemap_array = 2
}

pub type TextureLayered = voidptr

pub fn (r &TextureLayered) uget_format() ImageFormat {
    mut object_out := ImageFormat.format_l8
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("_get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) uget_layered_type() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("_get_layered_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) uget_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("_get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) uget_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("_get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) uget_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("_get_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) uhas_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("_has_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) uget_layer_data(layer_index i32) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("_get_layer_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) get_format() ImageFormat {
    mut object_out := ImageFormat.format_l8
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) get_layered_type() TextureLayeredLayeredType {
    mut object_out := TextureLayeredLayeredType.layered_type_2d_array
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("get_layered_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 518123893)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) get_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) get_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("get_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) has_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("has_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureLayered) get_layer_data(layer i32) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("TextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("get_layer_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3655284255)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
