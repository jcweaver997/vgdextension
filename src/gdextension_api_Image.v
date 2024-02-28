module vgdextension

pub enum ImageFormat as i64 {
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

pub enum ImageInterpolation as i64 {
    interpolate_nearest = 0
    interpolate_bilinear = 1
    interpolate_cubic = 2
    interpolate_trilinear = 3
    interpolate_lanczos = 4
}

pub enum ImageAlphaMode as i64 {
    alpha_none = 0
    alpha_bit = 1
    alpha_blend = 2
}

pub enum ImageCompressMode as i64 {
    compress_s3tc = 0
    compress_etc = 1
    compress_etc2 = 2
    compress_bptc = 3
    compress_astc = 4
    compress_max = 5
}

pub enum ImageUsedChannels as i64 {
    used_channels_l = 0
    used_channels_la = 1
    used_channels_r = 2
    used_channels_rg = 3
    used_channels_rgb = 4
    used_channels_rgba = 5
}

pub enum ImageCompressSource as i64 {
    compress_source_generic = 0
    compress_source_srgb = 1
    compress_source_normal = 2
}

pub enum ImageASTCFormat as i64 {
    astc_format_4x4 = 0
    astc_format_8x8 = 1
}

@[noinit]
pub struct Image {
    Resource
}

pub fn (r &Image) get_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Image")
    fnname := StringName.new("get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Image")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Image")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) has_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("Image")
    fnname := StringName.new("has_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) get_format() ImageFormat {
    mut object_out := i64(ImageFormat.format_l8)
    classname := StringName.new("Image")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ImageFormat(object_out)}
}
pub fn (r &Image) get_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    fnname := StringName.new("get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) convert(format ImageFormat) {
    classname := StringName.new("Image")
    fnname := StringName.new("convert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2120693146)
    mut args := unsafe { [1]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) get_mipmap_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Image")
    fnname := StringName.new("get_mipmap_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) get_mipmap_offset(mipmap i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Image")
    fnname := StringName.new("get_mipmap_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mipmap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) resize_to_po2(square bool, interpolation ImageInterpolation) {
    classname := StringName.new("Image")
    fnname := StringName.new("resize_to_po2")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4189212329)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&square)}
    i64_interpolation := i64(interpolation)
    args[1] = unsafe{voidptr(&i64_interpolation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) resize(width i32, height i32, interpolation ImageInterpolation) {
    classname := StringName.new("Image")
    fnname := StringName.new("resize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 994498151)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    args[1] = unsafe{voidptr(&height)}
    i64_interpolation := i64(interpolation)
    args[2] = unsafe{voidptr(&i64_interpolation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) shrink_x2() {
    classname := StringName.new("Image")
    fnname := StringName.new("shrink_x2")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) crop(width i32, height i32) {
    classname := StringName.new("Image")
    fnname := StringName.new("crop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    args[1] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) flip_x() {
    classname := StringName.new("Image")
    fnname := StringName.new("flip_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) flip_y() {
    classname := StringName.new("Image")
    fnname := StringName.new("flip_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) generate_mipmaps(renormalize bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("generate_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1633102583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&renormalize)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) clear_mipmaps() {
    classname := StringName.new("Image")
    fnname := StringName.new("clear_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn Image.create(width i32, height i32, use_mipmaps bool, format ImageFormat) Image {
    mut object_out := Image{}
    classname := StringName.new("Image")
    fnname := StringName.new("create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 986942177)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    args[1] = unsafe{voidptr(&height)}
    args[2] = unsafe{voidptr(&use_mipmaps)}
    i64_format := i64(format)
    args[3] = unsafe{voidptr(&i64_format)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn Image.create_from_data(width i32, height i32, use_mipmaps bool, format ImageFormat, data PackedByteArray) Image {
    mut object_out := Image{}
    classname := StringName.new("Image")
    fnname := StringName.new("create_from_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 299398494)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    args[1] = unsafe{voidptr(&height)}
    args[2] = unsafe{voidptr(&use_mipmaps)}
    i64_format := i64(format)
    args[3] = unsafe{voidptr(&i64_format)}
    args[4] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) set_data(width i32, height i32, use_mipmaps bool, format ImageFormat, data PackedByteArray) {
    classname := StringName.new("Image")
    fnname := StringName.new("set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2740482212)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    args[1] = unsafe{voidptr(&height)}
    args[2] = unsafe{voidptr(&use_mipmaps)}
    i64_format := i64(format)
    args[3] = unsafe{voidptr(&i64_format)}
    args[4] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) is_empty() bool {
    mut object_out := false
    classname := StringName.new("Image")
    fnname := StringName.new("is_empty")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) load(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn Image.load_from_file(path string) Image {
    mut object_out := Image{}
    classname := StringName.new("Image")
    fnname := StringName.new("load_from_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 736337515)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) save_png(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("save_png")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2113323047)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) save_png_to_buffer() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    fnname := StringName.new("save_png_to_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2362200018)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) save_jpg(path string, quality f64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("save_jpg")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2800019068)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) save_jpg_to_buffer(quality f64) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    fnname := StringName.new("save_jpg_to_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 592235273)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) save_exr(path string, grayscale bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("save_exr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3108122999)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&grayscale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) save_exr_to_buffer(grayscale bool) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    fnname := StringName.new("save_exr_to_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3178917920)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&grayscale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) save_webp(path string, lossy bool, quality f64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("save_webp")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2781156876)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&lossy)}
    args[2] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) save_webp_to_buffer(lossy bool, quality f64) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Image")
    fnname := StringName.new("save_webp_to_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214628238)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&lossy)}
    args[1] = unsafe{voidptr(&quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) detect_alpha() ImageAlphaMode {
    mut object_out := i64(ImageAlphaMode.alpha_none)
    classname := StringName.new("Image")
    fnname := StringName.new("detect_alpha")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2030116505)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ImageAlphaMode(object_out)}
}
pub fn (r &Image) is_invisible() bool {
    mut object_out := false
    classname := StringName.new("Image")
    fnname := StringName.new("is_invisible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) detect_used_channels(source ImageCompressSource) ImageUsedChannels {
    mut object_out := i64(ImageUsedChannels.used_channels_l)
    classname := StringName.new("Image")
    fnname := StringName.new("detect_used_channels")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2703139984)
    mut args := unsafe { [1]voidptr{} }
    i64_source := i64(source)
    args[0] = unsafe{voidptr(&i64_source)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ImageUsedChannels(object_out)}
}
pub fn (r &Image) compress(mode ImageCompressMode, source ImageCompressSource, astc_format ImageASTCFormat) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("compress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2975424957)
    mut args := unsafe { [3]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    i64_source := i64(source)
    args[1] = unsafe{voidptr(&i64_source)}
    i64_astc_format := i64(astc_format)
    args[2] = unsafe{voidptr(&i64_astc_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) compress_from_channels(mode ImageCompressMode, channels ImageUsedChannels, astc_format ImageASTCFormat) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("compress_from_channels")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4212890953)
    mut args := unsafe { [3]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    i64_channels := i64(channels)
    args[1] = unsafe{voidptr(&i64_channels)}
    i64_astc_format := i64(astc_format)
    args[2] = unsafe{voidptr(&i64_astc_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) decompress() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("decompress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) is_compressed() bool {
    mut object_out := false
    classname := StringName.new("Image")
    fnname := StringName.new("is_compressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) rotate_90(direction ClockDirection) {
    classname := StringName.new("Image")
    fnname := StringName.new("rotate_90")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1901204267)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) rotate_180() {
    classname := StringName.new("Image")
    fnname := StringName.new("rotate_180")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) fix_alpha_edges() {
    classname := StringName.new("Image")
    fnname := StringName.new("fix_alpha_edges")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) premultiply_alpha() {
    classname := StringName.new("Image")
    fnname := StringName.new("premultiply_alpha")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) srgb_to_linear() {
    classname := StringName.new("Image")
    fnname := StringName.new("srgb_to_linear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) normal_map_to_xy() {
    classname := StringName.new("Image")
    fnname := StringName.new("normal_map_to_xy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) rgbe_to_srgb() Image {
    mut object_out := Image{}
    classname := StringName.new("Image")
    fnname := StringName.new("rgbe_to_srgb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 564927088)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) bump_map_to_normal_map(bump_scale f64) {
    classname := StringName.new("Image")
    fnname := StringName.new("bump_map_to_normal_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3423495036)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bump_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) compute_image_metrics(compared_image Image, use_luma bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Image")
    fnname := StringName.new("compute_image_metrics")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3080961247)
    mut args := unsafe { [2]voidptr{} }
    args[0] = compared_image.ptr
    args[1] = unsafe{voidptr(&use_luma)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) blit_rect(src Image, src_rect Rect2i, dst Vector2i) {
    classname := StringName.new("Image")
    fnname := StringName.new("blit_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903928755)
    mut args := unsafe { [3]voidptr{} }
    args[0] = src.ptr
    args[1] = unsafe{voidptr(&src_rect)}
    args[2] = unsafe{voidptr(&dst)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) blit_rect_mask(src Image, mask Image, src_rect Rect2i, dst Vector2i) {
    classname := StringName.new("Image")
    fnname := StringName.new("blit_rect_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383581145)
    mut args := unsafe { [4]voidptr{} }
    args[0] = src.ptr
    args[1] = mask.ptr
    args[2] = unsafe{voidptr(&src_rect)}
    args[3] = unsafe{voidptr(&dst)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) blend_rect(src Image, src_rect Rect2i, dst Vector2i) {
    classname := StringName.new("Image")
    fnname := StringName.new("blend_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903928755)
    mut args := unsafe { [3]voidptr{} }
    args[0] = src.ptr
    args[1] = unsafe{voidptr(&src_rect)}
    args[2] = unsafe{voidptr(&dst)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) blend_rect_mask(src Image, mask Image, src_rect Rect2i, dst Vector2i) {
    classname := StringName.new("Image")
    fnname := StringName.new("blend_rect_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383581145)
    mut args := unsafe { [4]voidptr{} }
    args[0] = src.ptr
    args[1] = mask.ptr
    args[2] = unsafe{voidptr(&src_rect)}
    args[3] = unsafe{voidptr(&dst)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) fill(color Color) {
    classname := StringName.new("Image")
    fnname := StringName.new("fill")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) fill_rect(rect Rect2i, color Color) {
    classname := StringName.new("Image")
    fnname := StringName.new("fill_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 514693913)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) get_used_rect() Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("Image")
    fnname := StringName.new("get_used_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) get_region(region Rect2i) Image {
    mut object_out := Image{}
    classname := StringName.new("Image")
    fnname := StringName.new("get_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2601441065)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) copy_from(src Image) {
    classname := StringName.new("Image")
    fnname := StringName.new("copy_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = src.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) get_pixelv(point Vector2i) Color {
    mut object_out := Color{}
    classname := StringName.new("Image")
    fnname := StringName.new("get_pixelv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1532707496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) get_pixel(x i32, y i32) Color {
    mut object_out := Color{}
    classname := StringName.new("Image")
    fnname := StringName.new("get_pixel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2165839948)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Image) set_pixelv(point Vector2i, color Color) {
    classname := StringName.new("Image")
    fnname := StringName.new("set_pixelv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 287851464)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) set_pixel(x i32, y i32, color Color) {
    classname := StringName.new("Image")
    fnname := StringName.new("set_pixel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3733378741)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) adjust_bcs(brightness f64, contrast f64, saturation f64) {
    classname := StringName.new("Image")
    fnname := StringName.new("adjust_bcs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2385087082)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&brightness)}
    args[1] = unsafe{voidptr(&contrast)}
    args[2] = unsafe{voidptr(&saturation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Image) load_png_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load_png_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) load_jpg_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load_jpg_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) load_webp_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load_webp_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) load_tga_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load_tga_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) load_bmp_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load_bmp_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) load_ktx_from_buffer(buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load_ktx_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) load_svg_from_buffer(buffer PackedByteArray, scale f64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load_svg_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 311853421)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Image) load_svg_from_string(svg_str string, scale f64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Image")
    fnname := StringName.new("load_svg_from_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3254053600)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(svg_str)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
