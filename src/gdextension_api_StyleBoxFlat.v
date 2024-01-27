module vgdextension

pub type StyleBoxFlat = voidptr

pub fn (mut r StyleBoxFlat) set_bg_color(color Color) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_bg_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_bg_color() Color {
    mut object_out := Color{}
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_bg_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_border_color(color Color) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_border_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_border_color() Color {
    mut object_out := Color{}
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_border_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_border_width_all(width i32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_border_width_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_border_width_min() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_border_width_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_border_width(margin Side, width i32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_border_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 437707142)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_border_width(margin Side) i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_border_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983885014)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_border_blend(blend bool) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_border_blend")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_border_blend() bool {
    mut object_out := false
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_border_blend")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_corner_radius_all(radius i32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_corner_radius_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StyleBoxFlat) set_corner_radius(corner Corner, radius i32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_corner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2696158768)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_corner_radius(corner Corner) i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_corner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3982397690)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&corner)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_expand_margin(margin Side, size f32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_expand_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StyleBoxFlat) set_expand_margin_all(size f32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_expand_margin_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_expand_margin(margin Side) f32 {
    mut object_out := f32(0)
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_expand_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_draw_center(draw_center bool) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_center")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) is_draw_center_enabled() bool {
    mut object_out := false
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("is_draw_center_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_skew(skew Vector2) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_skew")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_skew() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_skew")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_shadow_color(color Color) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_shadow_color() Color {
    mut object_out := Color{}
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_shadow_size(size i32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_shadow_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_shadow_offset(offset Vector2) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_shadow_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_anti_aliased(anti_aliased bool) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_anti_aliased")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) is_anti_aliased() bool {
    mut object_out := false
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("is_anti_aliased")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_aa_size(size f32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_aa_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_aa_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_aa_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxFlat) set_corner_detail(detail i32) {
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("set_corner_detail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBoxFlat) get_corner_detail() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    defer { classname.deinit() }
    fnname := StringName.new("get_corner_detail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
