module vgdextension

@[noinit]
pub struct TLSOptions {
    RefCounted
}

pub fn TLSOptions.client(trusted_chain X509Certificate, common_name_override String) TLSOptions {
    mut object_out := TLSOptions{}
    classname := StringName.new("TLSOptions")
    fnname := StringName.new("client")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565000357)
    mut args := unsafe { [2]voidptr{} }
    args[0] = trusted_chain.ptr
    args[1] = unsafe{voidptr(&common_name_override)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn TLSOptions.client_unsafe(trusted_chain X509Certificate) TLSOptions {
    mut object_out := TLSOptions{}
    classname := StringName.new("TLSOptions")
    fnname := StringName.new("client_unsafe")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2090251749)
    mut args := unsafe { [1]voidptr{} }
    args[0] = trusted_chain.ptr
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn TLSOptions.server(key CryptoKey, certificate X509Certificate) TLSOptions {
    mut object_out := TLSOptions{}
    classname := StringName.new("TLSOptions")
    fnname := StringName.new("server")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36969539)
    mut args := unsafe { [2]voidptr{} }
    args[0] = key.ptr
    args[1] = certificate.ptr
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
