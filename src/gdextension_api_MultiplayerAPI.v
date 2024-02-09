module vgdextension

pub enum MultiplayerAPIRPCMode {
    rpc_mode_disabled = 0
    rpc_mode_any_peer = 1
    rpc_mode_authority = 2
}

pub struct MultiplayerAPI {
    RefCounted
}

pub fn (mut r MultiplayerAPI) has_multiplayer_peer() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("has_multiplayer_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) get_multiplayer_peer() MultiplayerPeer {
    mut object_out := MultiplayerPeer{}
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("get_multiplayer_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3223692825)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) set_multiplayer_peer(peer MultiplayerPeer) {
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("set_multiplayer_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3694835298)
    mut args := unsafe { [1]voidptr{} }
    args[0] = peer.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MultiplayerAPI) get_unique_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("get_unique_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) is_server() bool {
    mut object_out := false
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("is_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) get_remote_sender_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("get_remote_sender_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) poll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) rpc(peer i32, object Object, method StringName, arguments Array) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("rpc")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1833408346)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&peer)}
    args[1] = object.ptr
    args[2] = unsafe{voidptr(&method)}
    args[3] = unsafe{voidptr(&arguments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) object_configuration_add(object Object, configuration Variant) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("object_configuration_add")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171879464)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&configuration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) object_configuration_remove(object Object, configuration Variant) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("object_configuration_remove")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171879464)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&configuration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPI) get_peers() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("get_peers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn MultiplayerAPI.set_default_interface(interface_name StringName) {
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&interface_name)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
}
pub fn MultiplayerAPI.get_default_interface() StringName {
    mut object_out := StringName{}
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2737447660)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn MultiplayerAPI.create_default_interface() MultiplayerAPI {
    mut object_out := MultiplayerAPI{}
    classname := StringName.new("MultiplayerAPI")
    defer { classname.deinit() }
    fnname := StringName.new("create_default_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3294156723)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
   return object_out
}
