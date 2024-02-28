module vgdextension

pub enum EditorFileDialogFileMode as i64 {
    file_mode_open_file = 0
    file_mode_open_files = 1
    file_mode_open_dir = 2
    file_mode_open_any = 3
    file_mode_save_file = 4
}

pub enum EditorFileDialogAccess as i64 {
    access_resources = 0
    access_userdata = 1
    access_filesystem = 2
}

pub enum EditorFileDialogDisplayMode as i64 {
    display_thumbnails = 0
    display_list = 1
}

@[noinit]
pub struct EditorFileDialog {
    ConfirmationDialog
}

pub fn (r &EditorFileDialog) clear_filters() {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("clear_filters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) add_filter(filter string, description string) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("add_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3388804757)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(filter)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(description)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) set_filters(filters PackedStringArray) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_filters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filters)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) get_filters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_filters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFileDialog) get_current_dir() string {
    mut object_out := String{}
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_current_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorFileDialog) get_current_file() string {
    mut object_out := String{}
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_current_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorFileDialog) get_current_path() string {
    mut object_out := String{}
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_current_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorFileDialog) set_current_dir(dir string) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_current_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(dir)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) set_current_file(file string) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_current_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(file)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) set_current_path(path string) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_current_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) set_file_mode(mode EditorFileDialogFileMode) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_file_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 274150415)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) get_file_mode() EditorFileDialogFileMode {
    mut object_out := i64(EditorFileDialogFileMode.file_mode_open_file)
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_file_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2681044145)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EditorFileDialogFileMode(object_out)}
}
pub fn (r &EditorFileDialog) get_vbox() VBoxContainer {
    mut object_out := VBoxContainer{}
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_vbox")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 915758477)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFileDialog) get_line_edit() LineEdit {
    mut object_out := LineEdit{}
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_line_edit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071694264)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFileDialog) set_access(access EditorFileDialogAccess) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_access")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3882893764)
    mut args := unsafe { [1]voidptr{} }
    i64_access := i64(access)
    args[0] = unsafe{voidptr(&i64_access)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) get_access() EditorFileDialogAccess {
    mut object_out := i64(EditorFileDialogAccess.access_resources)
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_access")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 778734016)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EditorFileDialogAccess(object_out)}
}
pub fn (r &EditorFileDialog) set_show_hidden_files(show bool) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_show_hidden_files")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&show)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) is_showing_hidden_files() bool {
    mut object_out := false
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("is_showing_hidden_files")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFileDialog) set_display_mode(mode EditorFileDialogDisplayMode) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_display_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3049004050)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) get_display_mode() EditorFileDialogDisplayMode {
    mut object_out := i64(EditorFileDialogDisplayMode.display_thumbnails)
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("get_display_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3517174669)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{EditorFileDialogDisplayMode(object_out)}
}
pub fn (r &EditorFileDialog) set_disable_overwrite_warning(disable bool) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("set_disable_overwrite_warning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) is_overwrite_warning_disabled() bool {
    mut object_out := false
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("is_overwrite_warning_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFileDialog) add_side_menu(menu Control, title string) {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("add_side_menu")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402368861)
    mut args := unsafe { [2]voidptr{} }
    args[0] = menu.ptr
    arg_sn1 := String.new(title)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFileDialog) invalidate() {
    classname := StringName.new("EditorFileDialog")
    fnname := StringName.new("invalidate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
