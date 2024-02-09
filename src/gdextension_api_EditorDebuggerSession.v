module vgdextension

pub struct EditorDebuggerSession {
    RefCounted
}

pub fn (mut r EditorDebuggerSession) send_message(message String, data Array) {
    classname := StringName.new("EditorDebuggerSession")
    defer { classname.deinit() }
    fnname := StringName.new("send_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780025912)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorDebuggerSession) toggle_profiler(profiler String, enable bool, data Array) {
    classname := StringName.new("EditorDebuggerSession")
    defer { classname.deinit() }
    fnname := StringName.new("toggle_profiler")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 35674246)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&profiler)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorDebuggerSession) is_breaked() bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerSession")
    defer { classname.deinit() }
    fnname := StringName.new("is_breaked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorDebuggerSession) is_debuggable() bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerSession")
    defer { classname.deinit() }
    fnname := StringName.new("is_debuggable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorDebuggerSession) is_active() bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerSession")
    defer { classname.deinit() }
    fnname := StringName.new("is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorDebuggerSession) add_session_tab(control Control) {
    classname := StringName.new("EditorDebuggerSession")
    defer { classname.deinit() }
    fnname := StringName.new("add_session_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorDebuggerSession) remove_session_tab(control Control) {
    classname := StringName.new("EditorDebuggerSession")
    defer { classname.deinit() }
    fnname := StringName.new("remove_session_tab")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
