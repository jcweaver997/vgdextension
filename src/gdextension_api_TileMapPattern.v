module vgdextension

pub type TileMapPattern = voidptr

pub fn (mut r TileMapPattern) set_cell(coords Vector2i, source_id i32, atlas_coords Vector2i, alternative_tile i32) {
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("set_cell")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 634000503)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileMapPattern) has_cell(coords Vector2i) bool {
    mut object_out := false
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("has_cell")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TileMapPattern) remove_cell(coords Vector2i, update_size bool) {
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("remove_cell")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4153096796)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileMapPattern) get_cell_source_id(coords Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_source_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileMapPattern) get_cell_atlas_coords(coords Vector2i) Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_atlas_coords")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3050897911)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileMapPattern) get_cell_alternative_tile(coords Vector2i) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_alternative_tile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2485466453)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&coords)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TileMapPattern) get_used_cells() Array {
    mut object_out := Array{}
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("get_used_cells")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TileMapPattern) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TileMapPattern) set_size(size Vector2i) {
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TileMapPattern) is_empty() bool {
    mut object_out := false
    classname := StringName.new("TileMapPattern")
    defer { classname.deinit() }
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
