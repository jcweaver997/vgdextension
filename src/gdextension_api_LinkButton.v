module vgdextension

pub enum LinkButtonUnderlineMode as i64 {
    underline_mode_always = 0
    underline_mode_on_hover = 1
    underline_mode_never = 2
}

@[noinit]
pub struct LinkButton {
    BaseButton
}

pub fn (mut r LinkButton) set_text(text String) {
    classname := StringName.new("LinkButton")
    fnname := StringName.new("set_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LinkButton) get_text() String {
    mut object_out := String{}
    classname := StringName.new("LinkButton")
    fnname := StringName.new("get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r LinkButton) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("LinkButton")
    fnname := StringName.new("set_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LinkButton) get_text_direction() ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("LinkButton")
    fnname := StringName.new("get_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (mut r LinkButton) set_language(language String) {
    classname := StringName.new("LinkButton")
    fnname := StringName.new("set_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LinkButton) get_language() String {
    mut object_out := String{}
    classname := StringName.new("LinkButton")
    fnname := StringName.new("get_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r LinkButton) set_uri(uri String) {
    classname := StringName.new("LinkButton")
    fnname := StringName.new("set_uri")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uri)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LinkButton) get_uri() String {
    mut object_out := String{}
    classname := StringName.new("LinkButton")
    fnname := StringName.new("get_uri")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r LinkButton) set_underline_mode(underline_mode LinkButtonUnderlineMode) {
    classname := StringName.new("LinkButton")
    fnname := StringName.new("set_underline_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4032947085)
    mut args := unsafe { [1]voidptr{} }
    i64_underline_mode := i64(underline_mode)
    args[0] = unsafe{voidptr(&i64_underline_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LinkButton) get_underline_mode() LinkButtonUnderlineMode {
    mut object_out := i64(LinkButtonUnderlineMode.underline_mode_always)
    classname := StringName.new("LinkButton")
    fnname := StringName.new("get_underline_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 568343738)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{LinkButtonUnderlineMode(object_out)}
}
pub fn (mut r LinkButton) set_structured_text_bidi_override(parser TextServerStructuredTextParser) {
    classname := StringName.new("LinkButton")
    fnname := StringName.new("set_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 55961453)
    mut args := unsafe { [1]voidptr{} }
    i64_parser := i64(parser)
    args[0] = unsafe{voidptr(&i64_parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LinkButton) get_structured_text_bidi_override() TextServerStructuredTextParser {
    mut object_out := i64(TextServerStructuredTextParser.structured_text_default)
    classname := StringName.new("LinkButton")
    fnname := StringName.new("get_structured_text_bidi_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3385126229)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerStructuredTextParser(object_out)}
}
pub fn (mut r LinkButton) set_structured_text_bidi_override_options(gdargs Array) {
    classname := StringName.new("LinkButton")
    fnname := StringName.new("set_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LinkButton) get_structured_text_bidi_override_options() Array {
    mut object_out := Array{}
    classname := StringName.new("LinkButton")
    fnname := StringName.new("get_structured_text_bidi_override_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
