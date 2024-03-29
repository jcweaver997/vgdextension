module vgdextension

pub enum CollisionObject2DDisableMode as i64 {
    disable_mode_remove = 0
    disable_mode_make_static = 1
    disable_mode_keep_active = 2
}

@[noinit]
pub struct CollisionObject2D {
    Node2D
}

pub interface ICollisionObject2DInputEvent {
    mut:
    virt_input_event(viewport Viewport, event InputEvent, shape_idx i32)
}

pub fn (r &CollisionObject2D) uinput_event(viewport Viewport, event InputEvent, shape_idx i32) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("_input_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&viewport.ptr)
    args[1] = voidptr(&event.ptr)
    args[2] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ICollisionObject2DMouseEnter {
    mut:
    virt_mouse_enter()
}

pub fn (r &CollisionObject2D) umouse_enter() {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("_mouse_enter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ICollisionObject2DMouseExit {
    mut:
    virt_mouse_exit()
}

pub fn (r &CollisionObject2D) umouse_exit() {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("_mouse_exit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ICollisionObject2DMouseShapeEnter {
    mut:
    virt_mouse_shape_enter(shape_idx i32)
}

pub fn (r &CollisionObject2D) umouse_shape_enter(shape_idx i32) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("_mouse_shape_enter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ICollisionObject2DMouseShapeExit {
    mut:
    virt_mouse_shape_exit(shape_idx i32)
}

pub fn (r &CollisionObject2D) umouse_shape_exit(shape_idx i32) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("_mouse_shape_exit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) set_collision_layer(layer u32) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_collision_layer() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) set_collision_mask(mask u32) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("set_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("set_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) set_collision_priority(priority f64) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("set_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_collision_priority() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) set_disable_mode(mode CollisionObject2DDisableMode) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("set_disable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1919204045)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_disable_mode() CollisionObject2DDisableMode {
    mut object_out := i64(CollisionObject2DDisableMode.disable_mode_remove)
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_disable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3172846349)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CollisionObject2DDisableMode(object_out)}
}
pub fn (r &CollisionObject2D) set_pickable(enabled bool) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("set_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) is_pickable() bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("is_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) create_shape_owner(owner Object) u32 {
    mut object_out := u32(0)
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("create_shape_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429307534)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&owner.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) remove_shape_owner(owner_id u32) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("remove_shape_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_shape_owners() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_shape_owners")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_set_transform(owner_id u32, transform Transform2D) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 30160968)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) shape_owner_get_transform(owner_id u32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3836996910)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_get_owner(owner_id u32) Object {
    mut object_out := Object{}
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_get_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_set_disabled(owner_id u32, disabled bool) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_set_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) is_shape_owner_disabled(owner_id u32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("is_shape_owner_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_set_one_way_collision(owner_id u32, enable bool) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_set_one_way_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) is_shape_owner_one_way_collision_enabled(owner_id u32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("is_shape_owner_one_way_collision_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_set_one_way_collision_margin(owner_id u32, margin f64) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_set_one_way_collision_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) get_shape_owner_one_way_collision_margin(owner_id u32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("get_shape_owner_one_way_collision_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_add_shape(owner_id u32, shape Shape2D) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_add_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2077425081)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = voidptr(&shape.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) shape_owner_get_shape_count(owner_id u32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_get_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_get_shape(owner_id u32, shape_id i32) Shape2D {
    mut object_out := Shape2D{}
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3106725749)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&shape_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_get_shape_index(owner_id u32, shape_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject2D")
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
pub fn (r &CollisionObject2D) shape_owner_remove_shape(owner_id u32, shape_id i32) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_remove_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&shape_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) shape_owner_clear_shapes(owner_id u32) {
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_owner_clear_shapes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CollisionObject2D) shape_find_owner(shape_index i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("CollisionObject2D")
    fnname := StringName.new("shape_find_owner")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
