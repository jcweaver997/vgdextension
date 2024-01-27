pub type TLSOptions = voidptr

pub fn TLSOptions.client(trusted_chain X509Certificate, common_name_override String) TLSOptions {
    mut object_out := TLSOptions(unsafe{nil})
    classname := StringName.new("TLSOptions")
    defer { classname.deinit() }
    fnname := StringName.new("client")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565000357)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&trusted_chain)}
    args[1] = unsafe{voidptr(&common_name_override)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn TLSOptions.client_unsafe(trusted_chain X509Certificate) TLSOptions {
    mut object_out := TLSOptions(unsafe{nil})
    classname := StringName.new("TLSOptions")
    defer { classname.deinit() }
    fnname := StringName.new("client_unsafe")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2090251749)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&trusted_chain)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn TLSOptions.server(key CryptoKey, certificate X509Certificate) TLSOptions {
    mut object_out := TLSOptions(unsafe{nil})
    classname := StringName.new("TLSOptions")
    defer { classname.deinit() }
    fnname := StringName.new("server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36969539)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&key)}
    args[1] = unsafe{voidptr(&certificate)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
