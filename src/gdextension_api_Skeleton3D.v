module vgdextension

@[noinit]
pub struct Skeleton3D {
    Node3D
}

pub fn (r &Skeleton3D) add_bone(name string) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("add_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) find_bone(name string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("find_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) get_bone_name(bone_idx i32) string {
    mut object_out := String{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Skeleton3D) set_bone_name(bone_idx i32, name string) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_bone_parent(bone_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) set_bone_parent(bone_idx i32, parent_idx i32) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_bone_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&parent_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_bone_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) get_version() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) unparent_bone_and_rest(bone_idx i32) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("unparent_bone_and_rest")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_bone_children(bone_idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_children")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) get_parentless_bones() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_parentless_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) get_bone_rest(bone_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_rest")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) set_bone_rest(bone_idx i32, rest Transform3D) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_bone_rest")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&rest)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_bone_global_rest(bone_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_global_rest")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) create_skin_from_rest_transforms() Skin {
    mut object_out := Skin{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("create_skin_from_rest_transforms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1032037385)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) register_skin(skin Skin) SkinReference {
    mut object_out := SkinReference{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("register_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3405789568)
    mut args := unsafe { [1]voidptr{} }
    args[0] = skin.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) localize_rests() {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("localize_rests")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) clear_bones() {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("clear_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_bone_pose(bone_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) set_bone_pose_position(bone_idx i32, position Vector3) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_bone_pose_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) set_bone_pose_rotation(bone_idx i32, rotation Quaternion) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_bone_pose_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2823819782)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&rotation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) set_bone_pose_scale(bone_idx i32, scale Vector3) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_bone_pose_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_bone_pose_position(bone_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_pose_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) get_bone_pose_rotation(bone_idx i32) Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_pose_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 476865136)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) get_bone_pose_scale(bone_idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_pose_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) reset_bone_pose(bone_idx i32) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("reset_bone_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) reset_bone_poses() {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("reset_bone_poses")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) is_bone_enabled(bone_idx i32) bool {
    mut object_out := false
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("is_bone_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) set_bone_enabled(bone_idx i32, enabled bool) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_bone_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 972357352)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) clear_bones_global_pose_override() {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("clear_bones_global_pose_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) set_bone_global_pose_override(bone_idx i32, pose Transform3D, amount f64, persistent bool) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_bone_global_pose_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3483398371)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&pose)}
    args[2] = unsafe{voidptr(&amount)}
    args[3] = unsafe{voidptr(&persistent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_bone_global_pose_override(bone_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_global_pose_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) get_bone_global_pose(bone_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_global_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) get_bone_global_pose_no_override(bone_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_bone_global_pose_no_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) force_update_all_bone_transforms() {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("force_update_all_bone_transforms")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) force_update_bone_child_transform(bone_idx i32) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("force_update_bone_child_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) set_motion_scale(motion_scale f64) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_motion_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&motion_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_motion_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_motion_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) set_show_rest_only(enabled bool) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_show_rest_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) is_show_rest_only() bool {
    mut object_out := false
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("is_show_rest_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) set_animate_physical_bones(enabled bool) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("set_animate_physical_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) get_animate_physical_bones() bool {
    mut object_out := false
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("get_animate_physical_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Skeleton3D) physical_bones_stop_simulation() {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("physical_bones_stop_simulation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) physical_bones_start_simulation(bones Array) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("physical_bones_start_simulation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bones)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) physical_bones_add_collision_exception(exception RID) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("physical_bones_add_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exception)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skeleton3D) physical_bones_remove_collision_exception(exception RID) {
    classname := StringName.new("Skeleton3D")
    fnname := StringName.new("physical_bones_remove_collision_exception")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exception)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
