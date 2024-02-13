module vgdextension

@[noinit]
pub struct CSGTorus3D {
    CSGPrimitive3D
}

pub fn (mut r CSGTorus3D) set_inner_radius(radius f64) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CSGTorus3D) get_inner_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_outer_radius(radius f64) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_outer_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CSGTorus3D) get_outer_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_outer_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_sides(sides i32) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sides)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CSGTorus3D) get_sides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_ring_sides(sides i32) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_ring_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sides)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CSGTorus3D) get_ring_sides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_ring_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_material(material Material) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CSGTorus3D) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_smooth_faces(smooth_faces bool) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_smooth_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&smooth_faces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CSGTorus3D) get_smooth_faces() bool {
    mut object_out := false
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_smooth_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
