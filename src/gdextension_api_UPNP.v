pub enum UPNPUPNPResult {
    upnp_result_success = 0
    upnp_result_not_authorized = 1
    upnp_result_port_mapping_not_found = 2
    upnp_result_inconsistent_parameters = 3
    upnp_result_no_such_entry_in_array = 4
    upnp_result_action_failed = 5
    upnp_result_src_ip_wildcard_not_permitted = 6
    upnp_result_ext_port_wildcard_not_permitted = 7
    upnp_result_int_port_wildcard_not_permitted = 8
    upnp_result_remote_host_must_be_wildcard = 9
    upnp_result_ext_port_must_be_wildcard = 10
    upnp_result_no_port_maps_available = 11
    upnp_result_conflict_with_other_mechanism = 12
    upnp_result_conflict_with_other_mapping = 13
    upnp_result_same_port_values_required = 14
    upnp_result_only_permanent_lease_supported = 15
    upnp_result_invalid_gateway = 16
    upnp_result_invalid_port = 17
    upnp_result_invalid_protocol = 18
    upnp_result_invalid_duration = 19
    upnp_result_invalid_args = 20
    upnp_result_invalid_response = 21
    upnp_result_invalid_param = 22
    upnp_result_http_error = 23
    upnp_result_socket_error = 24
    upnp_result_mem_alloc_error = 25
    upnp_result_no_gateway = 26
    upnp_result_no_devices = 27
    upnp_result_unknown_error = 28
}

pub type UPNP = voidptr

pub fn (r &UPNP) get_device_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("get_device_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &UPNP) get_device(index i32) UPNPDevice {
    mut object_out := UPNPDevice(unsafe{nil})
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("get_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2193290270)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r UPNP) add_device(device UPNPDevice) {
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("add_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 986715920)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r UPNP) set_device(index i32, device UPNPDevice) {
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("set_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3015133723)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r UPNP) remove_device(index i32) {
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("remove_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r UPNP) clear_devices() {
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("clear_devices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &UPNP) get_gateway() UPNPDevice {
    mut object_out := UPNPDevice(unsafe{nil})
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("get_gateway")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276800779)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UPNP) discover(timeout i32, ttl i32, device_filter String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("discover")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1575334765)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&timeout)}
    args[1] = unsafe{voidptr(&ttl)}
    args[2] = unsafe{voidptr(&device_filter)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &UPNP) query_external_address() String {
    mut object_out := String{}
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("query_external_address")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &UPNP) add_port_mapping(port i32, port_internal i32, desc String, proto String, duration i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("add_port_mapping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3358934458)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&port_internal)}
    args[2] = unsafe{voidptr(&desc)}
    args[3] = unsafe{voidptr(&proto)}
    args[4] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &UPNP) delete_port_mapping(port i32, proto String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("delete_port_mapping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 760296170)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&proto)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r UPNP) set_discover_multicast_if(m_if String) {
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("set_discover_multicast_if")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &UPNP) get_discover_multicast_if() String {
    mut object_out := String{}
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("get_discover_multicast_if")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UPNP) set_discover_local_port(port i32) {
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("set_discover_local_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &UPNP) get_discover_local_port() i32 {
    mut object_out := i32(0)
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("get_discover_local_port")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r UPNP) set_discover_ipv6(ipv6 bool) {
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("set_discover_ipv6")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &UPNP) is_discover_ipv6() bool {
    mut object_out := false
    classname := StringName.new("UPNP")
    defer { classname.deinit() }
    fnname := StringName.new("is_discover_ipv6")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
