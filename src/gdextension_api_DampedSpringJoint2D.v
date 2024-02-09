module vgdextension

pub struct DampedSpringJoint2D {
    Joint2D
}

pub fn (mut r DampedSpringJoint2D) set_length(length f64) {
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DampedSpringJoint2D) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DampedSpringJoint2D) set_rest_length(rest_length f64) {
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rest_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rest_length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DampedSpringJoint2D) get_rest_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rest_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DampedSpringJoint2D) set_stiffness(stiffness f64) {
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stiffness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DampedSpringJoint2D) get_stiffness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DampedSpringJoint2D) set_damping(damping f64) {
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&damping)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DampedSpringJoint2D) get_damping() f64 {
    mut object_out := f64(0)
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
