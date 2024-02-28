module vgdextension

@[noinit]
pub struct StyleBoxFlat {
    StyleBox
}

pub fn (r &StyleBoxFlat) set_bg_color(color Color) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_bg_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_bg_color() Color {
    mut object_out := Color{}
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_bg_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_border_color(color Color) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_border_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_border_color() Color {
    mut object_out := Color{}
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_border_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_border_width_all(width i32) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_border_width_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_border_width_min() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_border_width_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_border_width(margin Side, width i32) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_border_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 437707142)
    mut args := unsafe { [2]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    args[1] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_border_width(margin Side) i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_border_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1983885014)
    mut args := unsafe { [1]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_border_blend(blend bool) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_border_blend")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&blend)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_border_blend() bool {
    mut object_out := false
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_border_blend")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_corner_radius_all(radius i32) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_corner_radius_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) set_corner_radius(corner Corner, radius i32) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_corner_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2696158768)
    mut args := unsafe { [2]voidptr{} }
    i64_corner := i64(corner)
    args[0] = unsafe{voidptr(&i64_corner)}
    args[1] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_corner_radius(corner Corner) i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_corner_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3982397690)
    mut args := unsafe { [1]voidptr{} }
    i64_corner := i64(corner)
    args[0] = unsafe{voidptr(&i64_corner)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_expand_margin(margin Side, size f64) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_expand_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
    mut args := unsafe { [2]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) set_expand_margin_all(size f64) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_expand_margin_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_expand_margin(margin Side) f64 {
    mut object_out := f64(0)
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_expand_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_draw_center(draw_center bool) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_draw_center")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&draw_center)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) is_draw_center_enabled() bool {
    mut object_out := false
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("is_draw_center_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_skew(skew Vector2) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_skew")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skew)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_skew() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_skew")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_shadow_color(color Color) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_shadow_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_shadow_color() Color {
    mut object_out := Color{}
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_shadow_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_shadow_size(size i32) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_shadow_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_shadow_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_shadow_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_shadow_offset(offset Vector2) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_shadow_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_shadow_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_shadow_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_anti_aliased(anti_aliased bool) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_anti_aliased")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&anti_aliased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) is_anti_aliased() bool {
    mut object_out := false
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("is_anti_aliased")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_aa_size(size f64) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_aa_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_aa_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_aa_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBoxFlat) set_corner_detail(detail i32) {
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("set_corner_detail")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&detail)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBoxFlat) get_corner_detail() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxFlat")
    fnname := StringName.new("get_corner_detail")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
