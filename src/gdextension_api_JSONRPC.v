module vgdextension

pub enum JSONRPCErrorCode as i64 {
    parse_error = -32700
    invalid_request = -32600
    method_not_found = -32601
    invalid_params = -32602
    internal_error = -32603
}

@[noinit]
pub struct JSONRPC {
    Object
}

pub fn (mut r JSONRPC) set_scope(scope String, target Object) {
    classname := StringName.new("JSONRPC")
    fnname := StringName.new("set_scope")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2572618360)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&scope)}
    args[1] = target.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r JSONRPC) process_action(action Variant, recurse bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("JSONRPC")
    fnname := StringName.new("process_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2963479484)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&recurse)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JSONRPC) process_string(action String) String {
    mut object_out := String{}
    classname := StringName.new("JSONRPC")
    fnname := StringName.new("process_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JSONRPC) make_request(method String, params Variant, id Variant) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("JSONRPC")
    fnname := StringName.new("make_request")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3423508980)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&method)}
    args[1] = unsafe{voidptr(&params)}
    args[2] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JSONRPC) make_response(result Variant, id Variant) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("JSONRPC")
    fnname := StringName.new("make_response")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5053918)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&result)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JSONRPC) make_notification(method String, params Variant) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("JSONRPC")
    fnname := StringName.new("make_notification")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2949127017)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&method)}
    args[1] = unsafe{voidptr(&params)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &JSONRPC) make_response_error(code i32, message String, id Variant) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("JSONRPC")
    fnname := StringName.new("make_response_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 928596297)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    args[1] = unsafe{voidptr(&message)}
    args[2] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
