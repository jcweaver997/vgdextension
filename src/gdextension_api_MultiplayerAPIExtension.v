pub type MultiplayerAPIExtension = voidptr

pub fn (mut r MultiplayerAPIExtension) upoll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPIExtension) uset_multiplayer_peer(multiplayer_peer MultiplayerPeer) {
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_multiplayer_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerAPIExtension) uget_multiplayer_peer() MultiplayerPeer {
    mut object_out := MultiplayerPeer(unsafe{nil})
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_multiplayer_peer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerAPIExtension) uget_unique_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_unique_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerAPIExtension) uget_peer_ids() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_peer_ids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPIExtension) urpc(peer i32, object Object, method StringName, gdargs Array) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_rpc")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&peer)}
    args[1] = unsafe{voidptr(&object)}
    args[2] = unsafe{voidptr(&method)}
    args[3] = unsafe{voidptr(&gdargs)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerAPIExtension) uget_remote_sender_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_remote_sender_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPIExtension) uobject_configuration_add(object Object, configuration Variant) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_object_configuration_add")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    args[1] = unsafe{voidptr(&configuration)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerAPIExtension) uobject_configuration_remove(object Object, configuration Variant) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("MultiplayerAPIExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_object_configuration_remove")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    args[1] = unsafe{voidptr(&configuration)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
