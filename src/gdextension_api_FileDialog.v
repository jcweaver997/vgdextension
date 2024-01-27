pub enum FileDialogFileMode {
    file_mode_open_file = 0
    file_mode_open_files = 1
    file_mode_open_dir = 2
    file_mode_open_any = 3
    file_mode_save_file = 4
}

pub enum FileDialogAccess {
    access_resources = 0
    access_userdata = 1
    access_filesystem = 2
}

pub type FileDialog = voidptr

pub fn (mut r FileDialog) clear_filters() {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("clear_filters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileDialog) add_filter(filter String, description String) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("add_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 233059325)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileDialog) set_filters(filters PackedStringArray) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_filters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileDialog) get_filters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_filters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileDialog) get_current_dir() String {
    mut object_out := String{}
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileDialog) get_current_file() String {
    mut object_out := String{}
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileDialog) get_current_path() String {
    mut object_out := String{}
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileDialog) set_current_dir(dir String) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileDialog) set_current_file(file String) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileDialog) set_current_path(path String) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_current_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileDialog) set_mode_overrides_title(override bool) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode_overrides_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileDialog) is_mode_overriding_title() bool {
    mut object_out := false
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("is_mode_overriding_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileDialog) set_file_mode(mode FileDialogFileMode) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_file_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3654936397)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileDialog) get_file_mode() FileDialogFileMode {
    mut object_out := FileDialogFileMode.file_mode_open_file
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4074825319)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileDialog) get_vbox() VBoxContainer {
    mut object_out := VBoxContainer(unsafe{nil})
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_vbox")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 915758477)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileDialog) get_line_edit() LineEdit {
    mut object_out := LineEdit(unsafe{nil})
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_edit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071694264)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileDialog) set_access(access FileDialogAccess) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_access")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4104413466)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileDialog) get_access() FileDialogAccess {
    mut object_out := FileDialogAccess.access_resources
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_access")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344081076)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileDialog) set_root_subfolder(dir String) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_root_subfolder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileDialog) get_root_subfolder() String {
    mut object_out := String{}
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_subfolder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileDialog) set_show_hidden_files(show bool) {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("set_show_hidden_files")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileDialog) is_showing_hidden_files() bool {
    mut object_out := false
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("is_showing_hidden_files")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileDialog) deselect_all() {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("deselect_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileDialog) invalidate() {
    classname := StringName.new("FileDialog")
    defer { classname.deinit() }
    fnname := StringName.new("invalidate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
