module vgdextension

@[noinit]
pub struct GrooveJoint2D {
    Joint2D
}

pub fn (r &GrooveJoint2D) set_length(length f64) {
    classname := StringName.new("GrooveJoint2D")
    fnname := StringName.new("set_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GrooveJoint2D) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GrooveJoint2D")
    fnname := StringName.new("get_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GrooveJoint2D) set_initial_offset(offset f64) {
    classname := StringName.new("GrooveJoint2D")
    fnname := StringName.new("set_initial_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GrooveJoint2D) get_initial_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GrooveJoint2D")
    fnname := StringName.new("get_initial_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
