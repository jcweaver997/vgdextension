module vgdextension

pub struct OpenXRActionMap {
    Resource
}

pub fn (mut r OpenXRActionMap) set_action_sets(action_sets Array) {
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("set_action_sets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&action_sets)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRActionMap) get_action_sets() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_sets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRActionMap) get_action_set_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_set_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRActionMap) find_action_set(name String) OpenXRActionSet {
    mut object_out := OpenXRActionSet{}
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("find_action_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1888809267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRActionMap) get_action_set(idx i32) OpenXRActionSet {
    mut object_out := OpenXRActionSet{}
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1789580336)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRActionMap) add_action_set(action_set OpenXRActionSet) {
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("add_action_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2093310581)
    mut args := unsafe { [1]voidptr{} }
    args[0] = action_set.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r OpenXRActionMap) remove_action_set(action_set OpenXRActionSet) {
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("remove_action_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2093310581)
    mut args := unsafe { [1]voidptr{} }
    args[0] = action_set.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r OpenXRActionMap) set_interaction_profiles(interaction_profiles Array) {
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("set_interaction_profiles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&interaction_profiles)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRActionMap) get_interaction_profiles() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_interaction_profiles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRActionMap) get_interaction_profile_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_interaction_profile_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRActionMap) find_interaction_profile(name String) OpenXRInteractionProfile {
    mut object_out := OpenXRInteractionProfile{}
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("find_interaction_profile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3095875538)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRActionMap) get_interaction_profile(idx i32) OpenXRInteractionProfile {
    mut object_out := OpenXRInteractionProfile{}
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_interaction_profile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2546151210)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRActionMap) add_interaction_profile(interaction_profile OpenXRInteractionProfile) {
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("add_interaction_profile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2697953512)
    mut args := unsafe { [1]voidptr{} }
    args[0] = interaction_profile.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r OpenXRActionMap) remove_interaction_profile(interaction_profile OpenXRInteractionProfile) {
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("remove_interaction_profile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2697953512)
    mut args := unsafe { [1]voidptr{} }
    args[0] = interaction_profile.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r OpenXRActionMap) create_default_action_sets() {
    classname := StringName.new("OpenXRActionMap")
    defer { classname.deinit() }
    fnname := StringName.new("create_default_action_sets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
