module vgdextension

pub enum EditorVCSInterfaceChangeType as i64 {
    change_type_new = 0
    change_type_modified = 1
    change_type_renamed = 2
    change_type_deleted = 3
    change_type_typechange = 4
    change_type_unmerged = 5
}

pub enum EditorVCSInterfaceTreeArea as i64 {
    tree_area_commit = 0
    tree_area_staged = 1
    tree_area_unstaged = 2
}

@[noinit]
pub struct EditorVCSInterface {
    Object
}

pub interface IEditorVCSInterfaceInitialize {
    mut:
    virt_initialize(project_path String) bool
}

pub fn (r &EditorVCSInterface) uinitialize(project_path string) bool {
    mut object_out := false
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_initialize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(project_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorVCSInterfaceSetCredentials {
    mut:
    virt_set_credentials(username String, password String, ssh_public_key_path String, ssh_private_key_path String, ssh_passphrase String)
}

pub fn (r &EditorVCSInterface) uset_credentials(username string, password string, ssh_public_key_path string, ssh_private_key_path string, ssh_passphrase string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_set_credentials")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := String.new(username)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(password)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(ssh_public_key_path)
    args[2] = unsafe{voidptr(&arg_sn2)}
    arg_sn3 := String.new(ssh_private_key_path)
    args[3] = unsafe{voidptr(&arg_sn3)}
    arg_sn4 := String.new(ssh_passphrase)
    args[4] = unsafe{voidptr(&arg_sn4)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    arg_sn3.deinit()
    arg_sn4.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceGetModifiedFilesData {
    mut:
    virt_get_modified_files_data() Array
}

pub fn (r &EditorVCSInterface) uget_modified_files_data() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_get_modified_files_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorVCSInterfaceStageFile {
    mut:
    virt_stage_file(file_path String)
}

pub fn (r &EditorVCSInterface) ustage_file(file_path string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_stage_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(file_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceUnstageFile {
    mut:
    virt_unstage_file(file_path String)
}

pub fn (r &EditorVCSInterface) uunstage_file(file_path string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_unstage_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(file_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceDiscardFile {
    mut:
    virt_discard_file(file_path String)
}

pub fn (r &EditorVCSInterface) udiscard_file(file_path string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_discard_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(file_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceCommit {
    mut:
    virt_commit(msg String)
}

pub fn (r &EditorVCSInterface) ucommit(msg string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_commit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(msg)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceGetDiff {
    mut:
    virt_get_diff(identifier String, area i32) Array
}

pub fn (r &EditorVCSInterface) uget_diff(identifier string, area i32) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_get_diff")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(identifier)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorVCSInterfaceShutDown {
    mut:
    virt_shut_down() bool
}

pub fn (r &EditorVCSInterface) ushut_down() bool {
    mut object_out := false
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_shut_down")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorVCSInterfaceGetVcsName {
    mut:
    virt_get_vcs_name() String
}

pub fn (r &EditorVCSInterface) uget_vcs_name() string {
    mut object_out := String{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_get_vcs_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorVCSInterfaceGetPreviousCommits {
    mut:
    virt_get_previous_commits(max_commits i32) Array
}

pub fn (r &EditorVCSInterface) uget_previous_commits(max_commits i32) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_get_previous_commits")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_commits)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorVCSInterfaceGetBranchList {
    mut:
    virt_get_branch_list() Array
}

pub fn (r &EditorVCSInterface) uget_branch_list() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_get_branch_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorVCSInterfaceGetRemotes {
    mut:
    virt_get_remotes() Array
}

pub fn (r &EditorVCSInterface) uget_remotes() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_get_remotes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorVCSInterfaceCreateBranch {
    mut:
    virt_create_branch(branch_name String)
}

pub fn (r &EditorVCSInterface) ucreate_branch(branch_name string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_create_branch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(branch_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceRemoveBranch {
    mut:
    virt_remove_branch(branch_name String)
}

pub fn (r &EditorVCSInterface) uremove_branch(branch_name string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_remove_branch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(branch_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceCreateRemote {
    mut:
    virt_create_remote(remote_name String, remote_url String)
}

pub fn (r &EditorVCSInterface) ucreate_remote(remote_name string, remote_url string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_create_remote")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(remote_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(remote_url)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceRemoveRemote {
    mut:
    virt_remove_remote(remote_name String)
}

pub fn (r &EditorVCSInterface) uremove_remote(remote_name string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_remove_remote")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(remote_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceGetCurrentBranchName {
    mut:
    virt_get_current_branch_name() String
}

pub fn (r &EditorVCSInterface) uget_current_branch_name() string {
    mut object_out := String{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_get_current_branch_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorVCSInterfaceCheckoutBranch {
    mut:
    virt_checkout_branch(branch_name String) bool
}

pub fn (r &EditorVCSInterface) ucheckout_branch(branch_name string) bool {
    mut object_out := false
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_checkout_branch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(branch_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorVCSInterfacePull {
    mut:
    virt_pull(remote String)
}

pub fn (r &EditorVCSInterface) upull(remote string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_pull")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(remote)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfacePush {
    mut:
    virt_push(remote String, force bool)
}

pub fn (r &EditorVCSInterface) upush(remote string, force bool) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_push")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(remote)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceFetch {
    mut:
    virt_fetch(remote String)
}

pub fn (r &EditorVCSInterface) ufetch(remote string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_fetch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(remote)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorVCSInterfaceGetLineDiff {
    mut:
    virt_get_line_diff(file_path String, text String) Array
}

pub fn (r &EditorVCSInterface) uget_line_diff(file_path string, text string) Array {
    mut object_out := Array{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("_get_line_diff")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(file_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorVCSInterface) create_diff_line(new_line_no i32, old_line_no i32, content string, status string) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("create_diff_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2901184053)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&new_line_no)}
    args[1] = unsafe{voidptr(&old_line_no)}
    arg_sn2 := String.new(content)
    args[2] = unsafe{voidptr(&arg_sn2)}
    arg_sn3 := String.new(status)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn2.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorVCSInterface) create_diff_hunk(old_start i32, new_start i32, old_lines i32, new_lines i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("create_diff_hunk")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3784842090)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&old_start)}
    args[1] = unsafe{voidptr(&new_start)}
    args[2] = unsafe{voidptr(&old_lines)}
    args[3] = unsafe{voidptr(&new_lines)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorVCSInterface) create_diff_file(new_file string, old_file string) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("create_diff_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2723227684)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(new_file)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(old_file)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorVCSInterface) create_commit(msg string, author string, id string, unix_timestamp i64, offset_minutes i64) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("create_commit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1075983584)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := String.new(msg)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(author)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(id)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&unix_timestamp)}
    args[4] = unsafe{voidptr(&offset_minutes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorVCSInterface) create_status_file(file_path string, change_type EditorVCSInterfaceChangeType, area EditorVCSInterfaceTreeArea) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("create_status_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1083471673)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(file_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    i64_change_type := i64(change_type)
    args[1] = unsafe{voidptr(&i64_change_type)}
    i64_area := i64(area)
    args[2] = unsafe{voidptr(&i64_area)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorVCSInterface) add_diff_hunks_into_diff_file(diff_file Dictionary, diff_hunks Array) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("add_diff_hunks_into_diff_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015243225)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&diff_file)}
    args[1] = unsafe{voidptr(&diff_hunks)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorVCSInterface) add_line_diffs_into_diff_hunk(diff_hunk Dictionary, line_diffs Array) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("add_line_diffs_into_diff_hunk")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015243225)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&diff_hunk)}
    args[1] = unsafe{voidptr(&line_diffs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorVCSInterface) popup_error(msg string) {
    classname := StringName.new("EditorVCSInterface")
    fnname := StringName.new("popup_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(msg)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
