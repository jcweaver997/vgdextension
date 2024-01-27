module vgdextension

pub enum CollisionObject3DDisableMode {
    disable_mode_remove = 0
    disable_mode_make_static = 1
    disable_mode_keep_active = 2
}

pub type CollisionObject3D = voidptr

pub fn (mut r CollisionObject3D) uinput_event(camera Camera3D, event InputEvent, position Vector3, normal Vector3, shape_idx i32) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("_input_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject3D) umouse_enter() {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("_mouse_enter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject3D) umouse_exit() {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("_mouse_exit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject3D) set_collision_layer(layer i32) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) get_collision_layer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) set_collision_mask(mask i32) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) get_collision_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) set_collision_priority(priority f32) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) get_collision_priority() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) set_disable_mode(mode CollisionObject3DDisableMode) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1623620376)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) get_disable_mode() CollisionObject3DDisableMode {
    mut object_out := CollisionObject3DDisableMode.disable_mode_remove
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_disable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410164780)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) set_ray_pickable(ray_pickable bool) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) is_ray_pickable() bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) set_capture_input_on_drag(enable bool) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_capture_input_on_drag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) get_capture_input_on_drag() bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_capture_input_on_drag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CollisionObject3D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) create_shape_owner(owner Object) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("create_shape_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429307534)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) remove_shape_owner(owner_id i32) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_shape_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject3D) get_shape_owners() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape_owners")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) shape_owner_set_transform(owner_id i32, transform Transform3D) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) shape_owner_get_transform(owner_id i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CollisionObject3D) shape_owner_get_owner(owner_id i32) Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) shape_owner_set_disabled(owner_id i32, disabled bool) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_set_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) is_shape_owner_disabled(owner_id i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_shape_owner_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) shape_owner_add_shape(owner_id i32, shape Shape3D) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2566676345)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) shape_owner_get_shape_count(owner_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CollisionObject3D) shape_owner_get_shape(owner_id i32, shape_id i32) Shape3D {
    mut object_out := Shape3D(unsafe{nil})
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015519174)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&shape_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CollisionObject3D) shape_owner_get_shape_index(owner_id i32, shape_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_shape_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&shape_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject3D) shape_owner_remove_shape(owner_id i32, shape_id i32) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject3D) shape_owner_clear_shapes(owner_id i32) {
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject3D) shape_find_owner(shape_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject3D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_find_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
