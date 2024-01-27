module vgdextension

pub type DampedSpringJoint2D = voidptr

pub fn (mut r DampedSpringJoint2D) set_length(length f32) {
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &DampedSpringJoint2D) get_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DampedSpringJoint2D) set_rest_length(rest_length f32) {
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rest_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &DampedSpringJoint2D) get_rest_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rest_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DampedSpringJoint2D) set_stiffness(stiffness f32) {
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &DampedSpringJoint2D) get_stiffness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DampedSpringJoint2D) set_damping(damping f32) {
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &DampedSpringJoint2D) get_damping() f32 {
    mut object_out := f32(0)
    classname := StringName.new("DampedSpringJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
