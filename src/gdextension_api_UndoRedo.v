module vgdextension

pub enum UndoRedoMergeMode as i64 {
    merge_disable = 0
    merge_ends = 1
    merge_all = 2
}

@[noinit]
pub struct UndoRedo {
    Object
}

pub fn (r &UndoRedo) create_action(name string, merge_mode UndoRedoMergeMode, backward_undo_ops bool) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("create_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3171901514)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    i64_merge_mode := i64(merge_mode)
    args[1] = unsafe{voidptr(&i64_merge_mode)}
    args[2] = unsafe{voidptr(&backward_undo_ops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) commit_action(execute bool) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("commit_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&execute)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) is_committing_action() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("is_committing_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UndoRedo) add_do_method(callable Callable) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("add_do_method")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) add_undo_method(callable Callable) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("add_undo_method")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) add_do_property(object Object, property string, value Variant) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("add_do_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&object.ptr)
    arg_sn1 := StringName.new(property)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) add_undo_property(object Object, property string, value Variant) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("add_undo_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&object.ptr)
    arg_sn1 := StringName.new(property)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) add_do_reference(object Object) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("add_do_reference")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&object.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) add_undo_reference(object Object) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("add_undo_reference")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&object.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) start_force_keep_in_merge_ends() {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("start_force_keep_in_merge_ends")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) end_force_keep_in_merge_ends() {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("end_force_keep_in_merge_ends")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) get_history_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("get_history_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UndoRedo) get_current_action() i32 {
    mut object_out := i32(0)
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("get_current_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UndoRedo) get_action_name(id i32) string {
    mut object_out := String{}
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("get_action_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &UndoRedo) clear_history(increase_version bool) {
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("clear_history")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&increase_version)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UndoRedo) get_current_action_name() string {
    mut object_out := String{}
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("get_current_action_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &UndoRedo) has_undo() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("has_undo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UndoRedo) has_redo() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("has_redo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UndoRedo) get_version() u64 {
    mut object_out := u64(0)
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("get_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UndoRedo) redo() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("redo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UndoRedo) undo() bool {
    mut object_out := false
    classname := StringName.new("UndoRedo")
    fnname := StringName.new("undo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
