module vgdextension

pub struct EditorDebuggerPlugin {
    RefCounted
}

pub interface IEditorDebuggerPluginSetupSession {
    mut:
    virt_setup_session(session_id i32)
}

pub fn (mut r EditorDebuggerPlugin) usetup_session(session_id i32) {
    classname := StringName.new("EditorDebuggerPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_setup_session")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&session_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorDebuggerPluginHasCapture {
    mut:
    virt_has_capture(capture String) bool
}

pub fn (r &EditorDebuggerPlugin) uhas_capture(capture String) bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_has_capture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&capture)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorDebuggerPluginCapture {
    mut:
    virt_capture(message String, data Array, session_id i32) bool
}

pub fn (mut r EditorDebuggerPlugin) ucapture(message String, data Array, session_id i32) bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_capture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&data)}
    args[2] = unsafe{voidptr(&session_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorDebuggerPlugin) get_session(id i32) EditorDebuggerSession {
    mut object_out := EditorDebuggerSession{}
    classname := StringName.new("EditorDebuggerPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("get_session")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3061968499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorDebuggerPlugin) get_sessions() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorDebuggerPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("get_sessions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
