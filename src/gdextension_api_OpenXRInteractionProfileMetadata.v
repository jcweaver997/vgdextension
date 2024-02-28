module vgdextension

@[noinit]
pub struct OpenXRInteractionProfileMetadata {
    Object
}

pub fn (r &OpenXRInteractionProfileMetadata) register_profile_rename(old_name string, new_name string) {
    classname := StringName.new("OpenXRInteractionProfileMetadata")
    fnname := StringName.new("register_profile_rename")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(old_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(new_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInteractionProfileMetadata) register_top_level_path(display_name string, openxr_path string, openxr_extension_name string) {
    classname := StringName.new("OpenXRInteractionProfileMetadata")
    fnname := StringName.new("register_top_level_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 254767734)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(display_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(openxr_path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(openxr_extension_name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInteractionProfileMetadata) register_interaction_profile(display_name string, openxr_path string, openxr_extension_name string) {
    classname := StringName.new("OpenXRInteractionProfileMetadata")
    fnname := StringName.new("register_interaction_profile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 254767734)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(display_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(openxr_path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(openxr_extension_name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInteractionProfileMetadata) register_io_path(interaction_profile string, display_name string, toplevel_path string, openxr_path string, openxr_extension_name string, action_type OpenXRActionActionType) {
    classname := StringName.new("OpenXRInteractionProfileMetadata")
    fnname := StringName.new("register_io_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3443511926)
    mut args := unsafe { [6]voidptr{} }
    arg_sn0 := String.new(interaction_profile)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(display_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(toplevel_path)
    args[2] = unsafe{voidptr(&arg_sn2)}
    arg_sn3 := String.new(openxr_path)
    args[3] = unsafe{voidptr(&arg_sn3)}
    arg_sn4 := String.new(openxr_extension_name)
    args[4] = unsafe{voidptr(&arg_sn4)}
    i64_action_type := i64(action_type)
    args[5] = unsafe{voidptr(&i64_action_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    arg_sn3.deinit()
    arg_sn4.deinit()
    classname.deinit()
    fnname.deinit()
}
