pub type CSGTorus3D = voidptr

pub fn (mut r CSGTorus3D) set_inner_radius(radius f32) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGTorus3D) get_inner_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_outer_radius(radius f32) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_outer_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGTorus3D) get_outer_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_outer_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_sides(sides i32) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGTorus3D) get_sides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_ring_sides(sides i32) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_ring_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGTorus3D) get_ring_sides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_ring_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_material(material Material) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGTorus3D) get_material() Material {
    mut object_out := Material(unsafe{nil})
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGTorus3D) set_smooth_faces(smooth_faces bool) {
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_smooth_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGTorus3D) get_smooth_faces() bool {
    mut object_out := false
    classname := StringName.new("CSGTorus3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_smooth_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
