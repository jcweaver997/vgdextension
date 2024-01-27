module vgdextension

pub enum EditorVCSInterfaceChangeType {
    change_type_new = 0
    change_type_modified = 1
    change_type_renamed = 2
    change_type_deleted = 3
    change_type_typechange = 4
    change_type_unmerged = 5
}

pub enum EditorVCSInterfaceTreeArea {
    tree_area_commit = 0
    tree_area_staged = 1
    tree_area_unstaged = 2
}

pub type EditorVCSInterface = voidptr

pub fn (mut r EditorVCSInterface) uinitialize(project_path String) bool {
    mut object_out := false
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_initialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&project_path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) uset_credentials(username String, password String, ssh_public_key_path String, ssh_private_key_path String, ssh_passphrase String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_set_credentials")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) uget_modified_files_data() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_get_modified_files_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) ustage_file(file_path String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_stage_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) uunstage_file(file_path String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_unstage_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) udiscard_file(file_path String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_discard_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) ucommit(msg String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_commit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) uget_diff(identifier String, area i32) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_get_diff")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&identifier)}
    args[1] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) ushut_down() bool {
    mut object_out := false
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_shut_down")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) uget_vcs_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_get_vcs_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) uget_previous_commits(max_commits i32) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_get_previous_commits")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_commits)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) uget_branch_list() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_get_branch_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) uget_remotes() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_get_remotes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) ucreate_branch(branch_name String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_create_branch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) uremove_branch(branch_name String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_remove_branch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) ucreate_remote(remote_name String, remote_url String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_create_remote")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) uremove_remote(remote_name String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_remove_remote")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) uget_current_branch_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_get_current_branch_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) ucheckout_branch(branch_name String) bool {
    mut object_out := false
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_checkout_branch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&branch_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) upull(remote String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_pull")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) upush(remote String, force bool) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_push")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) ufetch(remote String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_fetch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorVCSInterface) uget_line_diff(file_path String, text String) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("_get_line_diff")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&file_path)}
    args[1] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) create_diff_line(new_line_no i32, old_line_no i32, content String, status String) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("create_diff_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2901184053)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&new_line_no)}
    args[1] = unsafe{voidptr(&old_line_no)}
    args[2] = unsafe{voidptr(&content)}
    args[3] = unsafe{voidptr(&status)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) create_diff_hunk(old_start i32, new_start i32, old_lines i32, new_lines i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("create_diff_hunk")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3784842090)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&old_start)}
    args[1] = unsafe{voidptr(&new_start)}
    args[2] = unsafe{voidptr(&old_lines)}
    args[3] = unsafe{voidptr(&new_lines)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) create_diff_file(new_file String, old_file String) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("create_diff_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2723227684)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&new_file)}
    args[1] = unsafe{voidptr(&old_file)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) create_commit(msg String, author String, id String, unix_timestamp i32, offset_minutes i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("create_commit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1075983584)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&msg)}
    args[1] = unsafe{voidptr(&author)}
    args[2] = unsafe{voidptr(&id)}
    args[3] = unsafe{voidptr(&unix_timestamp)}
    args[4] = unsafe{voidptr(&offset_minutes)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) create_status_file(file_path String, change_type EditorVCSInterfaceChangeType, area EditorVCSInterfaceTreeArea) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("create_status_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1083471673)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&file_path)}
    args[1] = unsafe{voidptr(&change_type)}
    args[2] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) add_diff_hunks_into_diff_file(diff_file Dictionary, diff_hunks Array) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("add_diff_hunks_into_diff_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015243225)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&diff_file)}
    args[1] = unsafe{voidptr(&diff_hunks)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) add_line_diffs_into_diff_hunk(diff_hunk Dictionary, line_diffs Array) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("add_line_diffs_into_diff_hunk")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015243225)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&diff_hunk)}
    args[1] = unsafe{voidptr(&line_diffs)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorVCSInterface) popup_error(msg String) {
    classname := StringName.new("EditorVCSInterface")
    defer { classname.deinit() }
    fnname := StringName.new("popup_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
