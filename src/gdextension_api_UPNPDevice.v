module vgdextension

pub enum UPNPDeviceIGDStatus as i64 {
    igd_status_ok = 0
    igd_status_http_error = 1
    igd_status_http_empty = 2
    igd_status_no_urls = 3
    igd_status_no_igd = 4
    igd_status_disconnected = 5
    igd_status_unknown_device = 6
    igd_status_invalid_control = 7
    igd_status_malloc_error = 8
    igd_status_unknown_error = 9
}

@[noinit]
pub struct UPNPDevice {
    RefCounted
}

pub fn (r &UPNPDevice) is_valid_gateway() bool {
    mut object_out := false
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("is_valid_gateway")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UPNPDevice) query_external_address() String {
    mut object_out := String{}
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("query_external_address")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UPNPDevice) add_port_mapping(port i32, port_internal i32, desc String, proto String, duration i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("add_port_mapping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 818314583)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&port_internal)}
    args[2] = unsafe{voidptr(&desc)}
    args[3] = unsafe{voidptr(&proto)}
    args[4] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &UPNPDevice) delete_port_mapping(port i32, proto String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("delete_port_mapping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444187325)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&port)}
    args[1] = unsafe{voidptr(&proto)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r UPNPDevice) set_description_url(url String) {
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("set_description_url")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&url)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UPNPDevice) get_description_url() String {
    mut object_out := String{}
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("get_description_url")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r UPNPDevice) set_service_type(type_name String) {
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("set_service_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UPNPDevice) get_service_type() String {
    mut object_out := String{}
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("get_service_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r UPNPDevice) set_igd_control_url(url String) {
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("set_igd_control_url")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&url)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UPNPDevice) get_igd_control_url() String {
    mut object_out := String{}
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("get_igd_control_url")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r UPNPDevice) set_igd_service_type(type_name String) {
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("set_igd_service_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UPNPDevice) get_igd_service_type() String {
    mut object_out := String{}
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("get_igd_service_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r UPNPDevice) set_igd_our_addr(addr String) {
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("set_igd_our_addr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&addr)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UPNPDevice) get_igd_our_addr() String {
    mut object_out := String{}
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("get_igd_our_addr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r UPNPDevice) set_igd_status(status UPNPDeviceIGDStatus) {
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("set_igd_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 519504122)
    mut args := unsafe { [1]voidptr{} }
    i64_status := i64(status)
    args[0] = unsafe{voidptr(&i64_status)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &UPNPDevice) get_igd_status() UPNPDeviceIGDStatus {
    mut object_out := i64(UPNPDeviceIGDStatus.igd_status_ok)
    classname := StringName.new("UPNPDevice")
    fnname := StringName.new("get_igd_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 180887011)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{UPNPDeviceIGDStatus(object_out)}
}
