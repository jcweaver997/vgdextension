module vgdextension

@[noinit]
pub struct TileSetScenesCollectionSource {
    TileSetSource
}

pub fn (r &TileSetScenesCollectionSource) get_scene_tiles_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("get_scene_tiles_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetScenesCollectionSource) get_scene_tile_id(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("get_scene_tile_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetScenesCollectionSource) has_scene_tile_id(id i32) bool {
    mut object_out := false
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("has_scene_tile_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3067735520)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetScenesCollectionSource) create_scene_tile(packed_scene PackedScene, id_override i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("create_scene_tile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1117465415)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&packed_scene.ptr)
    args[1] = unsafe{voidptr(&id_override)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetScenesCollectionSource) set_scene_tile_id(id i32, new_id i32) {
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("set_scene_tile_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&new_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetScenesCollectionSource) set_scene_tile_scene(id i32, packed_scene PackedScene) {
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("set_scene_tile_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3435852839)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = voidptr(&packed_scene.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetScenesCollectionSource) get_scene_tile_scene(id i32) PackedScene {
    mut object_out := PackedScene{}
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("get_scene_tile_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 511017218)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetScenesCollectionSource) set_scene_tile_display_placeholder(id i32, display_placeholder bool) {
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("set_scene_tile_display_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&display_placeholder)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetScenesCollectionSource) get_scene_tile_display_placeholder(id i32) bool {
    mut object_out := false
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("get_scene_tile_display_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TileSetScenesCollectionSource) remove_scene_tile(id i32) {
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("remove_scene_tile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TileSetScenesCollectionSource) get_next_scene_tile_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileSetScenesCollectionSource")
    fnname := StringName.new("get_next_scene_tile_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
