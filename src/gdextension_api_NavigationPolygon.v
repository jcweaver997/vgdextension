module vgdextension

pub enum NavigationPolygonParsedGeometryType as i64 {
    parsed_geometry_mesh_instances = 0
    parsed_geometry_static_colliders = 1
    parsed_geometry_both = 2
    parsed_geometry_max = 3
}

pub enum NavigationPolygonSourceGeometryMode as i64 {
    source_geometry_root_node_children = 0
    source_geometry_groups_with_children = 1
    source_geometry_groups_explicit = 2
    source_geometry_max = 3
}

@[noinit]
pub struct NavigationPolygon {
    Resource
}

pub fn (r &NavigationPolygon) set_vertices(vertices PackedVector2Array) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_vertices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_vertices() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_vertices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) add_polygon(polygon PackedInt32Array) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("add_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_polygon_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_polygon_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) get_polygon(idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3668444399)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) clear_polygons() {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("clear_polygons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_navigation_mesh() NavigationMesh {
    mut object_out := NavigationMesh{}
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_navigation_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 330232164)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) add_outline(outline PackedVector2Array) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("add_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&outline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) add_outline_at_index(outline PackedVector2Array, index i32) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("add_outline_at_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1569738947)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&outline)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_outline_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_outline_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) set_outline(idx i32, outline PackedVector2Array) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1201971903)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&outline)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_outline(idx i32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3946907486)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) remove_outline(idx i32) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("remove_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) clear_outlines() {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("clear_outlines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) make_polygons_from_outlines() {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("make_polygons_from_outlines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) set_cell_size(cell_size f64) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_cell_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cell_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_cell_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_cell_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) set_parsed_geometry_type(geometry_type NavigationPolygonParsedGeometryType) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_parsed_geometry_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2507971764)
    mut args := unsafe { [1]voidptr{} }
    i64_geometry_type := i64(geometry_type)
    args[0] = unsafe{voidptr(&i64_geometry_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_parsed_geometry_type() NavigationPolygonParsedGeometryType {
    mut object_out := i64(NavigationPolygonParsedGeometryType.parsed_geometry_mesh_instances)
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_parsed_geometry_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1073219508)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NavigationPolygonParsedGeometryType(object_out)}
}
pub fn (r &NavigationPolygon) set_parsed_collision_mask(mask u32) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_parsed_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_parsed_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_parsed_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) set_parsed_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_parsed_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_parsed_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_parsed_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) set_source_geometry_mode(geometry_mode NavigationPolygonSourceGeometryMode) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_source_geometry_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4002316705)
    mut args := unsafe { [1]voidptr{} }
    i64_geometry_mode := i64(geometry_mode)
    args[0] = unsafe{voidptr(&i64_geometry_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_source_geometry_mode() NavigationPolygonSourceGeometryMode {
    mut object_out := i64(NavigationPolygonSourceGeometryMode.source_geometry_root_node_children)
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_source_geometry_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 459686762)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{NavigationPolygonSourceGeometryMode(object_out)}
}
pub fn (r &NavigationPolygon) set_source_geometry_group_name(group_name string) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_source_geometry_group_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(group_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_source_geometry_group_name() string {
    mut object_out := StringName{}
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_source_geometry_group_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &NavigationPolygon) set_agent_radius(agent_radius f64) {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("set_agent_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&agent_radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPolygon) get_agent_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("get_agent_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPolygon) clear() {
    classname := StringName.new("NavigationPolygon")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
