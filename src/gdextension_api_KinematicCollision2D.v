module vgdextension

@[noinit]
pub struct KinematicCollision2D {
    RefCounted
}

pub fn (r &KinematicCollision2D) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_normal() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_travel() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_travel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_remainder() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_remainder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_angle(up_direction Vector2) f64 {
    mut object_out := f64(0)
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841063350)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&up_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_depth() f64 {
    mut object_out := f64(0)
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_local_shape() Object {
    mut object_out := Object{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_local_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider() Object {
    mut object_out := Object{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_collider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_id() u64 {
    mut object_out := u64(0)
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_collider_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_collider_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_shape() Object {
    mut object_out := Object{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_collider_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1981248198)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_shape_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_collider_shape_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &KinematicCollision2D) get_collider_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("KinematicCollision2D")
    fnname := StringName.new("get_collider_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
