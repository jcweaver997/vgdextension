module vgdextension

@[noinit]
pub struct InputEventMouseMotion {
    InputEventMouse
}

pub fn (r &InputEventMouseMotion) set_tilt(tilt Vector2) {
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("set_tilt")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tilt)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseMotion) get_tilt() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("get_tilt")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventMouseMotion) set_pressure(pressure f64) {
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("set_pressure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressure)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseMotion) get_pressure() f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("get_pressure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventMouseMotion) set_pen_inverted(pen_inverted bool) {
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("set_pen_inverted")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pen_inverted)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseMotion) get_pen_inverted() bool {
    mut object_out := false
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("get_pen_inverted")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventMouseMotion) set_relative(relative Vector2) {
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("set_relative")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&relative)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseMotion) get_relative() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("get_relative")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventMouseMotion) set_velocity(velocity Vector2) {
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("set_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMouseMotion) get_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventMouseMotion")
    fnname := StringName.new("get_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
