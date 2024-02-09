module vgdextension

pub struct GrooveJoint2D {
    Joint2D
}

pub fn (mut r GrooveJoint2D) set_length(length f64) {
    classname := StringName.new("GrooveJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GrooveJoint2D) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GrooveJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GrooveJoint2D) set_initial_offset(offset f64) {
    classname := StringName.new("GrooveJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_initial_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GrooveJoint2D) get_initial_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GrooveJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_initial_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
