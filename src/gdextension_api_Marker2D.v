module vgdextension

pub struct Marker2D {
    Node2D
}

pub fn (mut r Marker2D) set_gizmo_extents(extents f64) {
    classname := StringName.new("Marker2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gizmo_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&extents)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Marker2D) get_gizmo_extents() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Marker2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gizmo_extents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
