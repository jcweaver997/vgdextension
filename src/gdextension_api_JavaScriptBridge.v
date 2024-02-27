module vgdextension

@[noinit]
pub struct JavaScriptBridge {
    Object
}

pub fn JavaScriptBridge.get_singleton() JavaScriptBridge {
    sn := StringName.new("JavaScriptBridge")
    o := JavaScriptBridge{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r JavaScriptBridge) eval(code string, use_global_execution_context bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("JavaScriptBridge")
    fnname := StringName.new("eval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 218087648)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(code)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&use_global_execution_context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JavaScriptBridge) get_interface(gdinterface string) JavaScriptObject {
    mut object_out := JavaScriptObject{}
    classname := StringName.new("JavaScriptBridge")
    fnname := StringName.new("get_interface")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1355533281)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(gdinterface)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JavaScriptBridge) create_callback(callable Callable) JavaScriptObject {
    mut object_out := JavaScriptObject{}
    classname := StringName.new("JavaScriptBridge")
    fnname := StringName.new("create_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 422818440)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JavaScriptBridge) download_buffer(buffer PackedByteArray, name string, mime string) {
    classname := StringName.new("JavaScriptBridge")
    fnname := StringName.new("download_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3352272093)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(mime)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &JavaScriptBridge) pwa_needs_update() bool {
    mut object_out := false
    classname := StringName.new("JavaScriptBridge")
    fnname := StringName.new("pwa_needs_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JavaScriptBridge) pwa_update() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("JavaScriptBridge")
    fnname := StringName.new("pwa_update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r JavaScriptBridge) force_fs_sync() {
    classname := StringName.new("JavaScriptBridge")
    fnname := StringName.new("force_fs_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
