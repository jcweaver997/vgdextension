module vgdextension

pub enum CollisionPolygon2DBuildMode {
    build_solids = 0
    build_segments = 1
}

pub type CollisionPolygon2D = voidptr

pub fn (mut r CollisionPolygon2D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionPolygon2D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionPolygon2D) set_build_mode(build_mode CollisionPolygon2DBuildMode) {
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_build_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2780803135)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionPolygon2D) get_build_mode() CollisionPolygon2DBuildMode {
    mut object_out := CollisionPolygon2DBuildMode.build_solids
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_build_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3044948800)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionPolygon2D) set_disabled(disabled bool) {
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionPolygon2D) is_disabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionPolygon2D) set_one_way_collision(enabled bool) {
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_way_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionPolygon2D) is_one_way_collision_enabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_one_way_collision_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionPolygon2D) set_one_way_collision_margin(margin f32) {
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_way_collision_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionPolygon2D) get_one_way_collision_margin() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CollisionPolygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_one_way_collision_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
