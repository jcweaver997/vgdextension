module vgdextension

pub type BoneMap = voidptr

pub fn (r &BoneMap) get_profile() SkeletonProfile {
    mut object_out := SkeletonProfile(unsafe{nil})
    classname := StringName.new("BoneMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_profile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291782652)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoneMap) set_profile(profile SkeletonProfile) {
    classname := StringName.new("BoneMap")
    defer { classname.deinit() }
    fnname := StringName.new("set_profile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3870374136)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BoneMap) get_skeleton_bone_name(profile_bone_name StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("BoneMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton_bone_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&profile_bone_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r BoneMap) set_skeleton_bone_name(profile_bone_name StringName, skeleton_bone_name StringName) {
    classname := StringName.new("BoneMap")
    defer { classname.deinit() }
    fnname := StringName.new("set_skeleton_bone_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BoneMap) find_profile_bone_name(skeleton_bone_name StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("BoneMap")
    defer { classname.deinit() }
    fnname := StringName.new("find_profile_bone_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton_bone_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
