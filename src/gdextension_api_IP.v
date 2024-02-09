module vgdextension

pub enum IPResolverStatus {
    resolver_status_none = 0
    resolver_status_waiting = 1
    resolver_status_done = 2
    resolver_status_error = 3
}

pub enum IPType {
    type_none = 0
    type_ipv4 = 1
    type_ipv6 = 2
    type_any = 3
}

pub struct IP {
    Object
}

pub fn IP.get_singleton() IP {
    sn := StringName.new("IP")
    defer {sn.deinit()}
    o := IP{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r IP) resolve_hostname(host String, ip_type IPType) String {
    mut object_out := String{}
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("resolve_hostname")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 396864159)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&host)}
    args[1] = unsafe{voidptr(&ip_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r IP) resolve_hostname_addresses(host String, ip_type IPType) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("resolve_hostname_addresses")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3462780090)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&host)}
    args[1] = unsafe{voidptr(&ip_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r IP) resolve_hostname_queue_item(host String, ip_type IPType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("resolve_hostname_queue_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3936392508)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&host)}
    args[1] = unsafe{voidptr(&ip_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &IP) get_resolve_item_status(id i32) IPResolverStatus {
    mut object_out := IPResolverStatus.resolver_status_none
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("get_resolve_item_status")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3812250196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &IP) get_resolve_item_address(id i32) String {
    mut object_out := String{}
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("get_resolve_item_address")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &IP) get_resolve_item_addresses(id i32) Array {
    mut object_out := Array{}
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("get_resolve_item_addresses")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r IP) erase_resolve_item(id i32) {
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("erase_resolve_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &IP) get_local_addresses() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_addresses")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &IP) get_local_interfaces() Array {
    mut object_out := Array{}
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_interfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r IP) clear_cache(hostname String) {
    classname := StringName.new("IP")
    defer { classname.deinit() }
    fnname := StringName.new("clear_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3005725572)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hostname)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
