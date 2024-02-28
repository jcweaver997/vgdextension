module vgdextension

@[noinit]
pub struct CylinderMesh {
    PrimitiveMesh
}

pub fn (r &CylinderMesh) set_top_radius(radius f64) {
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("set_top_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CylinderMesh) get_top_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("get_top_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CylinderMesh) set_bottom_radius(radius f64) {
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("set_bottom_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CylinderMesh) get_bottom_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("get_bottom_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CylinderMesh) set_height(height f64) {
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CylinderMesh) get_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CylinderMesh) set_radial_segments(segments i32) {
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("set_radial_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CylinderMesh) get_radial_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("get_radial_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CylinderMesh) set_rings(rings i32) {
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("set_rings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rings)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CylinderMesh) get_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("get_rings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CylinderMesh) set_cap_top(cap_top bool) {
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("set_cap_top")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cap_top)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CylinderMesh) is_cap_top() bool {
    mut object_out := false
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("is_cap_top")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CylinderMesh) set_cap_bottom(cap_bottom bool) {
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("set_cap_bottom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cap_bottom)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CylinderMesh) is_cap_bottom() bool {
    mut object_out := false
    classname := StringName.new("CylinderMesh")
    fnname := StringName.new("is_cap_bottom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
