module vgdextension

pub enum TextureLayeredLayeredType as i64 {
    layered_type_2d_array = 0
    layered_type_cubemap = 1
    layered_type_cubemap_array = 2
}

@[noinit]
pub struct TextureLayered {
    Texture
}

pub interface ITextureLayeredGetFormat {
    mut:
    virt_get_format() ImageFormat
}

pub fn (r &TextureLayered) uget_format() ImageFormat {
    mut object_out := i64(ImageFormat.format_l8)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("_get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ImageFormat(object_out)}
}
pub interface ITextureLayeredGetLayeredType {
    mut:
    virt_get_layered_type() u32
}

pub fn (r &TextureLayered) uget_layered_type() u32 {
    mut object_out := u32(0)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("_get_layered_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextureLayeredGetWidth {
    mut:
    virt_get_width() i32
}

pub fn (r &TextureLayered) uget_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("_get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextureLayeredGetHeight {
    mut:
    virt_get_height() i32
}

pub fn (r &TextureLayered) uget_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("_get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextureLayeredGetLayers {
    mut:
    virt_get_layers() i32
}

pub fn (r &TextureLayered) uget_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("_get_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextureLayeredHasMipmaps {
    mut:
    virt_has_mipmaps() bool
}

pub fn (r &TextureLayered) uhas_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("_has_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITextureLayeredGetLayerData {
    mut:
    virt_get_layer_data(layer_index i32) Image
}

pub fn (r &TextureLayered) uget_layer_data(layer_index i32) Image {
    mut object_out := Image{}
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("_get_layer_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureLayered) get_format() ImageFormat {
    mut object_out := i64(ImageFormat.format_l8)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ImageFormat(object_out)}
}
pub fn (r &TextureLayered) get_layered_type() TextureLayeredLayeredType {
    mut object_out := i64(TextureLayeredLayeredType.layered_type_2d_array)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("get_layered_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 518123893)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextureLayeredLayeredType(object_out)}
}
pub fn (r &TextureLayered) get_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureLayered) get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureLayered) get_layers() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("get_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureLayered) has_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("has_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureLayered) get_layer_data(layer i32) Image {
    mut object_out := Image{}
    classname := StringName.new("TextureLayered")
    fnname := StringName.new("get_layer_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3655284255)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
