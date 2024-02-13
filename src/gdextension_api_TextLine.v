module vgdextension

@[noinit]
pub struct TextLine {
    RefCounted
}

pub fn (mut r TextLine) clear() {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextLine) set_direction(direction TextServerDirection) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) get_direction() TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) set_orientation(orientation TextServerOrientation) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 42823726)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) get_orientation() TextServerOrientation {
    mut object_out := TextServerOrientation.orientation_horizontal
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 175768116)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) set_preserve_invalid(enabled bool) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_preserve_invalid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) get_preserve_invalid() bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_preserve_invalid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) set_preserve_control(enabled bool) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_preserve_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) get_preserve_control() bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_preserve_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) set_bidi_override(override Array) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&override)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TextLine) add_string(text String, font Font, font_size i32, language String, meta Variant) bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("add_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 867188035)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    args[1] = font.ptr
    args[2] = unsafe{voidptr(&font_size)}
    args[3] = unsafe{voidptr(&language)}
    args[4] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) add_object(key Variant, size Vector2, inline_align InlineAlignment, length i32, baseline f64) bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("add_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 735420116)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&inline_align)}
    args[3] = unsafe{voidptr(&length)}
    args[4] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) resize_object(key Variant, size Vector2, inline_align InlineAlignment, baseline f64) bool {
    mut object_out := false
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("resize_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 960819067)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&inline_align)}
    args[3] = unsafe{voidptr(&baseline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) set_width(width f64) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) get_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) tab_align(tab_stops PackedFloat32Array) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("tab_align")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tab_stops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TextLine) set_flags(flags TextServerJustificationFlag) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) get_flags() TextServerJustificationFlag {
    mut object_out := TextServerJustificationFlag.justification_none
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextLine) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_overrun_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&overrun_behavior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) get_text_overrun_behavior() TextServerOverrunBehavior {
    mut object_out := TextServerOverrunBehavior.overrun_no_trimming
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_overrun_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_objects() Array {
    mut object_out := Array{}
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_objects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_object_rect(key Variant) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_object_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1742700391)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_line_ascent() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_ascent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_line_descent() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_descent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_line_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_line_underline_position() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_underline_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) get_line_underline_thickness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_underline_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextLine) draw(canvas RID, pos Vector2, color Color) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1164457837)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) draw_outline(canvas RID, pos Vector2, outline_size i32, color Color) {
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("draw_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1364491366)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&canvas)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&outline_size)}
    args[3] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextLine) hit_test(coords f64) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextLine")
    defer { classname.deinit() }
    fnname := StringName.new("hit_test")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2401831903)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
