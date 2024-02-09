module vgdextension

pub enum TreeItemTreeCellMode {
    cell_mode_string = 0
    cell_mode_check = 1
    cell_mode_range = 2
    cell_mode_icon = 3
    cell_mode_custom = 4
}

pub struct TreeItem {
    Object
}

pub fn (mut r TreeItem) set_cell_mode(column i32, mode TreeItemTreeCellMode) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_cell_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 289920701)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_cell_mode(column i32) TreeItemTreeCellMode {
    mut object_out := TreeItemTreeCellMode.cell_mode_string
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3406114978)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_edit_multiline(column i32, multiline bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_edit_multiline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&multiline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) is_edit_multiline(column i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_edit_multiline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_checked(column i32, checked bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&checked)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) set_indeterminate(column i32, indeterminate bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_indeterminate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&indeterminate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) is_checked(column i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TreeItem) is_indeterminate(column i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_indeterminate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) propagate_check(column i32, emit_signal bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("propagate_check")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&emit_signal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) set_text(column i32, text String) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_text(column i32) String {
    mut object_out := String{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_text_direction(column i32, direction ControlTextDirection) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1707680378)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_text_direction(column i32) ControlTextDirection {
    mut object_out := ControlTextDirection.text_direction_inherited
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4235602388)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_autowrap_mode(column i32, autowrap_mode TextServerAutowrapMode) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_autowrap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3633006561)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&autowrap_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_autowrap_mode(column i32) TextServerAutowrapMode {
    mut object_out := TextServerAutowrapMode.autowrap_off
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_autowrap_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2902757236)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_structured_text_bidi_override(column i32, parser TextServerStructuredTextParser) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 868756907)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&parser)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_structured_text_bidi_override(column i32) TextServerStructuredTextParser {
    mut object_out := TextServerStructuredTextParser.structured_text_default
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3377823772)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_structured_text_bidi_override_options(column i32, gdargs Array) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 537221740)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_structured_text_bidi_override_options(column i32) Array {
    mut object_out := Array{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_structured_text_bidi_override_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_language(column i32, language String) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_language(column i32) String {
    mut object_out := String{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_suffix(column i32, text String) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_suffix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_suffix(column i32) String {
    mut object_out := String{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_suffix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_icon(column i32, texture Texture2D) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_icon(column i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_icon_region(column i32, region Rect2) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_icon_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1356297692)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_icon_region(column i32) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_icon_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3327874267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_icon_max_width(column i32, width i32) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_icon_max_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_icon_max_width(column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_icon_max_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_icon_modulate(column i32, modulate Color) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_icon_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_icon_modulate(column i32) Color {
    mut object_out := Color{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_icon_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_range(column i32, value f64) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_range(column i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_range_config(column i32, min f64, max f64, step f64, expr bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_range_config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1547181014)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&min)}
    args[2] = unsafe{voidptr(&max)}
    args[3] = unsafe{voidptr(&step)}
    args[4] = unsafe{voidptr(&expr)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) get_range_config(column i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_range_config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_metadata(column i32, meta Variant) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_metadata(column i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_custom_draw(column i32, object Object, callback StringName) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 272420368)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = object.ptr
    args[2] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) set_collapsed(enable bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_collapsed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) is_collapsed() bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_collapsed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_collapsed_recursive(enable bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_collapsed_recursive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) is_any_collapsed(only_visible bool) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_any_collapsed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2595650253)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&only_visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_visible(enable bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) is_visible() bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) uncollapse_tree() {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("uncollapse_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r TreeItem) set_custom_minimum_height(height i32) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_minimum_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_custom_minimum_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_minimum_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_selectable(column i32, selectable bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_selectable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&selectable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) is_selectable(column i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_selectable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) is_selected(column i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_selected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) gdselect(column i32) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("select")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) deselect(column i32) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("deselect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) set_editable(column i32, enabled bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_editable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) is_editable(column i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_editable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_custom_color(column i32, color Color) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_custom_color(column i32) Color {
    mut object_out := Color{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) clear_custom_color(column i32) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("clear_custom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) set_custom_font(column i32, font Font) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2637609184)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_custom_font(column i32) Font {
    mut object_out := Font{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4244553094)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_custom_font_size(column i32, font_size i32) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_custom_font_size(column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_custom_bg_color(column i32, color Color, just_outline bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_bg_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 894174518)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&just_outline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) clear_custom_bg_color(column i32) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("clear_custom_bg_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_custom_bg_color(column i32) Color {
    mut object_out := Color{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_bg_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_custom_as_button(column i32, enable bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_as_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) is_custom_set_as_button(column i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_custom_set_as_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) add_button(column i32, button Texture2D, id i32, disabled bool, tooltip_text String) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("add_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1507727907)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = button.ptr
    args[2] = unsafe{voidptr(&id)}
    args[3] = unsafe{voidptr(&disabled)}
    args[4] = unsafe{voidptr(&tooltip_text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_button_count(column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TreeItem) get_button_tooltip_text(column i32, button_index i32) String {
    mut object_out := String{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_tooltip_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391810591)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&button_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TreeItem) get_button_id(column i32, button_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&button_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TreeItem) get_button_by_id(column i32, id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_by_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TreeItem) get_button(column i32, button_index i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584904275)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&button_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_button(column i32, button_index i32, button Texture2D) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 176101966)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&button_index)}
    args[2] = button.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) erase_button(column i32, button_index i32) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("erase_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&button_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) set_button_disabled(column i32, button_index i32, disabled bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_button_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&button_index)}
    args[2] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) set_button_color(column i32, button_index i32, color Color) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_button_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3733378741)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&button_index)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) is_button_disabled(column i32, button_index i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_button_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&button_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_tooltip_text(column i32, tooltip String) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_tooltip_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&tooltip)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_tooltip_text(column i32) String {
    mut object_out := String{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_tooltip_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_text_alignment(column i32, text_alignment HorizontalAlignment) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3276431499)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&text_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_text_alignment(column i32) HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4171562184)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_expand_right(column i32, enable bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_expand_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_expand_right(column i32) bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_expand_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) set_disable_folding(disable bool) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_folding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) is_folding_disabled() bool {
    mut object_out := false
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("is_folding_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) create_child(index i32) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("create_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 954243986)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) add_child(child TreeItem) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("add_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819951137)
    mut args := unsafe { [1]voidptr{} }
    args[0] = child.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) remove_child(child TreeItem) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("remove_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819951137)
    mut args := unsafe { [1]voidptr{} }
    args[0] = child.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TreeItem) get_tree() Tree {
    mut object_out := Tree{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2243340556)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TreeItem) get_next() TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_next")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_prev() TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_prev")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2768121250)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TreeItem) get_parent() TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TreeItem) get_first_child() TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_first_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1514277247)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_next_in_tree(wrap bool) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_next_in_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1666920593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&wrap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_prev_in_tree(wrap bool) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_prev_in_tree")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1666920593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&wrap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_next_visible(wrap bool) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_next_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1666920593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&wrap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_prev_visible(wrap bool) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_prev_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1666920593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&wrap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_child(index i32) TreeItem {
    mut object_out := TreeItem{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_child")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 306700752)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_child_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_child_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_children() Array {
    mut object_out := Array{}
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_children")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) get_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("get_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TreeItem) move_before(item TreeItem) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("move_before")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819951137)
    mut args := unsafe { [1]voidptr{} }
    args[0] = item.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r TreeItem) move_after(item TreeItem) {
    classname := StringName.new("TreeItem")
    defer { classname.deinit() }
    fnname := StringName.new("move_after")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1819951137)
    mut args := unsafe { [1]voidptr{} }
    args[0] = item.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
