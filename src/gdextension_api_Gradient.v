module vgdextension

pub enum GradientInterpolationMode as i64 {
    gradient_interpolate_linear = 0
    gradient_interpolate_constant = 1
    gradient_interpolate_cubic = 2
}

pub enum GradientColorSpace as i64 {
    gradient_color_space_srgb = 0
    gradient_color_space_linear_srgb = 1
    gradient_color_space_oklab = 2
}

@[noinit]
pub struct Gradient {
    Resource
}

pub fn (r &Gradient) add_point(offset f64, color Color) {
    classname := StringName.new("Gradient")
    fnname := StringName.new("add_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3629403827)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) remove_point(point i32) {
    classname := StringName.new("Gradient")
    fnname := StringName.new("remove_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) set_offset(point i32, offset f64) {
    classname := StringName.new("Gradient")
    fnname := StringName.new("set_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) get_offset(point i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Gradient")
    fnname := StringName.new("get_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025615559)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Gradient) reverse() {
    classname := StringName.new("Gradient")
    fnname := StringName.new("reverse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) set_color(point i32, color Color) {
    classname := StringName.new("Gradient")
    fnname := StringName.new("set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) get_color(point i32) Color {
    mut object_out := Color{}
    classname := StringName.new("Gradient")
    fnname := StringName.new("get_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624840992)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Gradient) sample(offset f64) Color {
    mut object_out := Color{}
    classname := StringName.new("Gradient")
    fnname := StringName.new("sample")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1250405064)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Gradient) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Gradient")
    fnname := StringName.new("get_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Gradient) set_offsets(offsets PackedFloat32Array) {
    classname := StringName.new("Gradient")
    fnname := StringName.new("set_offsets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offsets)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) get_offsets() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("Gradient")
    fnname := StringName.new("get_offsets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Gradient) set_colors(colors PackedColorArray) {
    classname := StringName.new("Gradient")
    fnname := StringName.new("set_colors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3546319833)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&colors)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) get_colors() PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("Gradient")
    fnname := StringName.new("get_colors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392750486)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Gradient) set_interpolation_mode(interpolation_mode GradientInterpolationMode) {
    classname := StringName.new("Gradient")
    fnname := StringName.new("set_interpolation_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1971444490)
    mut args := unsafe { [1]voidptr{} }
    i64_interpolation_mode := i64(interpolation_mode)
    args[0] = unsafe{voidptr(&i64_interpolation_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) get_interpolation_mode() GradientInterpolationMode {
    mut object_out := i64(GradientInterpolationMode.gradient_interpolate_linear)
    classname := StringName.new("Gradient")
    fnname := StringName.new("get_interpolation_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3674172981)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GradientInterpolationMode(object_out)}
}
pub fn (r &Gradient) set_interpolation_color_space(interpolation_color_space GradientColorSpace) {
    classname := StringName.new("Gradient")
    fnname := StringName.new("set_interpolation_color_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3685995981)
    mut args := unsafe { [1]voidptr{} }
    i64_interpolation_color_space := i64(interpolation_color_space)
    args[0] = unsafe{voidptr(&i64_interpolation_color_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Gradient) get_interpolation_color_space() GradientColorSpace {
    mut object_out := i64(GradientColorSpace.gradient_color_space_srgb)
    classname := StringName.new("Gradient")
    fnname := StringName.new("get_interpolation_color_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1538296000)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GradientColorSpace(object_out)}
}
