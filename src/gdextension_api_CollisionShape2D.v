pub type CollisionShape2D = voidptr

pub fn (mut r CollisionShape2D) set_shape(shape Shape2D) {
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 771364740)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionShape2D) get_shape() Shape2D {
    mut object_out := Shape2D(unsafe{nil})
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 522005891)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionShape2D) set_disabled(disabled bool) {
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionShape2D) is_disabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionShape2D) set_one_way_collision(enabled bool) {
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_way_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionShape2D) is_one_way_collision_enabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_one_way_collision_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionShape2D) set_one_way_collision_margin(margin f32) {
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_way_collision_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionShape2D) get_one_way_collision_margin() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_one_way_collision_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionShape2D) set_debug_color(color Color) {
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_debug_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionShape2D) get_debug_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CollisionShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
