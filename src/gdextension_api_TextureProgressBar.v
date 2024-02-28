module vgdextension

pub enum TextureProgressBarFillMode as i64 {
    fill_left_to_right = 0
    fill_right_to_left = 1
    fill_top_to_bottom = 2
    fill_bottom_to_top = 3
    fill_clockwise = 4
    fill_counter_clockwise = 5
    fill_bilinear_left_and_right = 6
    fill_bilinear_top_and_bottom = 7
    fill_clockwise_and_counter_clockwise = 8
}

@[noinit]
pub struct TextureProgressBar {
    Range
}

pub fn (r &TextureProgressBar) set_under_texture(tex Texture2D) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_under_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&tex.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_under_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_under_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_progress_texture(tex Texture2D) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_progress_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&tex.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_progress_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_progress_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_over_texture(tex Texture2D) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_over_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&tex.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_over_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_over_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_fill_mode(mode i32) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_fill_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_fill_mode() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_fill_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_tint_under(tint Color) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_tint_under")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_tint_under() Color {
    mut object_out := Color{}
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_tint_under")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_tint_progress(tint Color) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_tint_progress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_tint_progress() Color {
    mut object_out := Color{}
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_tint_progress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_tint_over(tint Color) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_tint_over")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_tint_over() Color {
    mut object_out := Color{}
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_tint_over")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_texture_progress_offset(offset Vector2) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_texture_progress_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_texture_progress_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_texture_progress_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_radial_initial_angle(mode f64) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_radial_initial_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_radial_initial_angle() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_radial_initial_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_radial_center_offset(mode Vector2) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_radial_center_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_radial_center_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_radial_center_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_fill_degrees(mode f64) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_fill_degrees")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_fill_degrees() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_fill_degrees")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_stretch_margin(margin Side, value i32) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_stretch_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 437707142)
    mut args := unsafe { [2]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_stretch_margin(margin Side) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_stretch_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983885014)
    mut args := unsafe { [1]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureProgressBar) set_nine_patch_stretch(stretch bool) {
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("set_nine_patch_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stretch)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureProgressBar) get_nine_patch_stretch() bool {
    mut object_out := false
    classname := StringName.new("TextureProgressBar")
    fnname := StringName.new("get_nine_patch_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
