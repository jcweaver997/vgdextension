module vgdextension

pub enum GraphEditPanningScheme as i64 {
    scroll_zooms = 0
    scroll_pans = 1
}

@[noinit]
pub struct GraphEdit {
    Control
}

pub interface IGraphEditIsInInputHotzone {
    mut:
    virt_is_in_input_hotzone(in_node Object, in_port i32, mouse_position Vector2) bool
}

pub fn (mut r GraphEdit) uis_in_input_hotzone(in_node Object, in_port i32, mouse_position Vector2) bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("_is_in_input_hotzone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = in_node.ptr
    args[1] = unsafe{voidptr(&in_port)}
    args[2] = unsafe{voidptr(&mouse_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IGraphEditIsInOutputHotzone {
    mut:
    virt_is_in_output_hotzone(in_node Object, in_port i32, mouse_position Vector2) bool
}

pub fn (mut r GraphEdit) uis_in_output_hotzone(in_node Object, in_port i32, mouse_position Vector2) bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("_is_in_output_hotzone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = in_node.ptr
    args[1] = unsafe{voidptr(&in_port)}
    args[2] = unsafe{voidptr(&mouse_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IGraphEditGetConnectionLine {
    mut:
    virt_get_connection_line(from_position Vector2, to_position Vector2) PackedVector2Array
}

pub fn (r &GraphEdit) uget_connection_line(from_position Vector2, to_position Vector2) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("_get_connection_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_position)}
    args[1] = unsafe{voidptr(&to_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IGraphEditIsNodeHoverValid {
    mut:
    virt_is_node_hover_valid(from_node StringName, from_port i32, to_node StringName, to_port i32) bool
}

pub fn (mut r GraphEdit) uis_node_hover_valid(from_node string, from_port i32, to_node string, to_port i32) bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("_is_node_hover_valid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(from_node)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&from_port)}
    arg_sn2 := StringName.new(to_node)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) connect_node(from_node string, from_port i32, to_node string, to_port i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("connect_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 195065850)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(from_node)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&from_port)}
    arg_sn2 := StringName.new(to_node)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r GraphEdit) is_node_connected(from_node string, from_port i32, to_node string, to_port i32) bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_node_connected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4216241294)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(from_node)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&from_port)}
    arg_sn2 := StringName.new(to_node)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) disconnect_node(from_node string, from_port i32, to_node string, to_port i32) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("disconnect_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1933654315)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(from_node)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&from_port)}
    arg_sn2 := StringName.new(to_node)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&to_port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) set_connection_activity(from_node string, from_port i32, to_node string, to_port i32, amount f64) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_connection_activity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1141899943)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := StringName.new(from_node)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&from_port)}
    arg_sn2 := StringName.new(to_node)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&to_port)}
    args[4] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_connection_list() Array {
    mut object_out := Array{}
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_connection_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) clear_connections() {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("clear_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) force_connection_drag_end() {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("force_connection_drag_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_scroll_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_scroll_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_scroll_offset(offset Vector2) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_scroll_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) add_valid_right_disconnect_type(type_name i32) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("add_valid_right_disconnect_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) remove_valid_right_disconnect_type(type_name i32) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("remove_valid_right_disconnect_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) add_valid_left_disconnect_type(type_name i32) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("add_valid_left_disconnect_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) remove_valid_left_disconnect_type(type_name i32) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("remove_valid_left_disconnect_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) add_valid_connection_type(from_type i32, to_type i32) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("add_valid_connection_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_type)}
    args[1] = unsafe{voidptr(&to_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) remove_valid_connection_type(from_type i32, to_type i32) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("remove_valid_connection_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_type)}
    args[1] = unsafe{voidptr(&to_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_valid_connection_type(from_type i32, to_type i32) bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_valid_connection_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_type)}
    args[1] = unsafe{voidptr(&to_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) get_connection_line(from_node Vector2, to_node Vector2) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_connection_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1562168077)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_node)}
    args[1] = unsafe{voidptr(&to_node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_panning_scheme(scheme GraphEditPanningScheme) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_panning_scheme")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 18893313)
    mut args := unsafe { [1]voidptr{} }
    i64_scheme := i64(scheme)
    args[0] = unsafe{voidptr(&i64_scheme)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_panning_scheme() GraphEditPanningScheme {
    mut object_out := i64(GraphEditPanningScheme.scroll_zooms)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_panning_scheme")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 549924446)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GraphEditPanningScheme(object_out)}
}
pub fn (mut r GraphEdit) set_zoom(zoom f64) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_zoom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&zoom)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_zoom() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_zoom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_zoom_min(zoom_min f64) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_zoom_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&zoom_min)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_zoom_min() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_zoom_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_zoom_max(zoom_max f64) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_zoom_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&zoom_max)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_zoom_max() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_zoom_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_zoom_step(zoom_step f64) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_zoom_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&zoom_step)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_zoom_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_zoom_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_show_grid(enable bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_show_grid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_showing_grid() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_showing_grid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_snapping_enabled(enable bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_snapping_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_snapping_enabled() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_snapping_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_snapping_distance(pixels i32) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_snapping_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pixels)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_snapping_distance() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_snapping_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_connection_lines_curvature(curvature f64) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_connection_lines_curvature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&curvature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_connection_lines_curvature() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_connection_lines_curvature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_connection_lines_thickness(pixels f64) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_connection_lines_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pixels)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_connection_lines_thickness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_connection_lines_thickness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_connection_lines_antialiased(pixels bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_connection_lines_antialiased")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pixels)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_connection_lines_antialiased() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_connection_lines_antialiased")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_minimap_size(size Vector2) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_minimap_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_minimap_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_minimap_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_minimap_opacity(opacity f64) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_minimap_opacity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&opacity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) get_minimap_opacity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_minimap_opacity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_minimap_enabled(enable bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_minimap_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_minimap_enabled() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_minimap_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_show_menu(hidden bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_show_menu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_showing_menu() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_showing_menu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_show_zoom_label(enable bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_show_zoom_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_showing_zoom_label() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_showing_zoom_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_show_grid_buttons(hidden bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_show_grid_buttons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_showing_grid_buttons() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_showing_grid_buttons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_show_zoom_buttons(hidden bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_show_zoom_buttons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_showing_zoom_buttons() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_showing_zoom_buttons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_show_minimap_button(hidden bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_show_minimap_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_showing_minimap_button() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_showing_minimap_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_show_arrange_button(hidden bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_show_arrange_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_showing_arrange_button() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_showing_arrange_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) set_right_disconnects(enable bool) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_right_disconnects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphEdit) is_right_disconnects_enabled() bool {
    mut object_out := false
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("is_right_disconnects_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) get_menu_hbox() HBoxContainer {
    mut object_out := HBoxContainer{}
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("get_menu_hbox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3590609951)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphEdit) arrange_nodes() {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("arrange_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphEdit) set_selected(node Node) {
    classname := StringName.new("GraphEdit")
    fnname := StringName.new("set_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
