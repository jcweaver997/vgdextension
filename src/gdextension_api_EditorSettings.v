module vgdextension

@[noinit]
pub struct EditorSettings {
    Resource
}

pub fn (r &EditorSettings) has_setting(name string) bool {
    mut object_out := false
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("has_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorSettings) set_setting(name string, value Variant) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("set_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSettings) get_setting(name string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("get_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868160156)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorSettings) erase(property string) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("erase")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorSettings) set_initial_value(name string, value Variant, update_current bool) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("set_initial_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1529169264)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    args[2] = unsafe{voidptr(&update_current)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorSettings) add_property_info(info Dictionary) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("add_property_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&info)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorSettings) set_project_metadata(section string, key string, data Variant) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("set_project_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2504492430)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSettings) get_project_metadata(section string, key string, default Variant) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("get_project_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 89809366)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&default)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorSettings) set_favorites(dirs PackedStringArray) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("set_favorites")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dirs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSettings) get_favorites() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("get_favorites")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorSettings) set_recent_dirs(dirs PackedStringArray) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("set_recent_dirs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dirs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSettings) get_recent_dirs() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("get_recent_dirs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorSettings) set_builtin_action_override(name string, actions_list Array) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("set_builtin_action_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1209351045)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&actions_list)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSettings) check_changed_settings_in_group(setting_prefix string) bool {
    mut object_out := false
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("check_changed_settings_in_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(setting_prefix)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorSettings) get_changed_settings() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("get_changed_settings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorSettings) mark_setting_changed(setting string) {
    classname := StringName.new("EditorSettings")
    fnname := StringName.new("mark_setting_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(setting)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
