module vgdextension

pub enum WebRTCPeerConnectionConnectionState {
    state_new = 0
    state_connecting = 1
    state_connected = 2
    state_disconnected = 3
    state_failed = 4
    state_closed = 5
}

pub enum WebRTCPeerConnectionGatheringState {
    gathering_state_new = 0
    gathering_state_gathering = 1
    gathering_state_complete = 2
}

pub enum WebRTCPeerConnectionSignalingState {
    signaling_state_stable = 0
    signaling_state_have_local_offer = 1
    signaling_state_have_remote_offer = 2
    signaling_state_have_local_pranswer = 3
    signaling_state_have_remote_pranswer = 4
    signaling_state_closed = 5
}

@[noinit]
pub struct WebRTCPeerConnection {
    RefCounted
}

pub fn WebRTCPeerConnection.set_default_extension(extension_class StringName) {
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&extension_class)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r WebRTCPeerConnection) initialize(configuration Dictionary) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("initialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2625064318)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&configuration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnection) create_data_channel(label String, options Dictionary) WebRTCDataChannel {
    mut object_out := WebRTCDataChannel{}
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("create_data_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3997447457)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&label)}
    args[1] = unsafe{voidptr(&options)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnection) create_offer() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("create_offer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnection) set_local_description(type_name String, sdp String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("set_local_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = unsafe{voidptr(&sdp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnection) set_remote_description(type_name String, sdp String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("set_remote_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = unsafe{voidptr(&sdp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnection) add_ice_candidate(media String, index i32, name String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("add_ice_candidate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3958950400)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&media)}
    args[1] = unsafe{voidptr(&index)}
    args[2] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnection) poll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnection) close() {
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &WebRTCPeerConnection) get_connection_state() WebRTCPeerConnectionConnectionState {
    mut object_out := WebRTCPeerConnectionConnectionState.state_new
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("get_connection_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275710506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCPeerConnection) get_gathering_state() WebRTCPeerConnectionGatheringState {
    mut object_out := WebRTCPeerConnectionGatheringState.gathering_state_new
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("get_gathering_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262591401)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCPeerConnection) get_signaling_state() WebRTCPeerConnectionSignalingState {
    mut object_out := WebRTCPeerConnectionSignalingState.signaling_state_stable
    classname := StringName.new("WebRTCPeerConnection")
    defer { classname.deinit() }
    fnname := StringName.new("get_signaling_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3342956226)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
