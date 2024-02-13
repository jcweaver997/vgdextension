module vgdextension

pub enum GraphNodeOverlay {
    overlay_disabled = 0
    overlay_breakpoint = 1
    overlay_position = 2
}

@[noinit]
pub struct GraphNode {
    Container
}

pub fn (mut r GraphNode) set_title(title String) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&title)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_title() String {
    mut object_out := String{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_text_direction() ControlTextDirection {
    mut object_out := ControlTextDirection.text_direction_inherited
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_language(language String) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_language() String {
    mut object_out := String{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_slot(slot_index i32, enable_left_port bool, type_left i32, color_left Color, enable_right_port bool, type_right i32, color_right Color, custom_icon_left Texture2D, custom_icon_right Texture2D, draw_stylebox bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_slot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 902131739)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&enable_left_port)}
    args[2] = unsafe{voidptr(&type_left)}
    args[3] = unsafe{voidptr(&color_left)}
    args[4] = unsafe{voidptr(&enable_right_port)}
    args[5] = unsafe{voidptr(&type_right)}
    args[6] = unsafe{voidptr(&color_right)}
    args[7] = custom_icon_left.ptr
    args[8] = custom_icon_right.ptr
    args[9] = unsafe{voidptr(&draw_stylebox)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GraphNode) clear_slot(slot_index i32) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("clear_slot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GraphNode) clear_all_slots() {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("clear_all_slots")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r GraphNode) set_slot_enabled_left(slot_index i32, enable bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_slot_enabled_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) is_slot_enabled_left(slot_index i32) bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_slot_enabled_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_slot_type_left(slot_index i32, type_name i32) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_slot_type_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_slot_type_left(slot_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_slot_type_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_slot_color_left(slot_index i32, color Color) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_slot_color_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_slot_color_left(slot_index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_slot_color_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_slot_enabled_right(slot_index i32, enable bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_slot_enabled_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) is_slot_enabled_right(slot_index i32) bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_slot_enabled_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_slot_type_right(slot_index i32, type_name i32) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_slot_type_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_slot_type_right(slot_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_slot_type_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_slot_color_right(slot_index i32, color Color) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_slot_color_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_slot_color_right(slot_index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_slot_color_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GraphNode) is_slot_draw_stylebox(slot_index i32) bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_slot_draw_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_slot_draw_stylebox(slot_index i32, enable bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_slot_draw_stylebox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GraphNode) set_position_offset(offset Vector2) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_position_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_position_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_position_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_comment(comment bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_comment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&comment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) is_comment() bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_comment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_resizable(resizable bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_resizable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&resizable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) is_resizable() bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_resizable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_draggable(draggable bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_draggable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&draggable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GraphNode) is_draggable() bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_draggable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_selectable(selectable bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_selectable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&selectable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GraphNode) is_selectable() bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_selectable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_selected(selected bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_selected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&selected)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GraphNode) is_selected() bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_selected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_input_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_input_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_input_height(port i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_input_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_input_position(port i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_input_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_input_type(port i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_input_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_input_color(port i32) Color {
    mut object_out := Color{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_input_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624840992)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_input_slot(port i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_input_slot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_output_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_output_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_output_height(port i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_output_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_output_position(port i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_output_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_output_type(port i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_output_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_output_color(port i32) Color {
    mut object_out := Color{}
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_output_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624840992)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) get_connection_output_slot(port i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_output_slot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_show_close_button(show bool) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_show_close_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&show)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) is_close_button_visible() bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("is_close_button_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GraphNode) set_overlay(overlay GraphNodeOverlay) {
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_overlay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3144190109)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&overlay)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GraphNode) get_overlay() GraphNodeOverlay {
    mut object_out := GraphNodeOverlay.overlay_disabled
    classname := StringName.new("GraphNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_overlay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2854257040)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
