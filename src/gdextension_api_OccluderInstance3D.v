pub type OccluderInstance3D = voidptr

pub fn (mut r OccluderInstance3D) set_bake_mask(mask i32) {
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OccluderInstance3D) get_bake_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OccluderInstance3D) set_bake_mask_value(layer_number i32, value bool) {
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OccluderInstance3D) get_bake_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OccluderInstance3D) set_bake_simplification_distance(simplification_distance f32) {
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_simplification_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OccluderInstance3D) get_bake_simplification_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_simplification_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OccluderInstance3D) set_occluder(occluder Occluder3D) {
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_occluder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1664878165)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OccluderInstance3D) get_occluder() Occluder3D {
    mut object_out := Occluder3D(unsafe{nil})
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_occluder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1696836198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
