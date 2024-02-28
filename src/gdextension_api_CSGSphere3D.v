module vgdextension

@[noinit]
pub struct CSGSphere3D {
    CSGPrimitive3D
}

pub fn (r &CSGSphere3D) set_radius(radius f64) {
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGSphere3D) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("get_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGSphere3D) set_radial_segments(radial_segments i32) {
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("set_radial_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radial_segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGSphere3D) get_radial_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("get_radial_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGSphere3D) set_rings(rings i32) {
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("set_rings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rings)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGSphere3D) get_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("get_rings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGSphere3D) set_smooth_faces(smooth_faces bool) {
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("set_smooth_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&smooth_faces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGSphere3D) get_smooth_faces() bool {
    mut object_out := false
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("get_smooth_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGSphere3D) set_material(material Material) {
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&material.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGSphere3D) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("CSGSphere3D")
    fnname := StringName.new("get_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
