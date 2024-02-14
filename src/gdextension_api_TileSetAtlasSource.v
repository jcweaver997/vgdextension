module vgdextension

pub enum TileSetAtlasSourceTileAnimationMode as i64 {
    tile_animation_mode_default = 0
    tile_animation_mode_random_start_times = 1
    tile_animation_mode_max = 2
}

@[noinit]
pub struct TileSetAtlasSource {
    TileSetSource
}

pub fn (mut r TileSetAtlasSource) set_texture(texture Texture2D) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) set_margins(margins Vector2i) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_margins")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margins)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_margins() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_margins")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) set_separation(separation Vector2i) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_separation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&separation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_separation() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_separation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) set_texture_region_size(texture_region_size Vector2i) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_texture_region_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_region_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_texture_region_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_texture_region_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) set_use_texture_padding(use_texture_padding bool) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_use_texture_padding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_texture_padding)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_use_texture_padding() bool {
    mut object_out := false
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_use_texture_padding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) create_tile(atlas_coords Vector2i, size Vector2i) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("create_tile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 190528769)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileSetAtlasSource) remove_tile(atlas_coords Vector2i) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("remove_tile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileSetAtlasSource) move_tile_in_atlas(atlas_coords Vector2i, new_atlas_coords Vector2i, new_size Vector2i) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("move_tile_in_atlas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3870111920)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&new_atlas_coords)}
    args[2] = unsafe{voidptr(&new_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_tile_size_in_atlas(atlas_coords Vector2i) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_size_in_atlas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050897911)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) has_room_for_tile(atlas_coords Vector2i, size Vector2i, animation_columns i32, animation_separation Vector2i, frames_count i32, ignored_tile Vector2i) bool {
    mut object_out := false
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("has_room_for_tile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3018597268)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&animation_columns)}
    args[3] = unsafe{voidptr(&animation_separation)}
    args[4] = unsafe{voidptr(&frames_count)}
    args[5] = unsafe{voidptr(&ignored_tile)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) get_tiles_to_be_removed_on_change(texture Texture2D, margins Vector2i, separation Vector2i, texture_region_size Vector2i) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tiles_to_be_removed_on_change")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1240378054)
    mut args := unsafe { [4]voidptr{} }
    args[0] = texture.ptr
    args[1] = unsafe{voidptr(&margins)}
    args[2] = unsafe{voidptr(&separation)}
    args[3] = unsafe{voidptr(&texture_region_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) get_tile_at_coords(atlas_coords Vector2i) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_at_coords")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050897911)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) has_tiles_outside_texture() bool {
    mut object_out := false
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("has_tiles_outside_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) clear_tiles_outside_texture() {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("clear_tiles_outside_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileSetAtlasSource) set_tile_animation_columns(atlas_coords Vector2i, frame_columns i32) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_tile_animation_columns")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200960707)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&frame_columns)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_tile_animation_columns(atlas_coords Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_animation_columns")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) set_tile_animation_separation(atlas_coords Vector2i, separation Vector2i) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_tile_animation_separation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1941061099)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&separation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_tile_animation_separation(atlas_coords Vector2i) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_animation_separation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050897911)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) set_tile_animation_speed(atlas_coords Vector2i, speed f64) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_tile_animation_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2262553149)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&speed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_tile_animation_speed(atlas_coords Vector2i) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_animation_speed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 719993801)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) set_tile_animation_mode(atlas_coords Vector2i, mode TileSetAtlasSourceTileAnimationMode) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_tile_animation_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3192753483)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_tile_animation_mode(atlas_coords Vector2i) TileSetAtlasSourceTileAnimationMode {
    mut object_out := i64(TileSetAtlasSourceTileAnimationMode.tile_animation_mode_default)
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_animation_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4025349959)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TileSetAtlasSourceTileAnimationMode(object_out)}
}
pub fn (mut r TileSetAtlasSource) set_tile_animation_frames_count(atlas_coords Vector2i, frames_count i32) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_tile_animation_frames_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200960707)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&frames_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_tile_animation_frames_count(atlas_coords Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_animation_frames_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) set_tile_animation_frame_duration(atlas_coords Vector2i, frame_index i32, duration f64) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_tile_animation_frame_duration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2843487787)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&frame_index)}
    args[2] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_tile_animation_frame_duration(atlas_coords Vector2i, frame_index i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_animation_frame_duration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1802448425)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&frame_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) get_tile_animation_total_duration(atlas_coords Vector2i) f64 {
    mut object_out := f64(0)
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_animation_total_duration")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 719993801)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) create_alternative_tile(atlas_coords Vector2i, alternative_id_override i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("create_alternative_tile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2226298068)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&alternative_id_override)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TileSetAtlasSource) remove_alternative_tile(atlas_coords Vector2i, alternative_tile i32) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("remove_alternative_tile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200960707)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&alternative_tile)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TileSetAtlasSource) set_alternative_tile_id(atlas_coords Vector2i, alternative_tile i32, new_id i32) {
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("set_alternative_tile_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1499785778)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&alternative_tile)}
    args[2] = unsafe{voidptr(&new_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetAtlasSource) get_next_alternative_tile_id(atlas_coords Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_next_alternative_tile_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) get_tile_data(atlas_coords Vector2i, alternative_tile i32) TileData {
    mut object_out := TileData{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3534028207)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&alternative_tile)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) get_atlas_grid_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_atlas_grid_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) get_tile_texture_region(atlas_coords Vector2i, frame i32) Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_tile_texture_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 241857547)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) get_runtime_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_runtime_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetAtlasSource) get_runtime_tile_texture_region(atlas_coords Vector2i, frame i32) Rect2i {
    mut object_out := Rect2i{}
    classname := StringName.new("TileSetAtlasSource")
    fnname := StringName.new("get_runtime_tile_texture_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 104874263)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&frame)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
