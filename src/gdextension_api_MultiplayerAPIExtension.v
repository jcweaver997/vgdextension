module vgdextension

@[noinit]
pub struct MultiplayerAPIExtension {
    MultiplayerAPI
}

pub interface IMultiplayerAPIExtensionPoll {
    mut:
    virt_poll() GDError
}

pub fn (mut r MultiplayerAPIExtension) upoll() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IMultiplayerAPIExtensionSetMultiplayerPeer {
    mut:
    virt_set_multiplayer_peer(multiplayer_peer MultiplayerPeer)
}

pub fn (mut r MultiplayerAPIExtension) uset_multiplayer_peer(multiplayer_peer MultiplayerPeer) {
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_set_multiplayer_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = multiplayer_peer.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMultiplayerAPIExtensionGetMultiplayerPeer {
    mut:
    virt_get_multiplayer_peer() MultiplayerPeer
}

pub fn (mut r MultiplayerAPIExtension) uget_multiplayer_peer() MultiplayerPeer {
    mut object_out := MultiplayerPeer{}
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_get_multiplayer_peer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerAPIExtensionGetUniqueId {
    mut:
    virt_get_unique_id() i32
}

pub fn (r &MultiplayerAPIExtension) uget_unique_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_get_unique_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerAPIExtensionGetPeerIds {
    mut:
    virt_get_peer_ids() PackedInt32Array
}

pub fn (r &MultiplayerAPIExtension) uget_peer_ids() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_get_peer_ids")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerAPIExtensionRpc {
    mut:
    virt_rpc(peer i32, object Object, method StringName, gdargs Array) GDError
}

pub fn (mut r MultiplayerAPIExtension) urpc(peer i32, object Object, method StringName, gdargs Array) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_rpc")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&peer)}
    args[1] = object.ptr
    args[2] = unsafe{voidptr(&method)}
    args[3] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IMultiplayerAPIExtensionGetRemoteSenderId {
    mut:
    virt_get_remote_sender_id() i32
}

pub fn (r &MultiplayerAPIExtension) uget_remote_sender_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_get_remote_sender_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMultiplayerAPIExtensionObjectConfigurationAdd {
    mut:
    virt_object_configuration_add(object Object, configuration Variant) GDError
}

pub fn (mut r MultiplayerAPIExtension) uobject_configuration_add(object Object, configuration Variant) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_object_configuration_add")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&configuration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IMultiplayerAPIExtensionObjectConfigurationRemove {
    mut:
    virt_object_configuration_remove(object Object, configuration Variant) GDError
}

pub fn (mut r MultiplayerAPIExtension) uobject_configuration_remove(object Object, configuration Variant) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MultiplayerAPIExtension")
    fnname := StringName.new("_object_configuration_remove")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&configuration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
