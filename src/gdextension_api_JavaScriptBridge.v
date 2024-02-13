module vgdextension

@[noinit]
pub struct JavaScriptBridge {
    Object
}

pub fn JavaScriptBridge.get_singleton() JavaScriptBridge {
    sn := StringName.new("JavaScriptBridge")
    defer {sn.deinit()}
    o := JavaScriptBridge{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r JavaScriptBridge) eval(code String, use_global_execution_context bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("JavaScriptBridge")
    defer { classname.deinit() }
    fnname := StringName.new("eval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 218087648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    args[1] = unsafe{voidptr(&use_global_execution_context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r JavaScriptBridge) get_interface(gdinterface String) JavaScriptObject {
    mut object_out := JavaScriptObject{}
    classname := StringName.new("JavaScriptBridge")
    defer { classname.deinit() }
    fnname := StringName.new("get_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1355533281)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdinterface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r JavaScriptBridge) create_callback(callable Callable) JavaScriptObject {
    mut object_out := JavaScriptObject{}
    classname := StringName.new("JavaScriptBridge")
    defer { classname.deinit() }
    fnname := StringName.new("create_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 422818440)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r JavaScriptBridge) download_buffer(buffer PackedByteArray, name String, mime String) {
    classname := StringName.new("JavaScriptBridge")
    defer { classname.deinit() }
    fnname := StringName.new("download_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4123979296)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&mime)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &JavaScriptBridge) pwa_needs_update() bool {
    mut object_out := false
    classname := StringName.new("JavaScriptBridge")
    defer { classname.deinit() }
    fnname := StringName.new("pwa_needs_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r JavaScriptBridge) pwa_update() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("JavaScriptBridge")
    defer { classname.deinit() }
    fnname := StringName.new("pwa_update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r JavaScriptBridge) force_fs_sync() {
    classname := StringName.new("JavaScriptBridge")
    defer { classname.deinit() }
    fnname := StringName.new("force_fs_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
