module vgdextension

pub enum TileMapVisibilityMode as i64 {
    visibility_mode_default = 0
    visibility_mode_force_hide = 2
    visibility_mode_force_show = 1
}

@[noinit]
pub struct TileMap {
    Node2D
}

pub interface ITileMapUseTileDataRuntimeUpdate {
    mut:
    virt_use_tile_data_runtime_update(layer i32, coords Vector2i) bool
}

pub fn (mut r TileMap) uuse_tile_data_runtime_update(layer i32, coords Vector2i) bool {
    mut object_out := false
    classname := StringName.new("TileMap")
    fnname := StringName.new("_use_tile_data_runtime_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITileMapTileDataRuntimeUpdate {
    mut:
    virt_tile_data_runtime_update(layer i32, coords Vector2i, tile_data TileData)
}

pub fn (mut r TileMap) utile_data_runtime_update(layer i32, coords Vector2i, tile_data TileData) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("_tile_data_runtime_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords)}
    args[2] = tile_data.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) set_navigation_map(layer i32, mape RID) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_navigation_map(layer i32) RID {
    mut object_out := RID{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) force_update(layer i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("force_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) set_tileset(tileset TileSet) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_tileset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 774531446)
    mut args := unsafe { [1]voidptr{} }
    args[0] = tileset.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_tileset() TileSet {
    mut object_out := TileSet{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_tileset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678226422)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_rendering_quadrant_size(size i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_rendering_quadrant_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_rendering_quadrant_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_rendering_quadrant_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) get_layers_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_layers_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) add_layer(to_position i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("add_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) move_layer(layer i32, to_position i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("move_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&to_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) remove_layer(layer i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("remove_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) set_layer_name(layer i32, name String) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_layer_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_layer_name(layer i32) String {
    mut object_out := String{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_layer_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_layer_enabled(layer i32, enabled bool) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_layer_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) is_layer_enabled(layer i32) bool {
    mut object_out := false
    classname := StringName.new("TileMap")
    fnname := StringName.new("is_layer_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_layer_modulate(layer i32, modulate Color) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_layer_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_layer_modulate(layer i32) Color {
    mut object_out := Color{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_layer_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_layer_y_sort_enabled(layer i32, y_sort_enabled bool) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_layer_y_sort_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&y_sort_enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) is_layer_y_sort_enabled(layer i32) bool {
    mut object_out := false
    classname := StringName.new("TileMap")
    fnname := StringName.new("is_layer_y_sort_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_layer_y_sort_origin(layer i32, y_sort_origin i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_layer_y_sort_origin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&y_sort_origin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_layer_y_sort_origin(layer i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_layer_y_sort_origin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_layer_z_index(layer i32, z_index i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_layer_z_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&z_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_layer_z_index(layer i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_layer_z_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_layer_navigation_enabled(layer i32, enabled bool) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_layer_navigation_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) is_layer_navigation_enabled(layer i32) bool {
    mut object_out := false
    classname := StringName.new("TileMap")
    fnname := StringName.new("is_layer_navigation_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_layer_navigation_map(layer i32, mape RID) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_layer_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4040184819)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&mape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_layer_navigation_map(layer i32) RID {
    mut object_out := RID{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_layer_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 495598643)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_collision_animatable(enabled bool) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_collision_animatable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) is_collision_animatable() bool {
    mut object_out := false
    classname := StringName.new("TileMap")
    fnname := StringName.new("is_collision_animatable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_collision_visibility_mode(collision_visibility_mode TileMapVisibilityMode) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_collision_visibility_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3193440636)
    mut args := unsafe { [1]voidptr{} }
    i64_collision_visibility_mode := i64(collision_visibility_mode)
    args[0] = unsafe{voidptr(&i64_collision_visibility_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) get_collision_visibility_mode() TileMapVisibilityMode {
    mut object_out := i64(TileMapVisibilityMode.visibility_mode_default)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_collision_visibility_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2026313073)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TileMapVisibilityMode(object_out)}
}
pub fn (mut r TileMap) set_navigation_visibility_mode(navigation_visibility_mode TileMapVisibilityMode) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_navigation_visibility_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3193440636)
    mut args := unsafe { [1]voidptr{} }
    i64_navigation_visibility_mode := i64(navigation_visibility_mode)
    args[0] = unsafe{voidptr(&i64_navigation_visibility_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) get_navigation_visibility_mode() TileMapVisibilityMode {
    mut object_out := i64(TileMapVisibilityMode.visibility_mode_default)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_navigation_visibility_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2026313073)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TileMapVisibilityMode(object_out)}
}
pub fn (mut r TileMap) set_cell(layer i32, coords Vector2i, source_id i32, atlas_coords Vector2i, alternative_tile i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_cell")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 966713560)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords)}
    args[2] = unsafe{voidptr(&source_id)}
    args[3] = unsafe{voidptr(&atlas_coords)}
    args[4] = unsafe{voidptr(&alternative_tile)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) erase_cell(layer i32, coords Vector2i) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("erase_cell")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311374912)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileMap) get_cell_source_id(layer i32, coords Vector2i, use_proxies bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_cell_source_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 551761942)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords)}
    args[2] = unsafe{voidptr(&use_proxies)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) get_cell_atlas_coords(layer i32, coords Vector2i, use_proxies bool) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_cell_atlas_coords")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1869815066)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords)}
    args[2] = unsafe{voidptr(&use_proxies)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) get_cell_alternative_tile(layer i32, coords Vector2i, use_proxies bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_cell_alternative_tile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 551761942)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords)}
    args[2] = unsafe{voidptr(&use_proxies)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) get_cell_tile_data(layer i32, coords Vector2i, use_proxies bool) TileData {
    mut object_out := TileData{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_cell_tile_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2849631287)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords)}
    args[2] = unsafe{voidptr(&use_proxies)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) get_coords_for_body_rid(body RID) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_coords_for_body_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 291584212)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) get_layer_for_body_rid(body RID) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_layer_for_body_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3917799429)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) get_pattern(layer i32, coords_array Array) TileMapPattern {
    mut object_out := TileMapPattern{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_pattern")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2833570986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&coords_array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) map_pattern(position_in_tilemap Vector2i, coords_in_pattern Vector2i, pattern TileMapPattern) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("map_pattern")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1864516957)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&position_in_tilemap)}
    args[1] = unsafe{voidptr(&coords_in_pattern)}
    args[2] = pattern.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileMap) set_pattern(layer i32, position Vector2i, pattern TileMapPattern) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_pattern")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1195853946)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&position)}
    args[2] = pattern.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) set_cells_terrain_connect(layer i32, cells Array, terrain_set i32, terrain i32, ignore_empty_terrains bool) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_cells_terrain_connect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3578627656)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&cells)}
    args[2] = unsafe{voidptr(&terrain_set)}
    args[3] = unsafe{voidptr(&terrain)}
    args[4] = unsafe{voidptr(&ignore_empty_terrains)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) set_cells_terrain_path(layer i32, path Array, terrain_set i32, terrain i32, ignore_empty_terrains bool) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("set_cells_terrain_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3578627656)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&path)}
    args[2] = unsafe{voidptr(&terrain_set)}
    args[3] = unsafe{voidptr(&terrain)}
    args[4] = unsafe{voidptr(&ignore_empty_terrains)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) fix_invalid_tiles() {
    classname := StringName.new("TileMap")
    fnname := StringName.new("fix_invalid_tiles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) clear_layer(layer i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("clear_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) clear() {
    classname := StringName.new("TileMap")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) update_internals() {
    classname := StringName.new("TileMap")
    fnname := StringName.new("update_internals")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) notify_runtime_tile_data_update(layer i32) {
    classname := StringName.new("TileMap")
    fnname := StringName.new("notify_runtime_tile_data_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025054187)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileMap) get_surrounding_cells(coords Vector2i) Array {
    mut object_out := Array{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_surrounding_cells")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2673526557)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) get_used_cells(layer i32) Array {
    mut object_out := Array{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_used_cells")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) get_used_cells_by_id(layer i32, source_id i32, atlas_coords Vector2i, alternative_tile i32) Array {
    mut object_out := Array{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_used_cells_by_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2931012785)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&source_id)}
    args[2] = unsafe{voidptr(&atlas_coords)}
    args[3] = unsafe{voidptr(&alternative_tile)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) get_used_rect() Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_used_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410525958)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) map_to_local(map_position Vector2i) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("map_to_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 108438297)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&map_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) local_to_map(local_position Vector2) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("local_to_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 837806996)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileMap) get_neighbor_cell(coords Vector2i, neighbor TileSetCellNeighbor) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileMap")
    fnname := StringName.new("get_neighbor_cell")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 986575103)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    i64_neighbor := i64(neighbor)
    args[1] = unsafe{voidptr(&i64_neighbor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
