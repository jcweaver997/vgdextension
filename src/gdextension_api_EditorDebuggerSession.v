module vgdextension

@[noinit]
pub struct EditorDebuggerSession {
    RefCounted
}

pub fn (mut r EditorDebuggerSession) send_message(message string, data Array) {
    classname := StringName.new("EditorDebuggerSession")
    fnname := StringName.new("send_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 85656714)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorDebuggerSession) toggle_profiler(profiler string, enable bool, data Array) {
    classname := StringName.new("EditorDebuggerSession")
    fnname := StringName.new("toggle_profiler")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1198443697)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(profiler)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorDebuggerSession) is_breaked() bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerSession")
    fnname := StringName.new("is_breaked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorDebuggerSession) is_debuggable() bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerSession")
    fnname := StringName.new("is_debuggable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorDebuggerSession) is_active() bool {
    mut object_out := false
    classname := StringName.new("EditorDebuggerSession")
    fnname := StringName.new("is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorDebuggerSession) add_session_tab(control Control) {
    classname := StringName.new("EditorDebuggerSession")
    fnname := StringName.new("add_session_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorDebuggerSession) remove_session_tab(control Control) {
    classname := StringName.new("EditorDebuggerSession")
    fnname := StringName.new("remove_session_tab")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
