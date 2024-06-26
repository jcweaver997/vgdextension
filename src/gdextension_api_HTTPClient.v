module vgdextension

pub enum HTTPClientMethod as i64 {
    method_get = 0
    method_head = 1
    method_post = 2
    method_put = 3
    method_delete = 4
    method_options = 5
    method_trace = 6
    method_connect = 7
    method_patch = 8
    method_max = 9
}

pub enum HTTPClientStatus as i64 {
    status_disconnected = 0
    status_resolving = 1
    status_cant_resolve = 2
    status_connecting = 3
    status_cant_connect = 4
    status_connected = 5
    status_requesting = 6
    status_body = 7
    status_connection_error = 8
    status_tls_handshake_error = 9
}

pub enum HTTPClientResponseCode as i64 {
    response_continue = 100
    response_switching_protocols = 101
    response_processing = 102
    response_ok = 200
    response_created = 201
    response_accepted = 202
    response_non_authoritative_information = 203
    response_no_content = 204
    response_reset_content = 205
    response_partial_content = 206
    response_multi_status = 207
    response_already_reported = 208
    response_im_used = 226
    response_multiple_choices = 300
    response_moved_permanently = 301
    response_found = 302
    response_see_other = 303
    response_not_modified = 304
    response_use_proxy = 305
    response_switch_proxy = 306
    response_temporary_redirect = 307
    response_permanent_redirect = 308
    response_bad_request = 400
    response_unauthorized = 401
    response_payment_required = 402
    response_forbidden = 403
    response_not_found = 404
    response_method_not_allowed = 405
    response_not_acceptable = 406
    response_proxy_authentication_required = 407
    response_request_timeout = 408
    response_conflict = 409
    response_gone = 410
    response_length_required = 411
    response_precondition_failed = 412
    response_request_entity_too_large = 413
    response_request_uri_too_long = 414
    response_unsupported_media_type = 415
    response_requested_range_not_satisfiable = 416
    response_expectation_failed = 417
    response_im_a_teapot = 418
    response_misdirected_request = 421
    response_unprocessable_entity = 422
    response_locked = 423
    response_failed_dependency = 424
    response_upgrade_required = 426
    response_precondition_required = 428
    response_too_many_requests = 429
    response_request_header_fields_too_large = 431
    response_unavailable_for_legal_reasons = 451
    response_internal_server_error = 500
    response_not_implemented = 501
    response_bad_gateway = 502
    response_service_unavailable = 503
    response_gateway_timeout = 504
    response_http_version_not_supported = 505
    response_variant_also_negotiates = 506
    response_insufficient_storage = 507
    response_loop_detected = 508
    response_not_extended = 510
    response_network_auth_required = 511
}

@[noinit]
pub struct HTTPClient {
    RefCounted
}

pub fn (r &HTTPClient) connect_to_host(host string, port i32, tls_options TLSOptions) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("connect_to_host")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 504540374)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(host)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&port)}
    args[2] = voidptr(&tls_options.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HTTPClient) set_connection(connection StreamPeer) {
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("set_connection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3281897016)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&connection.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPClient) get_connection() StreamPeer {
    mut object_out := StreamPeer{}
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("get_connection")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2741655269)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) request_raw(method HTTPClientMethod, url string, headers PackedStringArray, body PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("request_raw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 540161961)
    mut args := unsafe { [4]voidptr{} }
    i64_method := i64(method)
    args[0] = unsafe{voidptr(&i64_method)}
    arg_sn1 := String.new(url)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&headers)}
    args[3] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HTTPClient) request(method HTTPClientMethod, url string, headers PackedStringArray, body string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("request")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3778990155)
    mut args := unsafe { [4]voidptr{} }
    i64_method := i64(method)
    args[0] = unsafe{voidptr(&i64_method)}
    arg_sn1 := String.new(url)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&headers)}
    arg_sn3 := String.new(body)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HTTPClient) close() {
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPClient) has_response() bool {
    mut object_out := false
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("has_response")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) is_response_chunked() bool {
    mut object_out := false
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("is_response_chunked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) get_response_code() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("get_response_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) get_response_headers() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("get_response_headers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) get_response_headers_as_dictionary() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("get_response_headers_as_dictionary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) get_response_body_length() i64 {
    mut object_out := i64(0)
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("get_response_body_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) read_response_body_chunk() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("read_response_body_chunk")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) set_read_chunk_size(bytes i32) {
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("set_read_chunk_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPClient) get_read_chunk_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("get_read_chunk_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) set_blocking_mode(enabled bool) {
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("set_blocking_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HTTPClient) is_blocking_mode_enabled() bool {
    mut object_out := false
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("is_blocking_mode_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HTTPClient) get_status() HTTPClientStatus {
    mut object_out := i64(HTTPClientStatus.status_disconnected)
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("get_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1426656811)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HTTPClientStatus(object_out)}
}
pub fn (r &HTTPClient) poll() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HTTPClient) set_http_proxy(host string, port i32) {
    classname := StringName.new("HTTPClient")
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
pub fn (r &HTTPClient) set_https_proxy(host string, port i32) {
    classname := StringName.new("HTTPClient")
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
pub fn (r &HTTPClient) query_string_from_dict(fields Dictionary) string {
    mut object_out := String{}
    classname := StringName.new("HTTPClient")
    fnname := StringName.new("query_string_from_dict")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2538086567)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fields)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
