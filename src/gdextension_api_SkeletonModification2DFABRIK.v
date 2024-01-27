pub type SkeletonModification2DFABRIK = voidptr

pub fn (mut r SkeletonModification2DFABRIK) set_target_node(target_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DFABRIK) get_target_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DFABRIK) set_fabrik_data_chain_length(length i32) {
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_fabrik_data_chain_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2DFABRIK) get_fabrik_data_chain_length() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_fabrik_data_chain_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DFABRIK) set_fabrik_joint_bone2d_node(joint_idx i32, bone2d_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_fabrik_joint_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DFABRIK) get_fabrik_joint_bone2d_node(joint_idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_fabrik_joint_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DFABRIK) set_fabrik_joint_bone_index(joint_idx i32, bone_idx i32) {
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_fabrik_joint_bone_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DFABRIK) get_fabrik_joint_bone_index(joint_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_fabrik_joint_bone_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DFABRIK) set_fabrik_joint_magnet_position(joint_idx i32, magnet_position Vector2) {
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_fabrik_joint_magnet_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DFABRIK) get_fabrik_joint_magnet_position(joint_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_fabrik_joint_magnet_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DFABRIK) set_fabrik_joint_use_target_rotation(joint_idx i32, use_target_rotation bool) {
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("set_fabrik_joint_use_target_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DFABRIK) get_fabrik_joint_use_target_rotation(joint_idx i32) bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DFABRIK")
    defer { classname.deinit() }
    fnname := StringName.new("get_fabrik_joint_use_target_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
