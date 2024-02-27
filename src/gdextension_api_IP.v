module vgdextension

pub enum IPResolverStatus as i64 {
    resolver_status_none = 0
    resolver_status_waiting = 1
    resolver_status_done = 2
    resolver_status_error = 3
}

pub enum IPType as i64 {
    type_none = 0
    type_ipv4 = 1
    type_ipv6 = 2
    type_any = 3
}

@[noinit]
pub struct IP {
    Object
}

pub fn IP.get_singleton() IP {
    sn := StringName.new("IP")
    o := IP{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r IP) resolve_hostname(host string, ip_type IPType) string {
    mut object_out := String{}
    classname := StringName.new("IP")
    fnname := StringName.new("resolve_hostname")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4283295457)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(host)
    args[0] = unsafe{voidptr(&arg_sn0)}
    i64_ip_type := i64(ip_type)
    args[1] = unsafe{voidptr(&i64_ip_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r IP) resolve_hostname_addresses(host string, ip_type IPType) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("IP")
    fnname := StringName.new("resolve_hostname_addresses")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 773767525)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(host)
    args[0] = unsafe{voidptr(&arg_sn0)}
    i64_ip_type := i64(ip_type)
    args[1] = unsafe{voidptr(&i64_ip_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r IP) resolve_hostname_queue_item(host string, ip_type IPType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("IP")
    fnname := StringName.new("resolve_hostname_queue_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1749894742)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(host)
    args[0] = unsafe{voidptr(&arg_sn0)}
    i64_ip_type := i64(ip_type)
    args[1] = unsafe{voidptr(&i64_ip_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &IP) get_resolve_item_status(id i32) IPResolverStatus {
    mut object_out := i64(IPResolverStatus.resolver_status_none)
    classname := StringName.new("IP")
    fnname := StringName.new("get_resolve_item_status")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3812250196)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{IPResolverStatus(object_out)}
}
pub fn (r &IP) get_resolve_item_address(id i32) string {
    mut object_out := String{}
    classname := StringName.new("IP")
    fnname := StringName.new("get_resolve_item_address")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &IP) get_resolve_item_addresses(id i32) Array {
    mut object_out := Array{}
    classname := StringName.new("IP")
    fnname := StringName.new("get_resolve_item_addresses")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r IP) erase_resolve_item(id i32) {
    classname := StringName.new("IP")
    fnname := StringName.new("erase_resolve_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &IP) get_local_addresses() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("IP")
    fnname := StringName.new("get_local_addresses")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &IP) get_local_interfaces() Array {
    mut object_out := Array{}
    classname := StringName.new("IP")
    fnname := StringName.new("get_local_interfaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r IP) clear_cache(hostname string) {
    classname := StringName.new("IP")
    fnname := StringName.new("clear_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3005725572)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(hostname)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
