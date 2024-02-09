module vgdextension

pub struct SkeletonModification2DTwoBoneIK {
    SkeletonModification2D
}

pub fn (mut r SkeletonModification2DTwoBoneIK) set_target_node(target_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&target_nodepath)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonModification2DTwoBoneIK) get_target_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DTwoBoneIK) set_target_minimum_distance(minimum_distance f64) {
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_minimum_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&minimum_distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonModification2DTwoBoneIK) get_target_minimum_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_minimum_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DTwoBoneIK) set_target_maximum_distance(maximum_distance f64) {
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_maximum_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&maximum_distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonModification2DTwoBoneIK) get_target_maximum_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_maximum_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DTwoBoneIK) set_flip_bend_direction(flip_direction bool) {
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_flip_bend_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flip_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonModification2DTwoBoneIK) get_flip_bend_direction() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_flip_bend_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DTwoBoneIK) set_joint_one_bone2d_node(bone2d_node NodePath) {
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_joint_one_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone2d_node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonModification2DTwoBoneIK) get_joint_one_bone2d_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint_one_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DTwoBoneIK) set_joint_one_bone_idx(bone_idx i32) {
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_joint_one_bone_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonModification2DTwoBoneIK) get_joint_one_bone_idx() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint_one_bone_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DTwoBoneIK) set_joint_two_bone2d_node(bone2d_node NodePath) {
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_joint_two_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone2d_node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonModification2DTwoBoneIK) get_joint_two_bone2d_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint_two_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DTwoBoneIK) set_joint_two_bone_idx(bone_idx i32) {
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_joint_two_bone_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonModification2DTwoBoneIK) get_joint_two_bone_idx() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DTwoBoneIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint_two_bone_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
