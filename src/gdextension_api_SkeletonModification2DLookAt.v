pub type SkeletonModification2DLookAt = voidptr

pub fn (mut r SkeletonModification2DLookAt) set_bone2d_node(bone2d_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DLookAt) get_bone2d_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone2d_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DLookAt) set_bone_index(bone_idx i32) {
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DLookAt) get_bone_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DLookAt) set_target_node(target_nodepath NodePath) {
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("set_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DLookAt) get_target_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("get_target_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DLookAt) set_additional_rotation(rotation f32) {
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("set_additional_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DLookAt) get_additional_rotation() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("get_additional_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DLookAt) set_enable_constraint(enable_constraint bool) {
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_constraint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DLookAt) get_enable_constraint() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_constraint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DLookAt) set_constraint_angle_min(angle_min f32) {
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("set_constraint_angle_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DLookAt) get_constraint_angle_min() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("get_constraint_angle_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DLookAt) set_constraint_angle_max(angle_max f32) {
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("set_constraint_angle_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DLookAt) get_constraint_angle_max() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("get_constraint_angle_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SkeletonModification2DLookAt) set_constraint_angle_invert(invert bool) {
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("set_constraint_angle_invert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DLookAt) get_constraint_angle_invert() bool {
    mut object_out := false
    classname := StringName.new("SkeletonModification2DLookAt")
    defer { classname.deinit() }
    fnname := StringName.new("get_constraint_angle_invert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
