module vgdextension

pub type SkeletonModification2DPhysicalBones = voidptr

pub fn (mut r SkeletonModification2DPhysicalBones) set_physical_bone_chain_length(length i32) {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    defer { classname.deinit() }
    fnname := StringName.new("set_physical_bone_chain_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2DPhysicalBones) get_physical_bone_chain_length() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    defer { classname.deinit() }
    fnname := StringName.new("get_physical_bone_chain_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DPhysicalBones) set_physical_bone_node(joint_idx i32, physicalbone2d_node NodePath) {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    defer { classname.deinit() }
    fnname := StringName.new("set_physical_bone_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DPhysicalBones) get_physical_bone_node(joint_idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    defer { classname.deinit() }
    fnname := StringName.new("get_physical_bone_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DPhysicalBones) fetch_physical_bones() {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    defer { classname.deinit() }
    fnname := StringName.new("fetch_physical_bones")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2DPhysicalBones) start_simulation(bones Array) {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    defer { classname.deinit() }
    fnname := StringName.new("start_simulation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SkeletonModification2DPhysicalBones) stop_simulation(bones Array) {
    classname := StringName.new("SkeletonModification2DPhysicalBones")
    defer { classname.deinit() }
    fnname := StringName.new("stop_simulation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2787316981)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
