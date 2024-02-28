module vgdextension

pub enum CollisionPolygon2DBuildMode as i64 {
    build_solids = 0
    build_segments = 1
}

@[noinit]
pub struct CollisionPolygon2D {
    Node2D
}

pub fn (r &CollisionPolygon2D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("set_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon2D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("get_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionPolygon2D) set_build_mode(build_mode CollisionPolygon2DBuildMode) {
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("set_build_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2780803135)
    mut args := unsafe { [1]voidptr{} }
    i64_build_mode := i64(build_mode)
    args[0] = unsafe{voidptr(&i64_build_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon2D) get_build_mode() CollisionPolygon2DBuildMode {
    mut object_out := i64(CollisionPolygon2DBuildMode.build_solids)
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("get_build_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3044948800)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CollisionPolygon2DBuildMode(object_out)}
}
pub fn (r &CollisionPolygon2D) set_disabled(disabled bool) {
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("set_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon2D) is_disabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("is_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionPolygon2D) set_one_way_collision(enabled bool) {
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("set_one_way_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon2D) is_one_way_collision_enabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("is_one_way_collision_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionPolygon2D) set_one_way_collision_margin(margin f64) {
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("set_one_way_collision_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionPolygon2D) get_one_way_collision_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CollisionPolygon2D")
    fnname := StringName.new("get_one_way_collision_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
