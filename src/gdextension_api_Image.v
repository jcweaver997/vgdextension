pub enum ImageFormat {
    format_l8 = 0
    format_la8 = 1
    format_r8 = 2
    format_rg8 = 3
    format_rgb8 = 4
    format_rgba8 = 5
    format_rgba4444 = 6
    format_rgb565 = 7
    format_rf = 8
    format_rgf = 9
    format_rgbf = 10
    format_rgbaf = 11
    format_rh = 12
    format_rgh = 13
    format_rgbh = 14
    format_rgbah = 15
    format_rgbe9995 = 16
    format_dxt1 = 17
    format_dxt3 = 18
    format_dxt5 = 19
    format_rgtc_r = 20
    format_rgtc_rg = 21
    format_bptc_rgba = 22
    format_bptc_rgbf = 23
    format_bptc_rgbfu = 24
    format_etc = 25
    format_etc2_r11 = 26
    format_etc2_r11s = 27
    format_etc2_rg11 = 28
    format_etc2_rg11s = 29
    format_etc2_rgb8 = 30
    format_etc2_rgba8 = 31
    format_etc2_rgb8a1 = 32
    format_etc2_ra_as_rg = 33
    format_dxt5_ra_as_rg = 34
    format_astc_4x4 = 35
    format_astc_4x4_hdr = 36
    format_astc_8x8 = 37
    format_astc_8x8_hdr = 38
    format_max = 39
}

pub enum ImageInterpolation {
    interpolate_nearest = 0
    interpolate_bilinear = 1
    interpolate_cubic = 2
    interpolate_trilinear = 3
    interpolate_lanczos = 4
}

pub enum ImageAlphaMode {
    alpha_none = 0
    alpha_bit = 1
    alpha_blend = 2
}

pub enum ImageCompressMode {
    compress_s3tc = 0
    compress_etc = 1
    compress_etc2 = 2
    compress_bptc = 3
    compress_astc = 4
    compress_max = 5
}

pub enum ImageUsedChannels {
    used_channels_l = 0
    used_channels_la = 1
    used_channels_r = 2
    used_channels_rg = 3
    used_channels_rgb = 4
    used_channels_rgba = 5
}

pub enum ImageCompressSource {
    compress_source_generic = 0
    compress_source_srgb = 1
    compress_source_normal = 2
}

pub enum ImageASTCFormat {
    astc_format_4x4 = 0
    astc_format_8x8 = 1
}

pub type Image = voidptr

pub fn (r &Image) get_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) has_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("has_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) get_format() ImageFormat {
    mut object_out := ImageFormat.format_l8
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) get_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) convert(format ImageFormat) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("convert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2120693146)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Image) get_mipmap_offset(mipmap i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_mipmap_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mipmap)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) resize_to_po2(square bool, interpolation ImageInterpolation) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("resize_to_po2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4189212329)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) resize(width i32, height i32, interpolation ImageInterpolation) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("resize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2461393748)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) shrink_x2() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("shrink_x2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) crop(width i32, height i32) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("crop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) flip_x() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("flip_x")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) flip_y() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("flip_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) generate_mipmaps(renormalize bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("generate_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1633102583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&renormalize)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) clear_mipmaps() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("clear_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn Image.create(width i32, height i32, use_mipmaps bool, format ImageFormat) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 986942177)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    args[1] = unsafe{voidptr(&height)}
    args[2] = unsafe{voidptr(&use_mipmaps)}
    args[3] = unsafe{voidptr(&format)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn Image.create_from_data(width i32, height i32, use_mipmaps bool, format ImageFormat, data PackedByteArray) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("create_from_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 299398494)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    args[1] = unsafe{voidptr(&height)}
    args[2] = unsafe{voidptr(&use_mipmaps)}
    args[3] = unsafe{voidptr(&format)}
    args[4] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) set_data(width i32, height i32, use_mipmaps bool, format ImageFormat, data PackedByteArray) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2740482212)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Image) is_empty() bool {
    mut object_out := false
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) load(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("load")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn Image.load_from_file(path String) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("load_from_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 736337515)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) save_png(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("save_png")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2113323047)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) save_png_to_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("save_png_to_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) save_jpg(path String, quality f32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("save_jpg")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 578836491)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) save_jpg_to_buffer(quality f32) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("save_jpg_to_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 592235273)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) save_exr(path String, grayscale bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("save_exr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108122999)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&grayscale)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) save_exr_to_buffer(grayscale bool) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("save_exr_to_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3178917920)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&grayscale)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) save_webp(path String, lossy bool, quality f32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("save_webp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3594949219)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&lossy)}
    args[2] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) save_webp_to_buffer(lossy bool, quality f32) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("save_webp_to_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214628238)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&lossy)}
    args[1] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) detect_alpha() ImageAlphaMode {
    mut object_out := ImageAlphaMode.alpha_none
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("detect_alpha")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2030116505)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) is_invisible() bool {
    mut object_out := false
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("is_invisible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) detect_used_channels(source ImageCompressSource) ImageUsedChannels {
    mut object_out := ImageUsedChannels.used_channels_l
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("detect_used_channels")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2703139984)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&source)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) compress(mode ImageCompressMode, source ImageCompressSource, astc_format ImageASTCFormat) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("compress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4094210332)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    args[1] = unsafe{voidptr(&source)}
    args[2] = unsafe{voidptr(&astc_format)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) compress_from_channels(mode ImageCompressMode, channels ImageUsedChannels, astc_format ImageASTCFormat) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("compress_from_channels")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 279105990)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    args[1] = unsafe{voidptr(&channels)}
    args[2] = unsafe{voidptr(&astc_format)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) decompress() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("decompress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) is_compressed() bool {
    mut object_out := false
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("is_compressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) rotate_90(direction ClockDirection) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("rotate_90")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1901204267)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) rotate_180() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("rotate_180")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) fix_alpha_edges() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("fix_alpha_edges")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) premultiply_alpha() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("premultiply_alpha")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) srgb_to_linear() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("srgb_to_linear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) normal_map_to_xy() {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("normal_map_to_xy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) rgbe_to_srgb() Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("rgbe_to_srgb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 564927088)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) bump_map_to_normal_map(bump_scale f32) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("bump_map_to_normal_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3423495036)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) compute_image_metrics(compared_image Image, use_luma bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("compute_image_metrics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3080961247)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&compared_image)}
    args[1] = unsafe{voidptr(&use_luma)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) blit_rect(src Image, src_rect Rect2i, dst Vector2i) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("blit_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903928755)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) blit_rect_mask(src Image, mask Image, src_rect Rect2i, dst Vector2i) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("blit_rect_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383581145)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) blend_rect(src Image, src_rect Rect2i, dst Vector2i) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("blend_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903928755)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) blend_rect_mask(src Image, mask Image, src_rect Rect2i, dst Vector2i) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("blend_rect_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383581145)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) fill(color Color) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("fill")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) fill_rect(rect Rect2i, color Color) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("fill_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 514693913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Image) get_used_rect() Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_used_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Image) get_region(region Rect2i) Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2601441065)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) copy_from(src Image) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("copy_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Image) get_pixelv(point Vector2i) Color {
    mut object_out := Color{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_pixelv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1532707496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Image) get_pixel(x i32, y i32) Color {
    mut object_out := Color{}
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("get_pixel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2165839948)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) set_pixelv(point Vector2i, color Color) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("set_pixelv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 287851464)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) set_pixel(x i32, y i32, color Color) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("set_pixel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3733378741)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) adjust_bcs(brightness f32, contrast f32, saturation f32) {
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("adjust_bcs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385087082)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Image) load_png_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("load_png_from_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) load_jpg_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("load_jpg_from_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) load_webp_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("load_webp_from_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) load_tga_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("load_tga_from_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Image) load_bmp_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Image")
    defer { classname.deinit() }
    fnname := StringName.new("load_bmp_from_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
