pub enum EditorFileDialogFileMode {
    file_mode_open_file = 0
    file_mode_open_files = 1
    file_mode_open_dir = 2
    file_mode_open_any = 3
    file_mode_save_file = 4
}

pub enum EditorFileDialogAccess {
    access_resources = 0
    access_userdata = 1
    access_filesystem = 2
}

pub enum EditorFileDialogDisplayMode {
    display_thumbnails = 0
    display_list = 1
}

pub type EditorFileDialog = voidptr

pub fn (mut r EditorFileDialog) clear_filters() {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("clear_filters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorFileDialog) add_filter(filter String, description String) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("add_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 233059325)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorFileDialog) set_filters(filters PackedStringArray) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_filters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorFileDialog) get_filters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_filters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileDialog) get_current_dir() String {
    mut object_out := String{}
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileDialog) get_current_file() String {
    mut object_out := String{}
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileDialog) get_current_path() String {
    mut object_out := String{}
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileDialog) set_current_dir(dir String) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorFileDialog) set_current_file(file String) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorFileDialog) set_current_path(path String) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorFileDialog) set_file_mode(mode EditorFileDialogFileMode) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_file_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 274150415)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorFileDialog) get_file_mode() EditorFileDialogFileMode {
    mut object_out := EditorFileDialogFileMode.file_mode_open_file
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2681044145)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileDialog) get_vbox() VBoxContainer {
    mut object_out := VBoxContainer(unsafe{nil})
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_vbox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 915758477)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileDialog) get_line_edit() LineEdit {
    mut object_out := LineEdit(unsafe{nil})
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_edit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071694264)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileDialog) set_access(access EditorFileDialogAccess) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_access")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3882893764)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorFileDialog) get_access() EditorFileDialogAccess {
    mut object_out := EditorFileDialogAccess.access_resources
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_access")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 778734016)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileDialog) set_show_hidden_files(show bool) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_show_hidden_files")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorFileDialog) is_showing_hidden_files() bool {
    mut object_out := false
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("is_showing_hidden_files")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileDialog) set_display_mode(mode EditorFileDialogDisplayMode) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_display_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3049004050)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorFileDialog) get_display_mode() EditorFileDialogDisplayMode {
    mut object_out := EditorFileDialogDisplayMode.display_thumbnails
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3517174669)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileDialog) set_disable_overwrite_warning(disable bool) {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_overwrite_warning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorFileDialog) is_overwrite_warning_disabled() bool {
    mut object_out := false
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("is_overwrite_warning_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileDialog) invalidate() {
    classname := StringName.new("EditorFileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("invalidate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
