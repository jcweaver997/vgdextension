module vgdextension

pub type Skeleton2D = voidptr

pub fn (r &Skeleton2D) get_bone_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Skeleton2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Skeleton2D) get_bone(idx i32) Bone2D {
    mut object_out := Bone2D(unsafe{nil})
    classname := StringName.new("Skeleton2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2556267111)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Skeleton2D) get_skeleton() RID {
    mut object_out := RID{}
    classname := StringName.new("Skeleton2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Skeleton2D) set_modification_stack(modification_stack SkeletonModificationStack2D) {
    classname := StringName.new("Skeleton2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_modification_stack")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3907307132)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Skeleton2D) get_modification_stack() SkeletonModificationStack2D {
    mut object_out := SkeletonModificationStack2D(unsafe{nil})
    classname := StringName.new("Skeleton2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_modification_stack")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2107508396)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Skeleton2D) execute_modifications(delta f32, execution_mode i32) {
    classname := StringName.new("Skeleton2D")
    defer { classname.deinit() }
    fnname := StringName.new("execute_modifications")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1005356550)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Skeleton2D) set_bone_local_pose_override(bone_idx i32, override_pose Transform2D, strength f32, persistent bool) {
    classname := StringName.new("Skeleton2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_local_pose_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 555457532)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Skeleton2D) get_bone_local_pose_override(bone_idx i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Skeleton2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_local_pose_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2995540667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bone_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
