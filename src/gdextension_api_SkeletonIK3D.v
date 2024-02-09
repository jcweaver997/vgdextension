module vgdextension

pub struct SkeletonIK3D {
    Node
}

pub fn (mut r SkeletonIK3D) set_root_bone(root_bone StringName) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_root_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&root_bone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) get_root_bone() StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_tip_bone(tip_bone StringName) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_tip_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tip_bone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) get_tip_bone() StringName {
    mut object_out := StringName{}
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_tip_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_interpolation(interpolation f64) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_interpolation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&interpolation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) get_interpolation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_interpolation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_target_transform(target Transform3D) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&target)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) get_target_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_target_node(node NodePath) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r SkeletonIK3D) get_target_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_override_tip_basis(override bool) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_override_tip_basis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&override)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) is_override_tip_basis() bool {
    mut object_out := false
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_override_tip_basis")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_use_magnet(use bool) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_magnet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) is_using_magnet() bool {
    mut object_out := false
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_magnet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_magnet_position(local_position Vector3) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_magnet_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&local_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) get_magnet_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_magnet_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SkeletonIK3D) get_parent_skeleton() Skeleton3D {
    mut object_out := Skeleton3D{}
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1488626673)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) is_running() bool {
    mut object_out := false
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_running")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_min_distance(min_distance f64) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_min_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min_distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) get_min_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_min_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) set_max_iterations(iterations i32) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_iterations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&iterations)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SkeletonIK3D) get_max_iterations() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_iterations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonIK3D) start(one_time bool) {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&one_time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r SkeletonIK3D) stop() {
    classname := StringName.new("SkeletonIK3D")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
