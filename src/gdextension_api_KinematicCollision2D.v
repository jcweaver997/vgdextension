pub type KinematicCollision2D = voidptr

pub fn (r &KinematicCollision2D) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_normal() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_travel() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_travel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_remainder() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_remainder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_angle(up_direction Vector2) f32 {
    mut object_out := f32(0)
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841063350)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&up_direction)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_depth() f32 {
    mut object_out := f32(0)
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_local_shape() Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider() Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_shape() Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_shape_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_shape_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collider_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
