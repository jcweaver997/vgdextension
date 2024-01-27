module vgdextension

pub type EditorSettings = voidptr

pub fn (r &EditorSettings) has_setting(name String) bool {
    mut object_out := false
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("has_setting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSettings) set_setting(name String, value Variant) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_setting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSettings) get_setting(name String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_setting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1868160156)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSettings) erase(property String) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("erase")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorSettings) set_initial_value(name StringName, value Variant, update_current bool) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_initial_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1529169264)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorSettings) add_property_info(info Dictionary) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("add_property_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorSettings) set_project_metadata(section String, key String, data Variant) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_project_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2504492430)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSettings) get_project_metadata(section String, key String, default Variant) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_project_metadata")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 89809366)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&section)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&default)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSettings) set_favorites(dirs PackedStringArray) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_favorites")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSettings) get_favorites() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_favorites")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSettings) set_recent_dirs(dirs PackedStringArray) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_recent_dirs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSettings) get_recent_dirs() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_recent_dirs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSettings) set_builtin_action_override(name String, actions_list Array) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_builtin_action_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1209351045)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSettings) check_changed_settings_in_group(setting_prefix String) bool {
    mut object_out := false
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("check_changed_settings_in_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&setting_prefix)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorSettings) get_changed_settings() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_changed_settings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSettings) mark_setting_changed(setting String) {
    classname := StringName.new("EditorSettings")
    defer { classname.deinit() }
    fnname := StringName.new("mark_setting_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
