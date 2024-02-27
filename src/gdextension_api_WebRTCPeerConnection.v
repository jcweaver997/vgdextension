module vgdextension

pub enum WebRTCPeerConnectionConnectionState as i64 {
    state_new = 0
    state_connecting = 1
    state_connected = 2
    state_disconnected = 3
    state_failed = 4
    state_closed = 5
}

pub enum WebRTCPeerConnectionGatheringState as i64 {
    gathering_state_new = 0
    gathering_state_gathering = 1
    gathering_state_complete = 2
}

pub enum WebRTCPeerConnectionSignalingState as i64 {
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

pub fn WebRTCPeerConnection.set_default_extension(extension_class string) {
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("set_default_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(extension_class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r WebRTCPeerConnection) initialize(configuration Dictionary) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("initialize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2625064318)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&configuration)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCPeerConnection) create_data_channel(label string, options Dictionary) WebRTCDataChannel {
    mut object_out := WebRTCDataChannel{}
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("create_data_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1288557393)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&options)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r WebRTCPeerConnection) create_offer() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("create_offer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCPeerConnection) set_local_description(type_name string, sdp string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("set_local_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(sdp)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCPeerConnection) set_remote_description(type_name string, sdp string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("set_remote_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(sdp)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCPeerConnection) add_ice_candidate(media string, index i32, name string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("add_ice_candidate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3958950400)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(media)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&index)}
    arg_sn2 := String.new(name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCPeerConnection) poll() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r WebRTCPeerConnection) close() {
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &WebRTCPeerConnection) get_connection_state() WebRTCPeerConnectionConnectionState {
    mut object_out := i64(WebRTCPeerConnectionConnectionState.state_new)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("get_connection_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275710506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebRTCPeerConnectionConnectionState(object_out)}
}
pub fn (r &WebRTCPeerConnection) get_gathering_state() WebRTCPeerConnectionGatheringState {
    mut object_out := i64(WebRTCPeerConnectionGatheringState.gathering_state_new)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("get_gathering_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4262591401)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebRTCPeerConnectionGatheringState(object_out)}
}
pub fn (r &WebRTCPeerConnection) get_signaling_state() WebRTCPeerConnectionSignalingState {
    mut object_out := i64(WebRTCPeerConnectionSignalingState.signaling_state_stable)
    classname := StringName.new("WebRTCPeerConnection")
    fnname := StringName.new("get_signaling_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3342956226)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebRTCPeerConnectionSignalingState(object_out)}
}
