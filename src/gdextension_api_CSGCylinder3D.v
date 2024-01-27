pub type CSGCylinder3D = voidptr

pub fn (mut r CSGCylinder3D) set_radius(radius f32) {
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGCylinder3D) get_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGCylinder3D) set_height(height f32) {
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGCylinder3D) get_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGCylinder3D) set_sides(sides i32) {
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGCylinder3D) get_sides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGCylinder3D) set_cone(cone bool) {
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_cone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGCylinder3D) is_cone() bool {
    mut object_out := false
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_cone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGCylinder3D) set_material(material Material) {
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGCylinder3D) get_material() Material {
    mut object_out := Material(unsafe{nil})
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGCylinder3D) set_smooth_faces(smooth_faces bool) {
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_smooth_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGCylinder3D) get_smooth_faces() bool {
    mut object_out := false
    classname := StringName.new("CSGCylinder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_smooth_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
