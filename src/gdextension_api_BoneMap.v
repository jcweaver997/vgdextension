module vgdextension

@[noinit]
pub struct BoneMap {
    Resource
}

pub fn (r &BoneMap) get_profile() SkeletonProfile {
    mut object_out := SkeletonProfile{}
    classname := StringName.new("BoneMap")
    fnname := StringName.new("get_profile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291782652)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r BoneMap) set_profile(profile SkeletonProfile) {
    classname := StringName.new("BoneMap")
    fnname := StringName.new("set_profile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3870374136)
    mut args := unsafe { [1]voidptr{} }
    args[0] = profile.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoneMap) get_skeleton_bone_name(profile_bone_name string) string {
    mut object_out := StringName{}
    classname := StringName.new("BoneMap")
    fnname := StringName.new("get_skeleton_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(profile_bone_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r BoneMap) set_skeleton_bone_name(profile_bone_name string, skeleton_bone_name string) {
    classname := StringName.new("BoneMap")
    fnname := StringName.new("set_skeleton_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(profile_bone_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(skeleton_bone_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoneMap) find_profile_bone_name(skeleton_bone_name string) string {
    mut object_out := StringName{}
    classname := StringName.new("BoneMap")
    fnname := StringName.new("find_profile_bone_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(skeleton_bone_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
