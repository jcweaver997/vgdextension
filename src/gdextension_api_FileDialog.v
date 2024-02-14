module vgdextension

pub enum FileDialogFileMode as i64 {
    file_mode_open_file = 0
    file_mode_open_files = 1
    file_mode_open_dir = 2
    file_mode_open_any = 3
    file_mode_save_file = 4
}

pub enum FileDialogAccess as i64 {
    access_resources = 0
    access_userdata = 1
    access_filesystem = 2
}

@[noinit]
pub struct FileDialog {
    ConfirmationDialog
}

pub fn (mut r FileDialog) clear_filters() {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("clear_filters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileDialog) add_filter(filter String, description String) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("add_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3388804757)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&filter)}
    args[1] = unsafe{voidptr(&description)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileDialog) set_filters(filters PackedStringArray) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_filters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filters)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileDialog) get_filters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_filters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileDialog) get_current_dir() String {
    mut object_out := String{}
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_current_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileDialog) get_current_file() String {
    mut object_out := String{}
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_current_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileDialog) get_current_path() String {
    mut object_out := String{}
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_current_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileDialog) set_current_dir(dir String) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_current_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dir)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileDialog) set_current_file(file String) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_current_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileDialog) set_current_path(path String) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_current_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileDialog) set_mode_overrides_title(override bool) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_mode_overrides_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&override)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileDialog) is_mode_overriding_title() bool {
    mut object_out := false
    classname := StringName.new("FileDialog")
    fnname := StringName.new("is_mode_overriding_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileDialog) set_file_mode(mode FileDialogFileMode) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_file_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3654936397)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileDialog) get_file_mode() FileDialogFileMode {
    mut object_out := i64(FileDialogFileMode.file_mode_open_file)
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_file_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4074825319)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{FileDialogFileMode(object_out)}
}
pub fn (mut r FileDialog) get_vbox() VBoxContainer {
    mut object_out := VBoxContainer{}
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_vbox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 915758477)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileDialog) get_line_edit() LineEdit {
    mut object_out := LineEdit{}
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_line_edit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071694264)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileDialog) set_access(access FileDialogAccess) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_access")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4104413466)
    mut args := unsafe { [1]voidptr{} }
    i64_access := i64(access)
    args[0] = unsafe{voidptr(&i64_access)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileDialog) get_access() FileDialogAccess {
    mut object_out := i64(FileDialogAccess.access_resources)
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_access")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344081076)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{FileDialogAccess(object_out)}
}
pub fn (mut r FileDialog) set_root_subfolder(dir String) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_root_subfolder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dir)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileDialog) get_root_subfolder() String {
    mut object_out := String{}
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_root_subfolder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileDialog) set_show_hidden_files(show bool) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_show_hidden_files")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&show)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileDialog) is_showing_hidden_files() bool {
    mut object_out := false
    classname := StringName.new("FileDialog")
    fnname := StringName.new("is_showing_hidden_files")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileDialog) set_use_native_dialog(native bool) {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("set_use_native_dialog")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&native)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileDialog) get_use_native_dialog() bool {
    mut object_out := false
    classname := StringName.new("FileDialog")
    fnname := StringName.new("get_use_native_dialog")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileDialog) deselect_all() {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("deselect_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileDialog) invalidate() {
    classname := StringName.new("FileDialog")
    fnname := StringName.new("invalidate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
