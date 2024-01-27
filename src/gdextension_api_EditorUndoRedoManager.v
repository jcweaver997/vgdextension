pub enum EditorUndoRedoManagerSpecialHistory {
    global_history = 0
    remote_history = -9
    invalid_history = -99
}

pub type EditorUndoRedoManager = voidptr

pub fn (mut r EditorUndoRedoManager) create_action(name String, merge_mode UndoRedoMergeMode, custom_context Object, backward_undo_ops bool) {
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("create_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3577985681)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorUndoRedoManager) commit_action(execute bool) {
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("commit_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3216645846)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorUndoRedoManager) is_committing_action() bool {
    mut object_out := false
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("is_committing_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorUndoRedoManager) add_do_property(object Object, property StringName, value Variant) {
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("add_do_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorUndoRedoManager) add_undo_property(object Object, property StringName, value Variant) {
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("add_undo_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1017172818)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorUndoRedoManager) add_do_reference(object Object) {
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("add_do_reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorUndoRedoManager) add_undo_reference(object Object) {
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("add_undo_reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3975164845)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorUndoRedoManager) get_object_history_id(object Object) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("get_object_history_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1107568780)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorUndoRedoManager) get_history_undo_redo(id i32) UndoRedo {
    mut object_out := UndoRedo(unsafe{nil})
    classname := StringName.new("EditorUndoRedoManager")
    defer { classname.deinit() }
    fnname := StringName.new("get_history_undo_redo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2417974513)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
