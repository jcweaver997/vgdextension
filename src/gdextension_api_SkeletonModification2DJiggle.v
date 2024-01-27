module vgdextension

pub type SkeletonModification2DJiggle = voidptr

pub fn (mut r SkeletonModification2DJiggle) set_target_node(target_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_target_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_data_chain_length(length i32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_data_chain_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2DJiggle) get_jiggle_data_chain_length() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_data_chain_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_stiffness(stiffness f32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_stiffness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_mass(mass f32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_mass() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_damping(damping f32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_damping() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_use_gravity(use_gravity bool) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_use_gravity() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_gravity(gravity Vector2) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_gravity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_use_colliders(use_colliders bool) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_colliders")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_use_colliders() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_colliders")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_collision_mask(collision_mask i32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_collision_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_joint_bone2d_node(joint_idx i32, bone2d_node NodePath) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_joint_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_jiggle_joint_bone2d_node(joint_idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_joint_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_joint_bone_index(joint_idx i32, bone_idx i32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_joint_bone_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_jiggle_joint_bone_index(joint_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_joint_bone_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_joint_override(joint_idx i32, override bool) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_joint_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_jiggle_joint_override(joint_idx i32) bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_joint_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_joint_stiffness(joint_idx i32, stiffness f32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_joint_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_jiggle_joint_stiffness(joint_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_joint_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_joint_mass(joint_idx i32, mass f32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_joint_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_jiggle_joint_mass(joint_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_joint_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_joint_damping(joint_idx i32, damping f32) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_joint_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_jiggle_joint_damping(joint_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_joint_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_joint_use_gravity(joint_idx i32, use_gravity bool) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_joint_use_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_jiggle_joint_use_gravity(joint_idx i32) bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_joint_use_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DJiggle) set_jiggle_joint_gravity(joint_idx i32, gravity Vector2) {
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("set_jiggle_joint_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DJiggle) get_jiggle_joint_gravity(joint_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SkeletonModification2DJiggle")
    defer { classname.deinit() }
    fnname := StringName.new("get_jiggle_joint_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
