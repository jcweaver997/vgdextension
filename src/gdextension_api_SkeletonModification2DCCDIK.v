module vgdextension

@[noinit]
pub struct SkeletonModification2DCCDIK {
    SkeletonModification2D
}

pub fn (mut r SkeletonModification2DCCDIK) set_target_node(target_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_target_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&target_nodepath)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_target_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_target_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_tip_node(tip_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_tip_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tip_nodepath)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_tip_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_tip_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_ccdik_data_chain_length(length i32) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_ccdik_data_chain_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonModification2DCCDIK) get_ccdik_data_chain_length() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_ccdik_data_chain_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_ccdik_joint_bone2d_node(joint_idx i32, bone2d_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_ccdik_joint_bone2d_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    args[1] = unsafe{voidptr(&bone2d_nodepath)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_ccdik_joint_bone2d_node(joint_idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_ccdik_joint_bone2d_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_ccdik_joint_bone_index(joint_idx i32, bone_idx i32) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_ccdik_joint_bone_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    args[1] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_ccdik_joint_bone_index(joint_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_ccdik_joint_bone_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_ccdik_joint_rotate_from_joint(joint_idx i32, rotate_from_joint bool) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_ccdik_joint_rotate_from_joint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    args[1] = unsafe{voidptr(&rotate_from_joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_ccdik_joint_rotate_from_joint(joint_idx i32) bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_ccdik_joint_rotate_from_joint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_ccdik_joint_enable_constraint(joint_idx i32, enable_constraint bool) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_ccdik_joint_enable_constraint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    args[1] = unsafe{voidptr(&enable_constraint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_ccdik_joint_enable_constraint(joint_idx i32) bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_ccdik_joint_enable_constraint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_ccdik_joint_constraint_angle_min(joint_idx i32, angle_min f64) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_ccdik_joint_constraint_angle_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    args[1] = unsafe{voidptr(&angle_min)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_ccdik_joint_constraint_angle_min(joint_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_ccdik_joint_constraint_angle_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_ccdik_joint_constraint_angle_max(joint_idx i32, angle_max f64) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_ccdik_joint_constraint_angle_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    args[1] = unsafe{voidptr(&angle_max)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_ccdik_joint_constraint_angle_max(joint_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_ccdik_joint_constraint_angle_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DCCDIK) set_ccdik_joint_constraint_angle_invert(joint_idx i32, invert bool) {
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("set_ccdik_joint_constraint_angle_invert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    args[1] = unsafe{voidptr(&invert)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DCCDIK) get_ccdik_joint_constraint_angle_invert(joint_idx i32) bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DCCDIK")
    fnname := StringName.new("get_ccdik_joint_constraint_angle_invert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
