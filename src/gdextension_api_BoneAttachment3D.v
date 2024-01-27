pub type BoneAttachment3D = voidptr

pub fn (mut r BoneAttachment3D) set_bone_name(bone_name String) {
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BoneAttachment3D) get_bone_name() String {
    mut object_out := String{}
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoneAttachment3D) set_bone_idx(bone_idx i32) {
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BoneAttachment3D) get_bone_idx() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_idx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoneAttachment3D) on_bone_pose_update(bone_index i32) {
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("on_bone_pose_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r BoneAttachment3D) set_override_pose(override_pose bool) {
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_override_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BoneAttachment3D) get_override_pose() bool {
    mut object_out := false
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_override_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoneAttachment3D) set_use_external_skeleton(use_external_skeleton bool) {
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_external_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BoneAttachment3D) get_use_external_skeleton() bool {
    mut object_out := false
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_external_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoneAttachment3D) set_external_skeleton(external_skeleton NodePath) {
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_external_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BoneAttachment3D) get_external_skeleton() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("BoneAttachment3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_external_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
