module vgdextension

pub enum CollisionObject3DDisableMode as i64 {
    disable_mode_remove = 0
    disable_mode_make_static = 1
    disable_mode_keep_active = 2
}

@[noinit]
pub struct CollisionObject3D {
    Node3D
}

pub interface ICollisionObject3DInputEvent {
    mut:
    virt_input_event(camera Camera3D, event InputEvent, position Vector3, normal Vector3, shape_idx i32)
}

pub fn (mut r CollisionObject3D) uinput_event(camera Camera3D, event InputEvent, position Vector3, normal Vector3, shape_idx i32) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("_input_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = camera.ptr
    args[1] = event.ptr
    args[2] = unsafe{voidptr(&position)}
    args[3] = unsafe{voidptr(&normal)}
    args[4] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ICollisionObject3DMouseEnter {
    mut:
    virt_mouse_enter()
}

pub fn (mut r CollisionObject3D) umouse_enter() {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("_mouse_enter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ICollisionObject3DMouseExit {
    mut:
    virt_mouse_exit()
}

pub fn (mut r CollisionObject3D) umouse_exit() {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("_mouse_exit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CollisionObject3D) set_collision_layer(layer u32) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) get_collision_layer() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) set_collision_mask(mask u32) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("set_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("set_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) set_collision_priority(priority f64) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("set_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) get_collision_priority() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) set_disable_mode(mode CollisionObject3DDisableMode) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("set_disable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1623620376)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) get_disable_mode() CollisionObject3DDisableMode {
    mut object_out := i64(CollisionObject3DDisableMode.disable_mode_remove)
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_disable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410164780)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CollisionObject3DDisableMode(object_out)}
}
pub fn (mut r CollisionObject3D) set_ray_pickable(ray_pickable bool) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("set_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ray_pickable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) is_ray_pickable() bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("is_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) set_capture_input_on_drag(enable bool) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("set_capture_input_on_drag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) get_capture_input_on_drag() bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_capture_input_on_drag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject3D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) create_shape_owner(owner Object) u32 {
    mut object_out := u32(0)
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("create_shape_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429307534)
    mut args := unsafe { [1]voidptr{} }
    args[0] = owner.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) remove_shape_owner(owner_id u32) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("remove_shape_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CollisionObject3D) get_shape_owners() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("get_shape_owners")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) shape_owner_set_transform(owner_id u32, transform Transform3D) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) shape_owner_get_transform(owner_id u32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject3D) shape_owner_get_owner(owner_id u32) Object {
    mut object_out := Object{}
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_get_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) shape_owner_set_disabled(owner_id u32, disabled bool) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_set_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) is_shape_owner_disabled(owner_id u32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("is_shape_owner_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) shape_owner_add_shape(owner_id u32, shape Shape3D) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_add_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2566676345)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = shape.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) shape_owner_get_shape_count(owner_id u32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_get_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject3D) shape_owner_get_shape(owner_id u32, shape_id i32) Shape3D {
    mut object_out := Shape3D{}
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015519174)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&shape_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject3D) shape_owner_get_shape_index(owner_id u32, shape_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_get_shape_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&shape_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CollisionObject3D) shape_owner_remove_shape(owner_id u32, shape_id i32) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_remove_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&shape_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CollisionObject3D) shape_owner_clear_shapes(owner_id u32) {
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_owner_clear_shapes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject3D) shape_find_owner(shape_index i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("CollisionObject3D")
    fnname := StringName.new("shape_find_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
