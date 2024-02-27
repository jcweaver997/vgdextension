module vgdextension

pub enum SkeletonProfileTailDirection as i64 {
    tail_direction_average_children = 0
    tail_direction_specific_child = 1
    tail_direction_end = 2
}

@[noinit]
pub struct SkeletonProfile {
    Resource
}

pub fn (mut r SkeletonProfile) set_root_bone(bone_name string) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_root_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(bone_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonProfile) get_root_bone() string {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_root_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2737447660)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r SkeletonProfile) set_scale_base_bone(bone_name string) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_scale_base_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(bone_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonProfile) get_scale_base_bone() string {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_scale_base_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2737447660)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r SkeletonProfile) set_group_size(size i32) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_group_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonProfile) get_group_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_group_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkeletonProfile) get_group_name(group_idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_group_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r SkeletonProfile) set_group_name(group_idx i32, group_name string) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_group_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&group_idx)}
    arg_sn1 := StringName.new(group_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonProfile) get_texture(group_idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonProfile) set_texture(group_idx i32, texture Texture2D) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&group_idx)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonProfile) set_bone_size(size i32) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_bone_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonProfile) get_bone_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_bone_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkeletonProfile) find_bone(bone_name string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("find_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458036349)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(bone_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkeletonProfile) get_bone_name(bone_idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r SkeletonProfile) set_bone_name(bone_idx i32, bone_name string) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    arg_sn1 := StringName.new(bone_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonProfile) get_bone_parent(bone_idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_bone_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r SkeletonProfile) set_bone_parent(bone_idx i32, bone_parent string) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_bone_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    arg_sn1 := StringName.new(bone_parent)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonProfile) get_tail_direction(bone_idx i32) SkeletonProfileTailDirection {
    mut object_out := i64(SkeletonProfileTailDirection.tail_direction_average_children)
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_tail_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2675997574)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{SkeletonProfileTailDirection(object_out)}
}
pub fn (mut r SkeletonProfile) set_tail_direction(bone_idx i32, tail_direction SkeletonProfileTailDirection) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_tail_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1231951015)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    i64_tail_direction := i64(tail_direction)
    args[1] = unsafe{voidptr(&i64_tail_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonProfile) get_bone_tail(bone_idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_bone_tail")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r SkeletonProfile) set_bone_tail(bone_idx i32, bone_tail string) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_bone_tail")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    arg_sn1 := StringName.new(bone_tail)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonProfile) get_reference_pose(bone_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_reference_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonProfile) set_reference_pose(bone_idx i32, bone_name Transform3D) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_reference_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&bone_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonProfile) get_handle_offset(bone_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_handle_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonProfile) set_handle_offset(bone_idx i32, handle_offset Vector2) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_handle_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    args[1] = unsafe{voidptr(&handle_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonProfile) get_group(bone_idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("get_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r SkeletonProfile) set_group(bone_idx i32, group string) {
    classname := StringName.new("SkeletonProfile")
    fnname := StringName.new("set_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    arg_sn1 := StringName.new(group)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
