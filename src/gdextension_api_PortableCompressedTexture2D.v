module vgdextension

pub enum PortableCompressedTexture2DCompressionMode as i64 {
    compression_mode_lossless = 0
    compression_mode_lossy = 1
    compression_mode_basis_universal = 2
    compression_mode_s3tc = 3
    compression_mode_etc2 = 4
    compression_mode_bptc = 5
}

@[noinit]
pub struct PortableCompressedTexture2D {
    Texture2D
}

pub fn (r &PortableCompressedTexture2D) create_from_image(image Image, compression_mode PortableCompressedTexture2DCompressionMode, normal_map bool, lossy_quality f64) {
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("create_from_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3679243433)
    mut args := unsafe { [4]voidptr{} }
    args[0] = image.ptr
    i64_compression_mode := i64(compression_mode)
    args[1] = unsafe{voidptr(&i64_compression_mode)}
    args[2] = unsafe{voidptr(&normal_map)}
    args[3] = unsafe{voidptr(&lossy_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PortableCompressedTexture2D) get_format() ImageFormat {
    mut object_out := i64(ImageFormat.format_l8)
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ImageFormat(object_out)}
}
pub fn (r &PortableCompressedTexture2D) get_compression_mode() PortableCompressedTexture2DCompressionMode {
    mut object_out := i64(PortableCompressedTexture2DCompressionMode.compression_mode_lossless)
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("get_compression_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3265612739)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PortableCompressedTexture2DCompressionMode(object_out)}
}
pub fn (r &PortableCompressedTexture2D) set_size_override(size Vector2) {
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("set_size_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PortableCompressedTexture2D) get_size_override() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("get_size_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PortableCompressedTexture2D) set_keep_compressed_buffer(keep bool) {
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("set_keep_compressed_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keep)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PortableCompressedTexture2D) is_keeping_compressed_buffer() bool {
    mut object_out := false
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("is_keeping_compressed_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn PortableCompressedTexture2D.set_keep_all_compressed_buffers(keep bool) {
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("set_keep_all_compressed_buffers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keep)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn PortableCompressedTexture2D.is_keeping_all_compressed_buffers() bool {
    mut object_out := false
    classname := StringName.new("PortableCompressedTexture2D")
    fnname := StringName.new("is_keeping_all_compressed_buffers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
