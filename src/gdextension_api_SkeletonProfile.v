module vgdextension

pub enum SkeletonProfileTailDirection {
    tail_direction_average_children = 0
    tail_direction_specific_child = 1
    tail_direction_end = 2
}

pub type SkeletonProfile = voidptr

pub fn (mut r SkeletonProfile) set_root_bone(bone_name StringName) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_root_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonProfile) get_root_bone() StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2737447660)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_scale_base_bone(bone_name StringName) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale_base_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonProfile) get_scale_base_bone() StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale_base_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2737447660)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_group_size(size i32) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_group_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonProfile) get_group_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_group_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SkeletonProfile) get_group_name(group_idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_group_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_group_name(group_idx i32, group_name StringName) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_group_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonProfile) get_texture(group_idx i32) Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_texture(group_idx i32, texture Texture2D) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonProfile) set_bone_size(size i32) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonProfile) get_bone_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SkeletonProfile) find_bone(bone_name StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("find_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2458036349)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &SkeletonProfile) get_bone_name(bone_idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_bone_name(bone_idx i32, bone_name StringName) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonProfile) get_bone_parent(bone_idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_bone_parent(bone_idx i32, bone_parent StringName) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonProfile) get_tail_direction(bone_idx i32) SkeletonProfileTailDirection {
    mut object_out := SkeletonProfileTailDirection.tail_direction_average_children
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_tail_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2675997574)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_tail_direction(bone_idx i32, tail_direction SkeletonProfileTailDirection) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_tail_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1231951015)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonProfile) get_bone_tail(bone_idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_tail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_bone_tail(bone_idx i32, bone_tail StringName) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_tail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonProfile) get_reference_pose(bone_idx i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_reference_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_reference_pose(bone_idx i32, bone_name Transform3D) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_reference_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonProfile) get_handle_offset(bone_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_handle_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_handle_offset(bone_idx i32, handle_offset Vector2) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_handle_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonProfile) get_group(bone_idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonProfile) set_group(bone_idx i32, group StringName) {
    classname := StringName.new("SkeletonProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
