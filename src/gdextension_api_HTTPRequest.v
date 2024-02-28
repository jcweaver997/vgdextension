module vgdextension

pub enum HTTPRequestResult as i64 {
    result_success = 0
    result_chunked_body_size_mismatch = 1
    result_cant_connect = 2
    result_cant_resolve = 3
    result_connection_error = 4
    result_tls_handshake_error = 5
    result_no_response = 6
    result_body_size_limit_exceeded = 7
    result_body_decompress_failed = 8
    result_request_failed = 9
    result_download_file_cant_open = 10
    result_download_file_write_error = 11
    result_redirect_limit_reached = 12
    result_timeout = 13
}

@[noinit]
pub struct HTTPRequest {
    Node
}

pub fn (r &HTTPRequest) request(url string, custom_headers PackedStringArray, method HTTPClientMethod, request_data string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("request")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3215244323)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(url)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&custom_headers)}
    i64_method := i64(method)
    args[2] = unsafe{voidptr(&i64_method)}
    arg_sn3 := String.new(request_data)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HTTPRequest) request_raw(url string, custom_headers PackedStringArray, method HTTPClientMethod, request_data_raw PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("request_raw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2714829993)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(url)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&custom_headers)}
    i64_method := i64(method)
    args[2] = unsafe{voidptr(&i64_method)}
    args[3] = unsafe{voidptr(&request_data_raw)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HTTPRequest) cancel_request() {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("cancel_request")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) set_tls_options(client_options TLSOptions) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_tls_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2210231844)
    mut args := unsafe { [1]voidptr{} }
    args[0] = client_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) get_http_client_status() HTTPClientStatus {
    mut object_out := i64(HTTPClientStatus.status_disconnected)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("get_http_client_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1426656811)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HTTPClientStatus(object_out)}
}
pub fn (r &HTTPRequest) set_use_threads(enable bool) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_use_threads")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) is_using_threads() bool {
    mut object_out := false
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("is_using_threads")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPRequest) set_accept_gzip(enable bool) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_accept_gzip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) is_accepting_gzip() bool {
    mut object_out := false
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("is_accepting_gzip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPRequest) set_body_size_limit(bytes i32) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_body_size_limit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) get_body_size_limit() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("get_body_size_limit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPRequest) set_max_redirects(amount i32) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_max_redirects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) get_max_redirects() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("get_max_redirects")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPRequest) set_download_file(path string) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_download_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) get_download_file() string {
    mut object_out := String{}
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("get_download_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &HTTPRequest) get_downloaded_bytes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("get_downloaded_bytes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPRequest) get_body_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("get_body_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPRequest) set_timeout(timeout f64) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_timeout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&timeout)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) get_timeout() f64 {
    mut object_out := f64(0)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("get_timeout")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPRequest) set_download_chunk_size(chunk_size i32) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_download_chunk_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&chunk_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) get_download_chunk_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("get_download_chunk_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPRequest) set_http_proxy(host string, port i32) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_http_proxy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(host)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPRequest) set_https_proxy(host string, port i32) {
    classname := StringName.new("HTTPRequest")
    fnname := StringName.new("set_https_proxy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(host)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
