module vgdextension

pub enum PortableCompressedTexture2DCompressionMode {
    compression_mode_lossless = 0
    compression_mode_lossy = 1
    compression_mode_basis_universal = 2
    compression_mode_s3tc = 3
    compression_mode_etc2 = 4
    compression_mode_bptc = 5
}

pub type PortableCompressedTexture2D = voidptr

pub fn (mut r PortableCompressedTexture2D) create_from_image(image Image, compression_mode PortableCompressedTexture2DCompressionMode, normal_map bool, lossy_quality f32) {
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("create_from_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 97251393)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PortableCompressedTexture2D) get_format() ImageFormat {
    mut object_out := ImageFormat.format_l8
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PortableCompressedTexture2D) get_compression_mode() PortableCompressedTexture2DCompressionMode {
    mut object_out := PortableCompressedTexture2DCompressionMode.compression_mode_lossless
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_compression_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3265612739)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PortableCompressedTexture2D) set_size_override(size Vector2) {
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PortableCompressedTexture2D) get_size_override() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PortableCompressedTexture2D) set_keep_compressed_buffer(keep bool) {
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_keep_compressed_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PortableCompressedTexture2D) is_keeping_compressed_buffer() bool {
    mut object_out := false
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_keeping_compressed_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn PortableCompressedTexture2D.set_keep_all_compressed_buffers(keep bool) {
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_keep_all_compressed_buffers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, unsafe{nil})
}
pub fn PortableCompressedTexture2D.is_keeping_all_compressed_buffers() bool {
    mut object_out := false
    classname := StringName.new("PortableCompressedTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_keeping_all_compressed_buffers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
   return object_out
}
