module vgdextension

pub enum TileSetTileShape {
    tile_shape_square = 0
    tile_shape_isometric = 1
    tile_shape_half_offset_square = 2
    tile_shape_hexagon = 3
}

pub enum TileSetTileLayout {
    tile_layout_stacked = 0
    tile_layout_stacked_offset = 1
    tile_layout_stairs_right = 2
    tile_layout_stairs_down = 3
    tile_layout_diamond_right = 4
    tile_layout_diamond_down = 5
}

pub enum TileSetTileOffsetAxis {
    tile_offset_axis_horizontal = 0
    tile_offset_axis_vertical = 1
}

pub enum TileSetCellNeighbor {
    cell_neighbor_right_side = 0
    cell_neighbor_right_corner = 1
    cell_neighbor_bottom_right_side = 2
    cell_neighbor_bottom_right_corner = 3
    cell_neighbor_bottom_side = 4
    cell_neighbor_bottom_corner = 5
    cell_neighbor_bottom_left_side = 6
    cell_neighbor_bottom_left_corner = 7
    cell_neighbor_left_side = 8
    cell_neighbor_left_corner = 9
    cell_neighbor_top_left_side = 10
    cell_neighbor_top_left_corner = 11
    cell_neighbor_top_side = 12
    cell_neighbor_top_corner = 13
    cell_neighbor_top_right_side = 14
    cell_neighbor_top_right_corner = 15
}

pub enum TileSetTerrainMode {
    terrain_mode_match_corners_and_sides = 0
    terrain_mode_match_corners = 1
    terrain_mode_match_sides = 2
}

pub type TileSet = voidptr

pub fn (r &TileSet) get_next_source_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_next_source_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) add_source(source TileSetSource, atlas_source_id_override i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 276991387)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&source)}
    args[1] = unsafe{voidptr(&atlas_source_id_override)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) remove_source(source_id i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) set_source_id(source_id i32, new_source_id i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_source_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_source_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_source_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) get_source_id(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_source_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) has_source(source_id i32) bool {
    mut object_out := false
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("has_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&source_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) get_source(source_id i32) TileSetSource {
    mut object_out := TileSetSource(unsafe{nil})
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1763540252)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&source_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_tile_shape(shape TileSetTileShape) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_tile_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2131427112)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_tile_shape() TileSetTileShape {
    mut object_out := TileSetTileShape.tile_shape_square
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_tile_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 716918169)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_tile_layout(layout TileSetTileLayout) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_tile_layout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1071216679)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_tile_layout() TileSetTileLayout {
    mut object_out := TileSetTileLayout.tile_layout_stacked
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_tile_layout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194628839)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_tile_offset_axis(alignment TileSetTileOffsetAxis) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_tile_offset_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3300198521)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_tile_offset_axis() TileSetTileOffsetAxis {
    mut object_out := TileSetTileOffsetAxis.tile_offset_axis_horizontal
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_tile_offset_axis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 762494114)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_tile_size(size Vector2i) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_tile_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_tile_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_tile_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_uv_clipping(uv_clipping bool) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv_clipping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) is_uv_clipping() bool {
    mut object_out := false
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("is_uv_clipping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) get_occlusion_layers_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_occlusion_layers_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) add_occlusion_layer(to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_occlusion_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) move_occlusion_layer(layer_index i32, to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("move_occlusion_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) remove_occlusion_layer(layer_index i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_occlusion_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) set_occlusion_layer_light_mask(layer_index i32, light_mask i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_occlusion_layer_light_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_occlusion_layer_light_mask(layer_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_occlusion_layer_light_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_occlusion_layer_sdf_collision(layer_index i32, sdf_collision bool) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_occlusion_layer_sdf_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_occlusion_layer_sdf_collision(layer_index i32) bool {
    mut object_out := false
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_occlusion_layer_sdf_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) get_physics_layers_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_layers_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) add_physics_layer(to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_physics_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) move_physics_layer(layer_index i32, to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("move_physics_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) remove_physics_layer(layer_index i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_physics_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) set_physics_layer_collision_layer(layer_index i32, layer i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_layer_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_physics_layer_collision_layer(layer_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_layer_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_physics_layer_collision_mask(layer_index i32, mask i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_layer_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_physics_layer_collision_mask(layer_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_layer_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_physics_layer_physics_material(layer_index i32, physics_material PhysicsMaterial) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_layer_physics_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1018687357)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_physics_layer_physics_material(layer_index i32) PhysicsMaterial {
    mut object_out := PhysicsMaterial(unsafe{nil})
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_layer_physics_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788318639)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) get_terrain_sets_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_terrain_sets_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) add_terrain_set(to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_terrain_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) move_terrain_set(terrain_set i32, to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("move_terrain_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) remove_terrain_set(terrain_set i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_terrain_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) set_terrain_set_mode(terrain_set i32, mode TileSetTerrainMode) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_terrain_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3943003916)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_terrain_set_mode(terrain_set i32) TileSetTerrainMode {
    mut object_out := TileSetTerrainMode.terrain_mode_match_corners_and_sides
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_terrain_set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2084469411)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&terrain_set)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) get_terrains_count(terrain_set i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_terrains_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&terrain_set)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) add_terrain(terrain_set i32, to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_terrain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3023605688)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) move_terrain(terrain_set i32, terrain_index i32, to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("move_terrain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1649997291)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) remove_terrain(terrain_set i32, terrain_index i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_terrain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) set_terrain_name(terrain_set i32, terrain_index i32, name String) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_terrain_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285447957)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_terrain_name(terrain_set i32, terrain_index i32) String {
    mut object_out := String{}
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_terrain_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391810591)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&terrain_set)}
    args[1] = unsafe{voidptr(&terrain_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_terrain_color(terrain_set i32, terrain_index i32, color Color) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_terrain_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3733378741)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_terrain_color(terrain_set i32, terrain_index i32) Color {
    mut object_out := Color{}
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_terrain_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2165839948)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&terrain_set)}
    args[1] = unsafe{voidptr(&terrain_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) get_navigation_layers_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layers_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) add_navigation_layer(to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_navigation_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) move_navigation_layer(layer_index i32, to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("move_navigation_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) remove_navigation_layer(layer_index i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_navigation_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) set_navigation_layer_layers(layer_index i32, layers i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layer_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_navigation_layer_layers(layer_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layer_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_navigation_layer_layer_value(layer_index i32, layer_number i32, value bool) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_navigation_layer_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_navigation_layer_layer_value(layer_index i32, layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_layer_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    args[1] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSet) get_custom_data_layers_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_data_layers_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) add_custom_data_layer(to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_custom_data_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) move_custom_data_layer(layer_index i32, to_position i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("move_custom_data_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) remove_custom_data_layer(layer_index i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_custom_data_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_custom_data_layer_by_name(layer_name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_data_layer_by_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_custom_data_layer_name(layer_index i32, layer_name String) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_data_layer_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_custom_data_layer_name(layer_index i32) String {
    mut object_out := String{}
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_data_layer_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_custom_data_layer_type(layer_index i32, layer_type VariantType) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_data_layer_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3492912874)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) get_custom_data_layer_type(layer_index i32) VariantType {
    mut object_out := VariantType.type_nil
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_data_layer_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2990820875)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) set_source_level_tile_proxy(source_from i32, source_to i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_source_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) get_source_level_tile_proxy(source_from i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_source_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&source_from)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) has_source_level_tile_proxy(source_from i32) bool {
    mut object_out := false
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("has_source_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&source_from)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) remove_source_level_tile_proxy(source_from i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_source_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) set_coords_level_tile_proxy(p_source_from i32, coords_from Vector2i, source_to i32, coords_to Vector2i) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_coords_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1769939278)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) get_coords_level_tile_proxy(source_from i32, coords_from Vector2i) Array {
    mut object_out := Array{}
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_coords_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2856536371)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&source_from)}
    args[1] = unsafe{voidptr(&coords_from)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) has_coords_level_tile_proxy(source_from i32, coords_from Vector2i) bool {
    mut object_out := false
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("has_coords_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3957903770)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&source_from)}
    args[1] = unsafe{voidptr(&coords_from)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) remove_coords_level_tile_proxy(source_from i32, coords_from Vector2i) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_coords_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) set_alternative_level_tile_proxy(source_from i32, coords_from Vector2i, alternative_from i32, source_to i32, coords_to Vector2i, alternative_to i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_alternative_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3862385460)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) get_alternative_level_tile_proxy(source_from i32, coords_from Vector2i, alternative_from i32) Array {
    mut object_out := Array{}
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_alternative_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2303761075)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&source_from)}
    args[1] = unsafe{voidptr(&coords_from)}
    args[2] = unsafe{voidptr(&alternative_from)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) has_alternative_level_tile_proxy(source_from i32, coords_from Vector2i, alternative_from i32) bool {
    mut object_out := false
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("has_alternative_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 180086755)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&source_from)}
    args[1] = unsafe{voidptr(&coords_from)}
    args[2] = unsafe{voidptr(&alternative_from)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) remove_alternative_level_tile_proxy(source_from i32, coords_from Vector2i, alternative_from i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_alternative_level_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2328951467)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileSet) map_tile_proxy(source_from i32, coords_from Vector2i, alternative_from i32) Array {
    mut object_out := Array{}
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("map_tile_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4267935328)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&source_from)}
    args[1] = unsafe{voidptr(&coords_from)}
    args[2] = unsafe{voidptr(&alternative_from)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) cleanup_invalid_tile_proxies() {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("cleanup_invalid_tile_proxies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) clear_tile_proxies() {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("clear_tile_proxies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) add_pattern(pattern TileMapPattern, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_pattern")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3009264082)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&pattern)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) get_pattern(index i32) TileMapPattern {
    mut object_out := TileMapPattern(unsafe{nil})
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_pattern")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4207737510)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileSet) remove_pattern(index i32) {
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_pattern")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TileSet) get_patterns_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_patterns_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
