module vgdextension

pub struct OccluderInstance3D {
    Node3D
}

pub fn (mut r OccluderInstance3D) set_bake_mask(mask u32) {
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OccluderInstance3D) get_bake_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OccluderInstance3D) set_bake_mask_value(layer_number i32, value bool) {
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
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
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OccluderInstance3D) set_bake_simplification_distance(simplification_distance f64) {
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_simplification_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&simplification_distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OccluderInstance3D) get_bake_simplification_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_simplification_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OccluderInstance3D) set_occluder(occluder Occluder3D) {
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_occluder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1664878165)
    mut args := unsafe { [1]voidptr{} }
    args[0] = occluder.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OccluderInstance3D) get_occluder() Occluder3D {
    mut object_out := Occluder3D{}
    classname := StringName.new("OccluderInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_occluder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1696836198)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
