module vgdextension

pub type EditorDebuggerPlugin = voidptr

pub fn (mut r EditorDebuggerPlugin) usetup_session(session_id i32) {
    classname := StringName.new("EditorDebuggerPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_setup_session")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorDebuggerPlugin) get_session(id i32) EditorDebuggerSession {
    mut object_out := EditorDebuggerSession(unsafe{nil})
    classname := StringName.new("EditorDebuggerPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("get_session")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3061968499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorDebuggerPlugin) get_sessions() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorDebuggerPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("get_sessions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
