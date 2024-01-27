module vgdextension

pub type Marker3D = voidptr

pub fn (mut r Marker3D) set_gizmo_extents(extents f32) {
    classname := StringName.new("Marker3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gizmo_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Marker3D) get_gizmo_extents() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Marker3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gizmo_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
