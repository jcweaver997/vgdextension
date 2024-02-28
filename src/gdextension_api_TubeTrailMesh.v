module vgdextension

@[noinit]
pub struct TubeTrailMesh {
    PrimitiveMesh
}

pub fn (r &TubeTrailMesh) set_radius(radius f64) {
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TubeTrailMesh) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("get_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TubeTrailMesh) set_radial_steps(radial_steps i32) {
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("set_radial_steps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radial_steps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TubeTrailMesh) get_radial_steps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("get_radial_steps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TubeTrailMesh) set_sections(sections i32) {
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("set_sections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sections)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TubeTrailMesh) get_sections() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("get_sections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TubeTrailMesh) set_section_length(section_length f64) {
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("set_section_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&section_length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TubeTrailMesh) get_section_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("get_section_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TubeTrailMesh) set_section_rings(section_rings i32) {
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("set_section_rings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&section_rings)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TubeTrailMesh) get_section_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("get_section_rings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TubeTrailMesh) set_cap_top(cap_top bool) {
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("set_cap_top")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cap_top)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TubeTrailMesh) is_cap_top() bool {
    mut object_out := false
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("is_cap_top")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TubeTrailMesh) set_cap_bottom(cap_bottom bool) {
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("set_cap_bottom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cap_bottom)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TubeTrailMesh) is_cap_bottom() bool {
    mut object_out := false
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("is_cap_bottom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TubeTrailMesh) set_curve(curve Curve) {
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("set_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TubeTrailMesh) get_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("TubeTrailMesh")
    fnname := StringName.new("get_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
