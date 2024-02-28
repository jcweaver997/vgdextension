module vgdextension

@[noinit]
pub struct CollisionShape2D {
    Node2D
}

pub fn (r &CollisionShape2D) set_shape(shape Shape2D) {
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 771364740)
    mut args := unsafe { [1]voidptr{} }
    args[0] = shape.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionShape2D) get_shape() Shape2D {
    mut object_out := Shape2D{}
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 522005891)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionShape2D) set_disabled(disabled bool) {
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("set_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionShape2D) is_disabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("is_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionShape2D) set_one_way_collision(enabled bool) {
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("set_one_way_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionShape2D) is_one_way_collision_enabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("is_one_way_collision_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionShape2D) set_one_way_collision_margin(margin f64) {
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("set_one_way_collision_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionShape2D) get_one_way_collision_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("get_one_way_collision_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionShape2D) set_debug_color(color Color) {
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("set_debug_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionShape2D) get_debug_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CollisionShape2D")
    fnname := StringName.new("get_debug_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
