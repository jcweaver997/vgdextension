module vgdextension

@[noinit]
pub struct TextLine {
    RefCounted
}

pub fn (mut r TextLine) clear() {
    classname := StringName.new("TextLine")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextLine) set_direction(direction TextServerDirection) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) get_direction() TextServerDirection {
    mut object_out := i64(TextServerDirection.direction_auto)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerDirection(object_out)}
}
pub fn (mut r TextLine) set_orientation(orientation TextServerOrientation) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 42823726)
    mut args := unsafe { [1]voidptr{} }
    i64_orientation := i64(orientation)
    args[0] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) get_orientation() TextServerOrientation {
    mut object_out := i64(TextServerOrientation.orientation_horizontal)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 175768116)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerOrientation(object_out)}
}
pub fn (mut r TextLine) set_preserve_invalid(enabled bool) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_preserve_invalid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) get_preserve_invalid() bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_preserve_invalid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextLine) set_preserve_control(enabled bool) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_preserve_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) get_preserve_control() bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_preserve_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextLine) set_bidi_override(override Array) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&override)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextLine) add_string(text string, font Font, font_size i32, language string, meta Variant) bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    fnname := StringName.new("add_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 621426851)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = font.ptr
    args[2] = unsafe{voidptr(&font_size)}
    arg_sn3 := String.new(language)
    args[3] = unsafe{voidptr(&arg_sn3)}
    args[4] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextLine) add_object(key Variant, size Vector2, inline_align InlineAlignment, length i32, baseline f64) bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    fnname := StringName.new("add_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1316529304)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    args[1] = unsafe{voidptr(&size)}
    i64_inline_align := i64(inline_align)
    args[2] = unsafe{voidptr(&i64_inline_align)}
    args[3] = unsafe{voidptr(&length)}
    args[4] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextLine) resize_object(key Variant, size Vector2, inline_align InlineAlignment, baseline f64) bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    fnname := StringName.new("resize_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2095776372)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    args[1] = unsafe{voidptr(&size)}
    i64_inline_align := i64(inline_align)
    args[2] = unsafe{voidptr(&i64_inline_align)}
    args[3] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextLine) set_width(width f64) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) get_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TextLine) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_horizontal_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := i64(HorizontalAlignment.horizontal_alignment_left)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_horizontal_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HorizontalAlignment(object_out)}
}
pub fn (mut r TextLine) tab_align(tab_stops PackedFloat32Array) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("tab_align")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TextLine) set_flags(flags TextServerJustificationFlag) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
    mut args := unsafe { [1]voidptr{} }
    i64_flags := i64(flags)
    args[0] = unsafe{voidptr(&i64_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) get_flags() TextServerJustificationFlag {
    mut object_out := i64(TextServerJustificationFlag.justification_none)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerJustificationFlag(object_out)}
}
pub fn (mut r TextLine) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("set_text_overrun_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
    mut args := unsafe { [1]voidptr{} }
    i64_overrun_behavior := i64(overrun_behavior)
    args[0] = unsafe{voidptr(&i64_overrun_behavior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) get_text_overrun_behavior() TextServerOverrunBehavior {
    mut object_out := i64(TextServerOverrunBehavior.overrun_no_trimming)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_text_overrun_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerOverrunBehavior(object_out)}
}
pub fn (r &TextLine) get_objects() Array {
    mut object_out := Array{}
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_objects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) get_object_rect(key Variant) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_object_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1742700391)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) get_line_ascent() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_line_ascent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) get_line_descent() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_line_descent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) get_line_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_line_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) get_line_underline_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_line_underline_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) get_line_underline_thickness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    fnname := StringName.new("get_line_underline_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextLine) draw(canvas RID, pos Vector2, color Color) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 856975658)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) draw_outline(canvas RID, pos Vector2, outline_size i32, color Color) {
    classname := StringName.new("TextLine")
    fnname := StringName.new("draw_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1343401456)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&outline_size)}
    args[3] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextLine) hit_test(coords f64) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextLine")
    fnname := StringName.new("hit_test")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2401831903)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
