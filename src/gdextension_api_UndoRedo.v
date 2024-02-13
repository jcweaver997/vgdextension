module vgdextension

pub enum UndoRedoMergeMode {
    merge_disable = 0
    merge_ends = 1
    merge_all = 2
}

@[noinit]
pub struct UndoRedo {
    Object
}

pub fn (mut r UndoRedo) create_action(name String, merge_mode UndoRedoMergeMode, backward_undo_ops bool) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("create_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900135403)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&merge_mode)}
    args[2] = unsafe{voidptr(&backward_undo_ops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r UndoRedo) commit_action(execute bool) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("commit_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&execute)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &UndoRedo) is_committing_action() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("is_committing_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UndoRedo) add_do_method(callable Callable) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("add_do_method")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r UndoRedo) add_undo_method(callable Callable) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("add_undo_method")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r UndoRedo) add_do_property(object Object, property StringName, value Variant) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("add_do_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
    mut args := unsafe { [3]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&property)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r UndoRedo) add_undo_property(object Object, property StringName, value Variant) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("add_undo_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
    mut args := unsafe { [3]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&property)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r UndoRedo) add_do_reference(object Object) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("add_do_reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r UndoRedo) add_undo_reference(object Object) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("add_undo_reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r UndoRedo) start_force_keep_in_merge_ends() {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("start_force_keep_in_merge_ends")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r UndoRedo) end_force_keep_in_merge_ends() {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("end_force_keep_in_merge_ends")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r UndoRedo) get_history_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("get_history_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UndoRedo) get_current_action() i32 {
    mut object_out := i32(0)
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UndoRedo) get_action_name(id i32) String {
    mut object_out := String{}
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r UndoRedo) clear_history(increase_version bool) {
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("clear_history")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&increase_version)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &UndoRedo) get_current_action_name() String {
    mut object_out := String{}
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_action_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &UndoRedo) has_undo() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("has_undo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &UndoRedo) has_redo() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("has_redo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &UndoRedo) get_version() u64 {
    mut object_out := u64(0)
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("get_version")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UndoRedo) redo() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("redo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UndoRedo) undo() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    defer { classname.deinit() }
    fnname := StringName.new("undo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
