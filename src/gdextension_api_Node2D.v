module vgdextension

pub type Node2D = voidptr

pub fn (mut r Node2D) set_position(position Vector2) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) set_rotation(radians f32) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) set_rotation_degrees(degrees f32) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) set_skew(radians f32) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_skew")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) set_scale(scale Vector2) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node2D) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node2D) get_rotation() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node2D) get_rotation_degrees() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node2D) get_skew() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skew")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node2D) get_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node2D) rotate(radians f32) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("rotate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) move_local_x(delta f32, scaled bool) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("move_local_x")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2087892650)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) move_local_y(delta f32, scaled bool) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("move_local_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2087892650)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) translate(offset Vector2) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("translate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) global_translate(offset Vector2) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("global_translate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) apply_scale(ratio Vector2) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) set_global_position(position Vector2) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node2D) get_global_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node2D) set_global_rotation(radians f32) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) set_global_rotation_degrees(degrees f32) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node2D) get_global_rotation() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Node2D) get_global_rotation_degrees() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_rotation_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node2D) set_global_skew(radians f32) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_skew")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node2D) get_global_skew() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_skew")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node2D) set_global_scale(scale Vector2) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node2D) get_global_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Node2D) set_transform(xform Transform2D) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) set_global_transform(xform Transform2D) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_global_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Node2D) look_at(point Vector2) {
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("look_at")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Node2D) get_angle_to(point Vector2) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angle_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276447920)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node2D) to_local(global_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("to_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&global_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node2D) to_global(local_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("to_global")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Node2D) get_relative_transform_to_parent(parent Node) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Node2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_relative_transform_to_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 904556875)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parent)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
