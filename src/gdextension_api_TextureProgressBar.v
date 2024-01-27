pub enum TextureProgressBarFillMode {
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

pub type TextureProgressBar = voidptr

pub fn (mut r TextureProgressBar) set_under_texture(tex Texture2D) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_under_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_under_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_under_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_progress_texture(tex Texture2D) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_progress_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_progress_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_progress_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_over_texture(tex Texture2D) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_over_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_over_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_over_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_fill_mode(mode i32) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_fill_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureProgressBar) get_fill_mode() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_fill_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_tint_under(tint Color) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tint_under")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_tint_under() Color {
    mut object_out := Color{}
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tint_under")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_tint_progress(tint Color) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tint_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_tint_progress() Color {
    mut object_out := Color{}
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tint_progress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_tint_over(tint Color) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_tint_over")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_tint_over() Color {
    mut object_out := Color{}
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_tint_over")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_texture_progress_offset(offset Vector2) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_progress_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_texture_progress_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_progress_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_radial_initial_angle(mode f32) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_radial_initial_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureProgressBar) get_radial_initial_angle() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_radial_initial_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_radial_center_offset(mode Vector2) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_radial_center_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureProgressBar) get_radial_center_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_radial_center_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1497962370)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_fill_degrees(mode f32) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_fill_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureProgressBar) get_fill_degrees() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_fill_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_stretch_margin(margin Side, value i32) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 437707142)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_stretch_margin(margin Side) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_stretch_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983885014)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureProgressBar) set_nine_patch_stretch(stretch bool) {
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_nine_patch_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureProgressBar) get_nine_patch_stretch() bool {
    mut object_out := false
    classname := StringName.new("TextureProgressBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_nine_patch_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
