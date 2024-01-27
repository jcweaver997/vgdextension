pub type CylinderMesh = voidptr

pub fn (mut r CylinderMesh) set_top_radius(radius f32) {
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_top_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CylinderMesh) get_top_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_top_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CylinderMesh) set_bottom_radius(radius f32) {
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_bottom_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CylinderMesh) get_bottom_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_bottom_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CylinderMesh) set_height(height f32) {
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CylinderMesh) get_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CylinderMesh) set_radial_segments(segments i32) {
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_radial_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CylinderMesh) get_radial_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_radial_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CylinderMesh) set_rings(rings i32) {
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CylinderMesh) get_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CylinderMesh) set_cap_top(cap_top bool) {
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_cap_top")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CylinderMesh) is_cap_top() bool {
    mut object_out := false
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("is_cap_top")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CylinderMesh) set_cap_bottom(cap_bottom bool) {
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_cap_bottom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CylinderMesh) is_cap_bottom() bool {
    mut object_out := false
    classname := StringName.new("CylinderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("is_cap_bottom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
