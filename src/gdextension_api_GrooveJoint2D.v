pub type GrooveJoint2D = voidptr

pub fn (mut r GrooveJoint2D) set_length(length f32) {
    classname := StringName.new("GrooveJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GrooveJoint2D) get_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GrooveJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GrooveJoint2D) set_initial_offset(offset f32) {
    classname := StringName.new("GrooveJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_initial_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GrooveJoint2D) get_initial_offset() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GrooveJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_initial_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
