module vgdextension

@[noinit]
pub struct Node2D {
    CanvasItem
}

pub fn (mut r Node2D) set_position(position Vector2) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) set_rotation(radians f64) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) set_rotation_degrees(degrees f64) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_rotation_degrees")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) set_skew(radians f64) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_skew")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) set_scale(scale Vector2) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node2D) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node2D) get_rotation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node2D) get_rotation_degrees() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_rotation_degrees")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node2D) get_skew() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_skew")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node2D) get_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node2D) rotate(radians f64) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("rotate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) move_local_x(delta f64, scaled bool) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("move_local_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2087892650)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    args[1] = unsafe{voidptr(&scaled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) move_local_y(delta f64, scaled bool) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("move_local_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2087892650)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    args[1] = unsafe{voidptr(&scaled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) translate(offset Vector2) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("translate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) global_translate(offset Vector2) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("global_translate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) apply_scale(ratio Vector2) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("apply_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) set_global_position(position Vector2) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_global_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node2D) get_global_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_global_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node2D) set_global_rotation(radians f64) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_global_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) set_global_rotation_degrees(degrees f64) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_global_rotation_degrees")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node2D) get_global_rotation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_global_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node2D) get_global_rotation_degrees() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_global_rotation_degrees")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node2D) set_global_skew(radians f64) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_global_skew")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node2D) get_global_skew() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_global_skew")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node2D) set_global_scale(scale Vector2) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_global_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node2D) get_global_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_global_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Node2D) set_transform(xform Transform2D) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) set_global_transform(xform Transform2D) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("set_global_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Node2D) look_at(point Vector2) {
    classname := StringName.new("Node2D")
    fnname := StringName.new("look_at")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Node2D) get_angle_to(point Vector2) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_angle_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276447920)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node2D) to_local(global_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    fnname := StringName.new("to_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&global_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node2D) to_global(local_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    fnname := StringName.new("to_global")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Node2D) get_relative_transform_to_parent(parent Node) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Node2D")
    fnname := StringName.new("get_relative_transform_to_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 904556875)
    mut args := unsafe { [1]voidptr{} }
    args[0] = parent.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
