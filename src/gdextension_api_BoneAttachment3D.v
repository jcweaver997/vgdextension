module vgdextension

@[noinit]
pub struct BoneAttachment3D {
    Node3D
}

pub fn (mut r BoneAttachment3D) set_bone_name(bone_name string) {
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("set_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(bone_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoneAttachment3D) get_bone_name() string {
    mut object_out := String{}
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("get_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r BoneAttachment3D) set_bone_idx(bone_idx i32) {
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("set_bone_idx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoneAttachment3D) get_bone_idx() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("get_bone_idx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r BoneAttachment3D) on_bone_pose_update(bone_index i32) {
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("on_bone_pose_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r BoneAttachment3D) set_override_pose(override_pose bool) {
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("set_override_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&override_pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoneAttachment3D) get_override_pose() bool {
    mut object_out := false
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("get_override_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r BoneAttachment3D) set_use_external_skeleton(use_external_skeleton bool) {
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("set_use_external_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_external_skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoneAttachment3D) get_use_external_skeleton() bool {
    mut object_out := false
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("get_use_external_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r BoneAttachment3D) set_external_skeleton(external_skeleton NodePath) {
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("set_external_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&external_skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoneAttachment3D) get_external_skeleton() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("BoneAttachment3D")
    fnname := StringName.new("get_external_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
