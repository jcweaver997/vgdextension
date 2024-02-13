module vgdextension

@[noinit]
pub struct TileSetSource {
    Resource
}

pub fn (r &TileSetSource) get_tiles_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetSource")
    defer { classname.deinit() }
    fnname := StringName.new("get_tiles_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TileSetSource) get_tile_id(index i32) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileSetSource")
    defer { classname.deinit() }
    fnname := StringName.new("get_tile_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 880721226)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSetSource) has_tile(atlas_coords Vector2i) bool {
    mut object_out := false
    classname := StringName.new("TileSetSource")
    defer { classname.deinit() }
    fnname := StringName.new("has_tile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSetSource) get_alternative_tiles_count(atlas_coords Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetSource")
    defer { classname.deinit() }
    fnname := StringName.new("get_alternative_tiles_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSetSource) get_alternative_tile_id(atlas_coords Vector2i, index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetSource")
    defer { classname.deinit() }
    fnname := StringName.new("get_alternative_tile_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 89881719)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileSetSource) has_alternative_tile(atlas_coords Vector2i, alternative_tile i32) bool {
    mut object_out := false
    classname := StringName.new("TileSetSource")
    defer { classname.deinit() }
    fnname := StringName.new("has_alternative_tile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1073731340)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&atlas_coords)}
    args[1] = unsafe{voidptr(&alternative_tile)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
