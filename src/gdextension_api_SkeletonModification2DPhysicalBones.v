module vgdextension

@[noinit]
pub struct SkeletonModification2DPhysicalBones {
    SkeletonModification2D
}

pub fn (mut r SkeletonModification2DPhysicalBones) set_physical_bone_chain_length(length i32) {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    fnname := StringName.new("set_physical_bone_chain_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonModification2DPhysicalBones) get_physical_bone_chain_length() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    fnname := StringName.new("get_physical_bone_chain_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DPhysicalBones) set_physical_bone_node(joint_idx i32, physicalbone2d_node NodePath) {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    fnname := StringName.new("set_physical_bone_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    args[1] = unsafe{voidptr(&physicalbone2d_node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DPhysicalBones) get_physical_bone_node(joint_idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    fnname := StringName.new("get_physical_bone_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SkeletonModification2DPhysicalBones) fetch_physical_bones() {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    fnname := StringName.new("fetch_physical_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonModification2DPhysicalBones) start_simulation(bones Array) {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    fnname := StringName.new("start_simulation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bones)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r SkeletonModification2DPhysicalBones) stop_simulation(bones Array) {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    fnname := StringName.new("stop_simulation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bones)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
