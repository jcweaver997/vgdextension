module vgdextension

@[noinit]
pub struct TileData {
    Object
}

pub fn (mut r TileData) set_flip_h(flip_h bool) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_flip_h")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flip_h)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_flip_h() bool {
    mut object_out := false
    classname := StringName.new("TileData")
    fnname := StringName.new("get_flip_h")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_flip_v(flip_v bool) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_flip_v")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flip_v)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_flip_v() bool {
    mut object_out := false
    classname := StringName.new("TileData")
    fnname := StringName.new("get_flip_v")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_transpose(transpose bool) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_transpose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transpose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_transpose() bool {
    mut object_out := false
    classname := StringName.new("TileData")
    fnname := StringName.new("get_transpose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_material(material Material) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_texture_origin(texture_origin Vector2i) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_texture_origin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_origin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_texture_origin() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_texture_origin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_modulate(modulate Color) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_z_index(z_index i32) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_z_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&z_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_z_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_z_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_y_sort_origin(y_sort_origin i32) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_y_sort_origin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&y_sort_origin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_y_sort_origin() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_y_sort_origin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_occluder(layer_id i32, occluder_polygon OccluderPolygon2D) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_occluder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 914399637)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = occluder_polygon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_occluder(layer_id i32) OccluderPolygon2D {
    mut object_out := OccluderPolygon2D{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_occluder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458574231)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_constant_linear_velocity(layer_id i32, velocity Vector2) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_constant_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_constant_linear_velocity(layer_id i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_constant_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_constant_angular_velocity(layer_id i32, velocity f64) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_constant_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_constant_angular_velocity(layer_id i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_constant_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_collision_polygons_count(layer_id i32, polygons_count i32) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_collision_polygons_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&polygons_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_collision_polygons_count(layer_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_collision_polygons_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) add_collision_polygon(layer_id i32) {
    classname := StringName.new("TileData")
    fnname := StringName.new("add_collision_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileData) remove_collision_polygon(layer_id i32, polygon_index i32) {
    classname := StringName.new("TileData")
    fnname := StringName.new("remove_collision_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&polygon_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileData) set_collision_polygon_points(layer_id i32, polygon_index i32, polygon PackedVector2Array) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_collision_polygon_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3230546541)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&polygon_index)}
    args[2] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_collision_polygon_points(layer_id i32, polygon_index i32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_collision_polygon_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 103942801)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&polygon_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_collision_polygon_one_way(layer_id i32, polygon_index i32, one_way bool) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_collision_polygon_one_way")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&polygon_index)}
    args[2] = unsafe{voidptr(&one_way)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) is_collision_polygon_one_way(layer_id i32, polygon_index i32) bool {
    mut object_out := false
    classname := StringName.new("TileData")
    fnname := StringName.new("is_collision_polygon_one_way")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&polygon_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_collision_polygon_one_way_margin(layer_id i32, polygon_index i32, one_way_margin f64) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_collision_polygon_one_way_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&polygon_index)}
    args[2] = unsafe{voidptr(&one_way_margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_collision_polygon_one_way_margin(layer_id i32, polygon_index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_collision_polygon_one_way_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&polygon_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_terrain_set(terrain_set i32) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_terrain_set")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&terrain_set)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_terrain_set() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_terrain_set")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_terrain(terrain i32) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_terrain")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&terrain)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_terrain() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_terrain")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_terrain_peering_bit(peering_bit TileSetCellNeighbor, terrain i32) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_terrain_peering_bit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1084452308)
    mut args := unsafe { [2]voidptr{} }
    i64_peering_bit := i64(peering_bit)
    args[0] = unsafe{voidptr(&i64_peering_bit)}
    args[1] = unsafe{voidptr(&terrain)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_terrain_peering_bit(peering_bit TileSetCellNeighbor) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_terrain_peering_bit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3831796792)
    mut args := unsafe { [1]voidptr{} }
    i64_peering_bit := i64(peering_bit)
    args[0] = unsafe{voidptr(&i64_peering_bit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_navigation_polygon(layer_id i32, navigation_polygon NavigationPolygon) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_navigation_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2224691167)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = navigation_polygon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_navigation_polygon(layer_id i32) NavigationPolygon {
    mut object_out := NavigationPolygon{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_navigation_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3991786031)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_probability(probability f64) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_probability")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&probability)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_probability() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TileData")
    fnname := StringName.new("get_probability")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_custom_data(layer_name String, value Variant) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_custom_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_name)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_custom_data(layer_name String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_custom_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868160156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileData) set_custom_data_by_layer_id(layer_id i32, value Variant) {
    classname := StringName.new("TileData")
    fnname := StringName.new("set_custom_data_by_layer_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileData) get_custom_data_by_layer_id(layer_id i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("TileData")
    fnname := StringName.new("get_custom_data_by_layer_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
