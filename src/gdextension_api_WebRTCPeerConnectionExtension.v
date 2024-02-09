module vgdextension

pub struct WebRTCPeerConnectionExtension {
    WebRTCPeerConnection
}

pub interface IWebRTCPeerConnectionExtensionGetConnectionState {
    mut:
    virt_get_connection_state() WebRTCPeerConnectionConnectionState
}

pub fn (r &WebRTCPeerConnectionExtension) uget_connection_state() WebRTCPeerConnectionConnectionState {
    mut object_out := WebRTCPeerConnectionConnectionState.state_new
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_connection_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionGetGatheringState {
    mut:
    virt_get_gathering_state() WebRTCPeerConnectionGatheringState
}

pub fn (r &WebRTCPeerConnectionExtension) uget_gathering_state() WebRTCPeerConnectionGatheringState {
    mut object_out := WebRTCPeerConnectionGatheringState.gathering_state_new
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_gathering_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionGetSignalingState {
    mut:
    virt_get_signaling_state() WebRTCPeerConnectionSignalingState
}

pub fn (r &WebRTCPeerConnectionExtension) uget_signaling_state() WebRTCPeerConnectionSignalingState {
    mut object_out := WebRTCPeerConnectionSignalingState.signaling_state_stable
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_signaling_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionInitialize {
    mut:
    virt_initialize(p_config Dictionary) GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) uinitialize(p_config Dictionary) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_initialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionCreateDataChannel {
    mut:
    virt_create_data_channel(p_label String, p_config Dictionary) WebRTCDataChannel
}

pub fn (mut r WebRTCPeerConnectionExtension) ucreate_data_channel(p_label String, p_config Dictionary) WebRTCDataChannel {
    mut object_out := WebRTCDataChannel{}
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_create_data_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_label)}
    args[1] = unsafe{voidptr(&p_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionCreateOffer {
    mut:
    virt_create_offer() GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) ucreate_offer() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_create_offer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionSetRemoteDescription {
    mut:
    virt_set_remote_description(p_type String, p_sdp String) GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) uset_remote_description(p_type String, p_sdp String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_remote_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_type)}
    args[1] = unsafe{voidptr(&p_sdp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionSetLocalDescription {
    mut:
    virt_set_local_description(p_type String, p_sdp String) GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) uset_local_description(p_type String, p_sdp String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_local_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_type)}
    args[1] = unsafe{voidptr(&p_sdp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionAddIceCandidate {
    mut:
    virt_add_ice_candidate(p_sdp_mid_name String, p_sdp_mline_index i32, p_sdp_name String) GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) uadd_ice_candidate(p_sdp_mid_name String, p_sdp_mline_index i32, p_sdp_name String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_ice_candidate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&p_sdp_mid_name)}
    args[1] = unsafe{voidptr(&p_sdp_mline_index)}
    args[2] = unsafe{voidptr(&p_sdp_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionPoll {
    mut:
    virt_poll() GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) upoll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionClose {
    mut:
    virt_close()
}

pub fn (mut r WebRTCPeerConnectionExtension) uclose() {
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
