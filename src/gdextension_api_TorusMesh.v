module vgdextension

pub struct TorusMesh {
    PrimitiveMesh
}

pub fn (mut r TorusMesh) set_inner_radius(radius f64) {
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TorusMesh) get_inner_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TorusMesh) set_outer_radius(radius f64) {
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_outer_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TorusMesh) get_outer_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_outer_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TorusMesh) set_rings(rings i32) {
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rings)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TorusMesh) get_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TorusMesh) set_ring_segments(rings i32) {
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_ring_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rings)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TorusMesh) get_ring_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_ring_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
