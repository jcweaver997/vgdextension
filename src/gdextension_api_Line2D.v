module vgdextension

pub enum Line2DLineJointMode {
    line_joint_sharp = 0
    line_joint_bevel = 1
    line_joint_round = 2
}

pub enum Line2DLineCapMode {
    line_cap_none = 0
    line_cap_box = 1
    line_cap_round = 2
}

pub enum Line2DLineTextureMode {
    line_texture_none = 0
    line_texture_tile = 1
    line_texture_stretch = 2
}

@[noinit]
pub struct Line2D {
    Node2D
}

pub fn (mut r Line2D) set_points(points PackedVector2Array) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_points() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_point_position(index i32, position Vector2) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_point_position(index i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Line2D) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) add_point(position Vector2, index i32) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 468506575)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Line2D) remove_point(index i32) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Line2D) clear_points() {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Line2D) set_width(width f64) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_curve(curve Curve) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_default_color(color Color) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_default_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_gradient(color Gradient) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gradient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = color.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_gradient() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gradient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_texture(texture Texture2D) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_texture_mode(mode Line2DLineTextureMode) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1952559516)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_texture_mode() Line2DLineTextureMode {
    mut object_out := Line2DLineTextureMode.line_texture_none
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2341040722)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_joint_mode(mode Line2DLineJointMode) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_joint_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 604292979)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_joint_mode() Line2DLineJointMode {
    mut object_out := Line2DLineJointMode.line_joint_sharp
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546544037)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_begin_cap_mode(mode Line2DLineCapMode) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_begin_cap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1669024546)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_begin_cap_mode() Line2DLineCapMode {
    mut object_out := Line2DLineCapMode.line_cap_none
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_begin_cap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107511441)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_end_cap_mode(mode Line2DLineCapMode) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_end_cap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1669024546)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_end_cap_mode() Line2DLineCapMode {
    mut object_out := Line2DLineCapMode.line_cap_none
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_end_cap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107511441)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_sharp_limit(limit f64) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sharp_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&limit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_sharp_limit() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sharp_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_round_precision(precision i32) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_round_precision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&precision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_round_precision() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_round_precision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Line2D) set_antialiased(antialiased bool) {
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_antialiased")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Line2D) get_antialiased() bool {
    mut object_out := false
    classname := StringName.new("Line2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_antialiased")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
