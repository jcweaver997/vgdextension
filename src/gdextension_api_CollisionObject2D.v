pub enum CollisionObject2DDisableMode {
    disable_mode_remove = 0
    disable_mode_make_static = 1
    disable_mode_keep_active = 2
}

pub type CollisionObject2D = voidptr

pub fn (mut r CollisionObject2D) uinput_event(viewport Viewport, event InputEvent, shape_idx i32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("_input_event")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject2D) umouse_enter() {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("_mouse_enter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject2D) umouse_exit() {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("_mouse_exit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject2D) umouse_shape_enter(shape_idx i32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("_mouse_shape_enter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject2D) umouse_shape_exit(shape_idx i32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("_mouse_shape_exit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) set_collision_layer(layer i32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) get_collision_layer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) set_collision_mask(mask i32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) get_collision_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) set_collision_priority(priority f32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) get_collision_priority() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) set_disable_mode(mode CollisionObject2DDisableMode) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1919204045)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) get_disable_mode() CollisionObject2DDisableMode {
    mut object_out := CollisionObject2DDisableMode.disable_mode_remove
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_disable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3172846349)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) set_pickable(enabled bool) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) is_pickable() bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) create_shape_owner(owner Object) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("create_shape_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3429307534)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) remove_shape_owner(owner_id i32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_shape_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject2D) get_shape_owners() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape_owners")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) shape_owner_set_transform(owner_id i32, transform Transform2D) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 30160968)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) shape_owner_get_transform(owner_id i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3836996910)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_get_owner(owner_id i32) Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3332903315)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) shape_owner_set_disabled(owner_id i32, disabled bool) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_set_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) is_shape_owner_disabled(owner_id i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_shape_owner_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) shape_owner_set_one_way_collision(owner_id i32, enable bool) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_set_one_way_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) is_shape_owner_one_way_collision_enabled(owner_id i32) bool {
    mut object_out := false
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_shape_owner_one_way_collision_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) shape_owner_set_one_way_collision_margin(owner_id i32, margin f32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_set_one_way_collision_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) get_shape_owner_one_way_collision_margin(owner_id i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape_owner_one_way_collision_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionObject2D) shape_owner_add_shape(owner_id i32, shape Shape2D) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_add_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2077425081)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) shape_owner_get_shape_count(owner_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_get_shape(owner_id i32, shape_id i32) Shape2D {
    mut object_out := Shape2D(unsafe{nil})
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3106725749)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&owner_id)}
    args[1] = unsafe{voidptr(&shape_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CollisionObject2D) shape_owner_get_shape_index(owner_id i32, shape_id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject2D")
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
pub fn (mut r CollisionObject2D) shape_owner_remove_shape(owner_id i32, shape_id i32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_remove_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionObject2D) shape_owner_clear_shapes(owner_id i32) {
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_owner_clear_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionObject2D) shape_find_owner(shape_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CollisionObject2D")
    defer { classname.deinit() }
    fnname := StringName.new("shape_find_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
