module vgdextension

@[noinit]
pub struct GraphNode {
    GraphElement
}

pub interface IGraphNodeDrawPort {
    mut:
    virt_draw_port(slot_index i32, position Vector2i, left bool, color Color)
}

pub fn (r &GraphNode) udraw_port(slot_index i32, position Vector2i, left bool, color Color) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("_draw_port")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&position)}
    args[2] = unsafe{voidptr(&left)}
    args[3] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) set_title(title string) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(title)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) get_title() string {
    mut object_out := String{}
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &GraphNode) get_titlebar_hbox() HBoxContainer {
    mut object_out := HBoxContainer{}
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_titlebar_hbox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3590609951)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) set_slot(slot_index i32, enable_left_port bool, type_left i32, color_left Color, enable_right_port bool, type_right i32, color_right Color, custom_icon_left Texture2D, custom_icon_right Texture2D, draw_stylebox bool) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_slot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2873310869)
    mut args := unsafe { [10]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&enable_left_port)}
    args[2] = unsafe{voidptr(&type_left)}
    args[3] = unsafe{voidptr(&color_left)}
    args[4] = unsafe{voidptr(&enable_right_port)}
    args[5] = unsafe{voidptr(&type_right)}
    args[6] = unsafe{voidptr(&color_right)}
    args[7] = voidptr(&custom_icon_left.ptr)
    args[8] = voidptr(&custom_icon_right.ptr)
    args[9] = unsafe{voidptr(&draw_stylebox)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) clear_slot(slot_index i32) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("clear_slot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) clear_all_slots() {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("clear_all_slots")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) is_slot_enabled_left(slot_index i32) bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    fnname := StringName.new("is_slot_enabled_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) set_slot_enabled_left(slot_index i32, enable bool) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_slot_enabled_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) set_slot_type_left(slot_index i32, type_name i32) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_slot_type_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) get_slot_type_left(slot_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_slot_type_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) set_slot_color_left(slot_index i32, color Color) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_slot_color_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) get_slot_color_left(slot_index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_slot_color_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) is_slot_enabled_right(slot_index i32) bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    fnname := StringName.new("is_slot_enabled_right")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) set_slot_enabled_right(slot_index i32, enable bool) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_slot_enabled_right")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) set_slot_type_right(slot_index i32, type_name i32) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_slot_type_right")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) get_slot_type_right(slot_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_slot_type_right")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) set_slot_color_right(slot_index i32, color Color) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_slot_color_right")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) get_slot_color_right(slot_index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_slot_color_right")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) is_slot_draw_stylebox(slot_index i32) bool {
    mut object_out := false
    classname := StringName.new("GraphNode")
    fnname := StringName.new("is_slot_draw_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) set_slot_draw_stylebox(slot_index i32, enable bool) {
    classname := StringName.new("GraphNode")
    fnname := StringName.new("set_slot_draw_stylebox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&slot_index)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphNode) get_input_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_input_port_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_input_port_position(port_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_input_port_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_input_port_type(port_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_input_port_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_input_port_color(port_idx i32) Color {
    mut object_out := Color{}
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_input_port_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624840992)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_input_port_slot(port_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_input_port_slot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_output_port_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_output_port_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_output_port_position(port_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_output_port_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3114997196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_output_port_type(port_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_output_port_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_output_port_color(port_idx i32) Color {
    mut object_out := Color{}
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_output_port_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2624840992)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GraphNode) get_output_port_slot(port_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphNode")
    fnname := StringName.new("get_output_port_slot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&port_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
