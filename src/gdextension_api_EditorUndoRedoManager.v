module vgdextension

pub enum EditorUndoRedoManagerSpecialHistory as i64 {
    global_history = 0
    remote_history = -9
    invalid_history = -99
}

@[noinit]
pub struct EditorUndoRedoManager {
    Object
}

pub fn (mut r EditorUndoRedoManager) create_action(name String, merge_mode UndoRedoMergeMode, custom_context Object, backward_undo_ops bool) {
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("create_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2107025470)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    i64_merge_mode := i64(merge_mode)
    args[1] = unsafe{voidptr(&i64_merge_mode)}
    args[2] = custom_context.ptr
    args[3] = unsafe{voidptr(&backward_undo_ops)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorUndoRedoManager) commit_action(execute bool) {
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("commit_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&execute)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorUndoRedoManager) is_committing_action() bool {
    mut object_out := false
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("is_committing_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorUndoRedoManager) add_do_property(object Object, property StringName, value Variant) {
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("add_do_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
    mut args := unsafe { [3]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&property)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorUndoRedoManager) add_undo_property(object Object, property StringName, value Variant) {
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("add_undo_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
    mut args := unsafe { [3]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&property)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorUndoRedoManager) add_do_reference(object Object) {
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("add_do_reference")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorUndoRedoManager) add_undo_reference(object Object) {
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("add_undo_reference")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorUndoRedoManager) get_object_history_id(object Object) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("get_object_history_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107568780)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorUndoRedoManager) get_history_undo_redo(id i32) UndoRedo {
    mut object_out := UndoRedo{}
    classname := StringName.new("EditorUndoRedoManager")
    fnname := StringName.new("get_history_undo_redo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2417974513)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
