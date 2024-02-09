module vgdextension

pub enum LinkButtonUnderlineMode {
    underline_mode_always = 0
    underline_mode_on_hover = 1
    underline_mode_never = 2
}

pub struct LinkButton {
    BaseButton
}

pub fn (mut r LinkButton) set_text(text String) {
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LinkButton) get_text() String {
    mut object_out := String{}
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LinkButton) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LinkButton) get_text_direction() ControlTextDirection {
    mut object_out := ControlTextDirection.text_direction_inherited
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LinkButton) set_language(language String) {
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LinkButton) get_language() String {
    mut object_out := String{}
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LinkButton) set_uri(uri String) {
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_uri")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uri)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LinkButton) get_uri() String {
    mut object_out := String{}
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_uri")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LinkButton) set_underline_mode(underline_mode LinkButtonUnderlineMode) {
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_underline_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4032947085)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&underline_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LinkButton) get_underline_mode() LinkButtonUnderlineMode {
    mut object_out := LinkButtonUnderlineMode.underline_mode_always
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_underline_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 568343738)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LinkButton) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LinkButton) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := TextServerStructuredTextParser.structured_text_default
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LinkButton) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LinkButton) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("LinkButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
