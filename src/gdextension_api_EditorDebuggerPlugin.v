module vgdextension

@[noinit]
pub struct EditorDebuggerPlugin {
    RefCounted
}

pub interface IEditorDebuggerPluginSetupSession {
    mut:
    virt_setup_session(session_id i32)
}

pub fn (r &EditorDebuggerPlugin) usetup_session(session_id i32) {
    classname := StringName.new("EditorDebuggerPlugin")
    fnname := StringName.new("_setup_session")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&session_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorDebuggerPluginHasCapture {
    mut:
    virt_has_capture(capture String) bool
}

pub fn (r &EditorDebuggerPlugin) uhas_capture(capture string) bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerPlugin")
    fnname := StringName.new("_has_capture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(capture)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorDebuggerPluginCapture {
    mut:
    virt_capture(message String, data Array, session_id i32) bool
}

pub fn (r &EditorDebuggerPlugin) ucapture(message string, data Array, session_id i32) bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerPlugin")
    fnname := StringName.new("_capture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&data)}
    args[2] = unsafe{voidptr(&session_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorDebuggerPlugin) get_session(id i32) EditorDebuggerSession {
    mut object_out := EditorDebuggerSession{}
    classname := StringName.new("EditorDebuggerPlugin")
    fnname := StringName.new("get_session")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3061968499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorDebuggerPlugin) get_sessions() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorDebuggerPlugin")
    fnname := StringName.new("get_sessions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
