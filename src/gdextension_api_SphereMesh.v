module vgdextension

pub struct SphereMesh {
    PrimitiveMesh
}

pub fn (mut r SphereMesh) set_radius(radius f64) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SphereMesh) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SphereMesh) set_height(height f64) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SphereMesh) get_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SphereMesh) set_radial_segments(radial_segments i32) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_radial_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radial_segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SphereMesh) get_radial_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_radial_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SphereMesh) set_rings(rings i32) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rings)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SphereMesh) get_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SphereMesh) set_is_hemisphere(is_hemisphere bool) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_is_hemisphere")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&is_hemisphere)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SphereMesh) get_is_hemisphere() bool {
    mut object_out := false
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_is_hemisphere")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
