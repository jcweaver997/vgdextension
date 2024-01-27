module vgdextension

pub type TubeTrailMesh = voidptr

pub fn (mut r TubeTrailMesh) set_radius(radius f32) {
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TubeTrailMesh) get_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TubeTrailMesh) set_radial_steps(radial_steps i32) {
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_radial_steps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TubeTrailMesh) get_radial_steps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_radial_steps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TubeTrailMesh) set_sections(sections i32) {
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_sections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TubeTrailMesh) get_sections() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_sections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TubeTrailMesh) set_section_length(section_length f32) {
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_section_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TubeTrailMesh) get_section_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_section_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TubeTrailMesh) set_section_rings(section_rings i32) {
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_section_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TubeTrailMesh) get_section_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_section_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TubeTrailMesh) set_cap_top(cap_top bool) {
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_cap_top")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TubeTrailMesh) is_cap_top() bool {
    mut object_out := false
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("is_cap_top")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TubeTrailMesh) set_cap_bottom(cap_bottom bool) {
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_cap_bottom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TubeTrailMesh) is_cap_bottom() bool {
    mut object_out := false
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("is_cap_bottom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TubeTrailMesh) set_curve(curve Curve) {
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TubeTrailMesh) get_curve() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("TubeTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
