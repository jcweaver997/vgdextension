module vgdextension

@[noinit]
pub struct OpenXRInteractionProfileMetadata {
    Object
}

pub fn (mut r OpenXRInteractionProfileMetadata) register_profile_rename(old_name String, new_name String) {
    classname := StringName.new("OpenXRInteractionProfileMetadata")
    fnname := StringName.new("register_profile_rename")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&old_name)}
    args[1] = unsafe{voidptr(&new_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r OpenXRInteractionProfileMetadata) register_top_level_path(display_name String, openxr_path String, openxr_extension_name String) {
    classname := StringName.new("OpenXRInteractionProfileMetadata")
    fnname := StringName.new("register_top_level_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 254767734)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&display_name)}
    args[1] = unsafe{voidptr(&openxr_path)}
    args[2] = unsafe{voidptr(&openxr_extension_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r OpenXRInteractionProfileMetadata) register_interaction_profile(display_name String, openxr_path String, openxr_extension_name String) {
    classname := StringName.new("OpenXRInteractionProfileMetadata")
    fnname := StringName.new("register_interaction_profile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 254767734)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&display_name)}
    args[1] = unsafe{voidptr(&openxr_path)}
    args[2] = unsafe{voidptr(&openxr_extension_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r OpenXRInteractionProfileMetadata) register_io_path(interaction_profile String, display_name String, toplevel_path String, openxr_path String, openxr_extension_name String, action_type OpenXRActionActionType) {
    classname := StringName.new("OpenXRInteractionProfileMetadata")
    fnname := StringName.new("register_io_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3443511926)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&interaction_profile)}
    args[1] = unsafe{voidptr(&display_name)}
    args[2] = unsafe{voidptr(&toplevel_path)}
    args[3] = unsafe{voidptr(&openxr_path)}
    args[4] = unsafe{voidptr(&openxr_extension_name)}
    i64_action_type := i64(action_type)
    args[5] = unsafe{voidptr(&i64_action_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
