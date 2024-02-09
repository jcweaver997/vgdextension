module vgdextension

pub enum ControlFocusMode {
    focus_none = 0
    focus_click = 1
    focus_all = 2
}

pub enum ControlCursorShape {
    cursor_arrow = 0
    cursor_ibeam = 1
    cursor_pointing_hand = 2
    cursor_cross = 3
    cursor_wait = 4
    cursor_busy = 5
    cursor_drag = 6
    cursor_can_drop = 7
    cursor_forbidden = 8
    cursor_vsize = 9
    cursor_hsize = 10
    cursor_bdiagsize = 11
    cursor_fdiagsize = 12
    cursor_move = 13
    cursor_vsplit = 14
    cursor_hsplit = 15
    cursor_help = 16
}

pub enum ControlLayoutPreset {
    preset_top_left = 0
    preset_top_right = 1
    preset_bottom_left = 2
    preset_bottom_right = 3
    preset_center_left = 4
    preset_center_top = 5
    preset_center_right = 6
    preset_center_bottom = 7
    preset_center = 8
    preset_left_wide = 9
    preset_top_wide = 10
    preset_right_wide = 11
    preset_bottom_wide = 12
    preset_vcenter_wide = 13
    preset_hcenter_wide = 14
    preset_full_rect = 15
}

pub enum ControlLayoutPresetMode {
    preset_mode_minsize = 0
    preset_mode_keep_width = 1
    preset_mode_keep_height = 2
    preset_mode_keep_size = 3
}

pub enum ControlSizeFlags {
    size_shrink_begin = 0
    size_fill = 1
    size_expand = 2
    size_expand_fill = 3
    size_shrink_center = 4
    size_shrink_end = 8
}

pub enum ControlMouseFilter {
    mouse_filter_stop = 0
    mouse_filter_pass = 1
    mouse_filter_ignore = 2
}

pub enum ControlGrowDirection {
    grow_direction_begin = 0
    grow_direction_end = 1
    grow_direction_both = 2
}

pub enum ControlAnchor {
    anchor_begin = 0
    anchor_end = 1
}

pub enum ControlLayoutDirection {
    layout_direction_inherited = 0
    layout_direction_locale = 1
    layout_direction_ltr = 2
    layout_direction_rtl = 3
}

pub enum ControlTextDirection {
    text_direction_inherited = 3
    text_direction_auto = 0
    text_direction_ltr = 1
    text_direction_rtl = 2
}

pub struct Control {
    CanvasItem
}

pub interface IControlHasPoint {
    mut:
    virt_has_point(point Vector2) bool
}

pub fn (r &Control) uhas_point(point Vector2) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_has_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IControlStructuredTextParser {
    mut:
    virt_structured_text_parser(gdargs Array, text String) Array
}

pub fn (r &Control) ustructured_text_parser(gdargs Array, text String) Array {
    mut object_out := Array{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_structured_text_parser")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&gdargs)}
    args[1] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IControlGetMinimumSize {
    mut:
    virt_get_minimum_size() Vector2
}

pub fn (r &Control) uget_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_get_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IControlGetTooltip {
    mut:
    virt_get_tooltip(at_position Vector2) String
}

pub fn (r &Control) uget_tooltip(at_position Vector2) String {
    mut object_out := String{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_get_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&at_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IControlGetDragData {
    mut:
    virt_get_drag_data(at_position Vector2) Variant
}

pub fn (mut r Control) uget_drag_data(at_position Vector2) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_get_drag_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&at_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IControlCanDropData {
    mut:
    virt_can_drop_data(at_position Vector2, data Variant) bool
}

pub fn (r &Control) ucan_drop_data(at_position Vector2, data Variant) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_can_drop_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&at_position)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IControlDropData {
    mut:
    virt_drop_data(at_position Vector2, data Variant)
}

pub fn (mut r Control) udrop_data(at_position Vector2, data Variant) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_drop_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&at_position)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IControlMakeCustomTooltip {
    mut:
    virt_make_custom_tooltip(for_text String) Object
}

pub fn (r &Control) umake_custom_tooltip(for_text String) Object {
    mut object_out := Object{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_make_custom_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&for_text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IControlGuiInput {
    mut:
    virt_gui_input(event InputEvent)
}

pub fn (mut r Control) ugui_input(event InputEvent) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("_gui_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) accept_event() {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("accept_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &Control) get_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_combined_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_combined_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_anchors_preset(preset ControlLayoutPreset, keep_offsets bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_anchors_preset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 509135270)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&preset)}
    args[1] = unsafe{voidptr(&keep_offsets)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_offsets_preset(preset ControlLayoutPreset, resize_mode ControlLayoutPresetMode, margin i32) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_offsets_preset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3651818904)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&preset)}
    args[1] = unsafe{voidptr(&resize_mode)}
    args[2] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_anchors_and_offsets_preset(preset ControlLayoutPreset, resize_mode ControlLayoutPresetMode, margin i32) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_anchors_and_offsets_preset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3651818904)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&preset)}
    args[1] = unsafe{voidptr(&resize_mode)}
    args[2] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_anchor(side Side, anchor f64, keep_offset bool, push_opposite_anchor bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_anchor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2589937826)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&side)}
    args[1] = unsafe{voidptr(&anchor)}
    args[2] = unsafe{voidptr(&keep_offset)}
    args[3] = unsafe{voidptr(&push_opposite_anchor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_anchor(side Side) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_anchor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&side)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_offset(side Side, offset f64) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&side)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_offset(offset Side) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_anchor_and_offset(side Side, anchor f64, offset f64, push_opposite_anchor bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_anchor_and_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4031722181)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&side)}
    args[1] = unsafe{voidptr(&anchor)}
    args[2] = unsafe{voidptr(&offset)}
    args[3] = unsafe{voidptr(&push_opposite_anchor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_begin(position Vector2) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_end(position Vector2) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_position(position Vector2, keep_offsets bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2436320129)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&keep_offsets)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_size(size Vector2, keep_offsets bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2436320129)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    args[1] = unsafe{voidptr(&keep_offsets)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) reset_size() {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("reset_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Control) set_custom_minimum_size(size Vector2) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_global_position(position Vector2, keep_offsets bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2436320129)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&keep_offsets)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_rotation(radians f64) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_rotation_degrees(degrees f64) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_scale(scale Vector2) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_pivot_offset(pivot_offset Vector2) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_pivot_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pivot_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_begin() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_end() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_rotation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_rotation_degrees() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_pivot_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_pivot_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_custom_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_parent_area_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent_area_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_global_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_screen_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_screen_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_global_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_focus_mode(mode ControlFocusMode) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_focus_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3232914922)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_focus_mode() ControlFocusMode {
    mut object_out := ControlFocusMode.focus_none
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_focus_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2132829277)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_focus() bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) grab_focus() {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("grab_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Control) release_focus() {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("release_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &Control) find_prev_valid_focus() Control {
    mut object_out := Control{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("find_prev_valid_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) find_next_valid_focus() Control {
    mut object_out := Control{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("find_next_valid_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_h_size_flags(flags ControlSizeFlags) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_h_size_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 394851643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_h_size_flags() ControlSizeFlags {
    mut object_out := ControlSizeFlags.size_shrink_begin
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_h_size_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3781367401)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_stretch_ratio(ratio f64) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_stretch_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_stretch_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_v_size_flags(flags ControlSizeFlags) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_v_size_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 394851643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_v_size_flags() ControlSizeFlags {
    mut object_out := ControlSizeFlags.size_shrink_begin
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_v_size_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3781367401)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_theme(theme Theme) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_theme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2326690814)
    mut args := unsafe { [1]voidptr{} }
    args[0] = theme.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_theme() Theme {
    mut object_out := Theme{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3846893731)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_theme_type_variation(theme_type StringName) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_theme_type_variation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_theme_type_variation() StringName {
    mut object_out := StringName{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_type_variation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) begin_bulk_theme_override() {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("begin_bulk_theme_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Control) end_bulk_theme_override() {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("end_bulk_theme_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Control) add_theme_icon_override(name StringName, texture Texture2D) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_icon_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1373065600)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) add_theme_stylebox_override(name StringName, stylebox StyleBox) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_stylebox_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4188838905)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = stylebox.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) add_theme_font_override(name StringName, font Font) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_font_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3518018674)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = font.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) add_theme_font_size_override(name StringName, font_size i32) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_font_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&font_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) add_theme_color_override(name StringName, color Color) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_color_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4260178595)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) add_theme_constant_override(name StringName, constant i32) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("add_theme_constant_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) remove_theme_icon_override(name StringName) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_icon_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) remove_theme_stylebox_override(name StringName) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_stylebox_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) remove_theme_font_override(name StringName) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_font_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) remove_theme_font_size_override(name StringName) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_font_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) remove_theme_color_override(name StringName) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_color_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) remove_theme_constant_override(name StringName) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("remove_theme_constant_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_theme_icon(name StringName, theme_type StringName) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2336455395)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_theme_stylebox(name StringName, theme_type StringName) StyleBox {
    mut object_out := StyleBox{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2759935355)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_theme_font(name StringName, theme_type StringName) Font {
    mut object_out := Font{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 387378635)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_theme_font_size(name StringName, theme_type StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229578101)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_theme_color(name StringName, theme_type StringName) Color {
    mut object_out := Color{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2377051548)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_theme_constant(name StringName, theme_type StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229578101)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_icon_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_icon_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_stylebox_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_stylebox_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_font_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_font_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_font_size_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_font_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_color_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_color_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_constant_override(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_constant_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_icon(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_stylebox(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_font(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_font_size(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_color(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) has_theme_constant(name StringName, theme_type StringName) bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("has_theme_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1187511791)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&theme_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_theme_default_base_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_default_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_theme_default_font() Font {
    mut object_out := Font{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_default_font")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229501585)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_theme_default_font_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_theme_default_font_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_parent_control() Control {
    mut object_out := Control{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_h_grow_direction(direction ControlGrowDirection) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_h_grow_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2022385301)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_h_grow_direction() ControlGrowDirection {
    mut object_out := ControlGrowDirection.grow_direction_begin
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_h_grow_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635610155)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_v_grow_direction(direction ControlGrowDirection) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_v_grow_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2022385301)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_v_grow_direction() ControlGrowDirection {
    mut object_out := ControlGrowDirection.grow_direction_begin
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_v_grow_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635610155)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_tooltip_text(hint String) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_tooltip_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_tooltip_text() String {
    mut object_out := String{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_tooltip_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_tooltip(at_position Vector2) String {
    mut object_out := String{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_tooltip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2895288280)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&at_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_default_cursor_shape(shape ControlCursorShape) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_cursor_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 217062046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_default_cursor_shape() ControlCursorShape {
    mut object_out := ControlCursorShape.cursor_arrow
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_cursor_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2359535750)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) get_cursor_shape(position Vector2) ControlCursorShape {
    mut object_out := ControlCursorShape.cursor_arrow
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_cursor_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1395773853)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_focus_neighbor(side Side, neighbor NodePath) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_focus_neighbor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2024461774)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&side)}
    args[1] = unsafe{voidptr(&neighbor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_focus_neighbor(side Side) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_focus_neighbor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757935761)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&side)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_focus_next(next NodePath) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_focus_next")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&next)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_focus_next() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_focus_next")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_focus_previous(previous NodePath) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_focus_previous")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&previous)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_focus_previous() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_focus_previous")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) force_drag(data Variant, preview Control) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("force_drag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3191844692)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    args[1] = preview.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_mouse_filter(filter ControlMouseFilter) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_mouse_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3891156122)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_mouse_filter() ControlMouseFilter {
    mut object_out := ControlMouseFilter.mouse_filter_stop
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_mouse_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1572545674)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_force_pass_scroll_events(force_pass_scroll_events bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_force_pass_scroll_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force_pass_scroll_events)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) is_force_pass_scroll_events() bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("is_force_pass_scroll_events")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_clip_contents(enable bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_clip_contents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) is_clipping_contents() bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("is_clipping_contents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) grab_click_focus() {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("grab_click_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Control) set_drag_forwarding(drag_func Callable, can_drop_func Callable, drop_func Callable) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_forwarding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1076571380)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&drag_func)}
    args[1] = unsafe{voidptr(&can_drop_func)}
    args[2] = unsafe{voidptr(&drop_func)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_drag_preview(control Control) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_preview")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) is_drag_successful() bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("is_drag_successful")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) warp_mouse(position Vector2) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("warp_mouse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Control) set_shortcut_context(node Node) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_shortcut_context")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_shortcut_context() Node {
    mut object_out := Node{}
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_shortcut_context")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) update_minimum_size() {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("update_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Control) set_layout_direction(direction ControlLayoutDirection) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_layout_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3310692370)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) get_layout_direction() ControlLayoutDirection {
    mut object_out := ControlLayoutDirection.layout_direction_inherited
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("get_layout_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1546772008)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Control) is_layout_rtl() bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("is_layout_rtl")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_auto_translate(enable bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_translate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) is_auto_translating() bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("is_auto_translating")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Control) set_localize_numeral_system(enable bool) {
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("set_localize_numeral_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Control) is_localizing_numeral_system() bool {
    mut object_out := false
    classname := StringName.new("Control")
    defer { classname.deinit() }
    fnname := StringName.new("is_localizing_numeral_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
