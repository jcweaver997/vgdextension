module vgdextension

@[noinit]
pub struct SpringArm3D {
    Node3D
}

pub fn (r &SpringArm3D) get_hit_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("get_hit_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SpringArm3D) set_length(length f64) {
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("set_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpringArm3D) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("get_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SpringArm3D) set_shape(shape Shape3D) {
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549710052)
    mut args := unsafe { [1]voidptr{} }
    args[0] = shape.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpringArm3D) get_shape() Shape3D {
    mut object_out := Shape3D{}
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214262478)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SpringArm3D) add_excluded_object(rid RID) {
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("add_excluded_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpringArm3D) remove_excluded_object(rid RID) bool {
    mut object_out := false
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("remove_excluded_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3521089500)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SpringArm3D) clear_excluded_objects() {
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("clear_excluded_objects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpringArm3D) set_collision_mask(mask u32) {
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpringArm3D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SpringArm3D) set_margin(margin f64) {
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("set_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SpringArm3D) get_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SpringArm3D")
    fnname := StringName.new("get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
