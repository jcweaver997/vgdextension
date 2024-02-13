module vgdextension

pub enum HTTPRequestResult {
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

pub fn (mut r HTTPRequest) request(url String, custom_headers PackedStringArray, method HTTPClientMethod, request_data String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("request")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2720304520)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&url)}
    args[1] = unsafe{voidptr(&custom_headers)}
    args[2] = unsafe{voidptr(&method)}
    args[3] = unsafe{voidptr(&request_data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) request_raw(url String, custom_headers PackedStringArray, method HTTPClientMethod, request_data_raw PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("request_raw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4282724657)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&url)}
    args[1] = unsafe{voidptr(&custom_headers)}
    args[2] = unsafe{voidptr(&method)}
    args[3] = unsafe{voidptr(&request_data_raw)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) cancel_request() {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("cancel_request")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r HTTPRequest) set_tls_options(client_options TLSOptions) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_tls_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2210231844)
    mut args := unsafe { [1]voidptr{} }
    args[0] = client_options.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HTTPRequest) get_http_client_status() HTTPClientStatus {
    mut object_out := HTTPClientStatus.status_disconnected
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("get_http_client_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1426656811)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) set_use_threads(enable bool) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_threads")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HTTPRequest) is_using_threads() bool {
    mut object_out := false
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_threads")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) set_accept_gzip(enable bool) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_accept_gzip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HTTPRequest) is_accepting_gzip() bool {
    mut object_out := false
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("is_accepting_gzip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) set_body_size_limit(bytes i32) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_body_size_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HTTPRequest) get_body_size_limit() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("get_body_size_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) set_max_redirects(amount i32) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_redirects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HTTPRequest) get_max_redirects() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_redirects")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) set_download_file(path String) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_download_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HTTPRequest) get_download_file() String {
    mut object_out := String{}
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("get_download_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &HTTPRequest) get_downloaded_bytes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("get_downloaded_bytes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &HTTPRequest) get_body_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("get_body_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) set_timeout(timeout f64) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_timeout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&timeout)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r HTTPRequest) get_timeout() f64 {
    mut object_out := f64(0)
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("get_timeout")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) set_download_chunk_size(chunk_size i32) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_download_chunk_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&chunk_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &HTTPRequest) get_download_chunk_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("get_download_chunk_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HTTPRequest) set_http_proxy(host String, port i32) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_http_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&host)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r HTTPRequest) set_https_proxy(host String, port i32) {
    classname := StringName.new("HTTPRequest")
    defer { classname.deinit() }
    fnname := StringName.new("set_https_proxy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&host)}
    args[1] = unsafe{voidptr(&port)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
