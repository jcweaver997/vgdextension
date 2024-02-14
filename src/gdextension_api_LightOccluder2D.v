module vgdextension

@[noinit]
pub struct LightOccluder2D {
    Node2D
}

pub fn (mut r LightOccluder2D) set_occluder_polygon(polygon OccluderPolygon2D) {
    classname := StringName.new("LightOccluder2D")
    fnname := StringName.new("set_occluder_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3258315893)
    mut args := unsafe { [1]voidptr{} }
    args[0] = polygon.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightOccluder2D) get_occluder_polygon() OccluderPolygon2D {
    mut object_out := OccluderPolygon2D{}
    classname := StringName.new("LightOccluder2D")
    fnname := StringName.new("get_occluder_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3962317075)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r LightOccluder2D) set_occluder_light_mask(mask i32) {
    classname := StringName.new("LightOccluder2D")
    fnname := StringName.new("set_occluder_light_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightOccluder2D) get_occluder_light_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LightOccluder2D")
    fnname := StringName.new("get_occluder_light_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r LightOccluder2D) set_as_sdf_collision(enable bool) {
    classname := StringName.new("LightOccluder2D")
    fnname := StringName.new("set_as_sdf_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &LightOccluder2D) is_set_as_sdf_collision() bool {
    mut object_out := false
    classname := StringName.new("LightOccluder2D")
    fnname := StringName.new("is_set_as_sdf_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
