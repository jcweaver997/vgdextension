module vgdextension

pub struct TextMesh {
    PrimitiveMesh
}

pub fn (mut r TextMesh) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_vertical_alignment(alignment VerticalAlignment) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_vertical_alignment() VerticalAlignment {
    mut object_out := VerticalAlignment.vertical_alignment_top
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertical_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_text(text String) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_text() String {
    mut object_out := String{}
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_font(font Font) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1262170328)
    mut args := unsafe { [1]voidptr{} }
    args[0] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_font() Font {
    mut object_out := Font{}
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_font_size(font_size i32) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_line_spacing(line_spacing f64) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line_spacing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_line_spacing() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_spacing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_autowrap_mode(autowrap_mode TextServerAutowrapMode) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_autowrap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3289138044)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&autowrap_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_autowrap_mode() TextServerAutowrapMode {
    mut object_out := TextServerAutowrapMode.autowrap_off
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_autowrap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549071663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_justification_flags(justification_flags TextServerJustificationFlag) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_justification_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2877345813)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&justification_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_justification_flags() TextServerJustificationFlag {
    mut object_out := TextServerJustificationFlag.justification_none
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_justification_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1583363614)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_depth(depth f64) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_depth() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_width(width f64) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_pixel_size(pixel_size f64) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_pixel_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pixel_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_pixel_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_pixel_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_offset(offset Vector2) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_curve_step(curve_step f64) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&curve_step)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_curve_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_text_direction(direction TextServerDirection) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1418190634)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_text_direction() TextServerDirection {
    mut object_out := TextServerDirection.direction_auto
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2516697328)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_language(language String) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_language() String {
    mut object_out := String{}
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := TextServerStructuredTextParser.structured_text_default
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextMesh) set_uppercase(enable bool) {
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_uppercase")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextMesh) is_uppercase() bool {
    mut object_out := false
    classname := StringName.new("TextMesh")
    defer { classname.deinit() }
    fnname := StringName.new("is_uppercase")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
