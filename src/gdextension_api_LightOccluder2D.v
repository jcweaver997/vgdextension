pub type LightOccluder2D = voidptr

pub fn (mut r LightOccluder2D) set_occluder_polygon(polygon OccluderPolygon2D) {
    classname := StringName.new("LightOccluder2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_occluder_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3258315893)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightOccluder2D) get_occluder_polygon() OccluderPolygon2D {
    mut object_out := OccluderPolygon2D(unsafe{nil})
    classname := StringName.new("LightOccluder2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_occluder_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3962317075)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightOccluder2D) set_occluder_light_mask(mask i32) {
    classname := StringName.new("LightOccluder2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_occluder_light_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightOccluder2D) get_occluder_light_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LightOccluder2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_occluder_light_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightOccluder2D) set_as_sdf_collision(enable bool) {
    classname := StringName.new("LightOccluder2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_sdf_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &LightOccluder2D) is_set_as_sdf_collision() bool {
    mut object_out := false
    classname := StringName.new("LightOccluder2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_set_as_sdf_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
