module vgdextension

@[noinit]
pub struct WebRTCPeerConnectionExtension {
    WebRTCPeerConnection
}

pub interface IWebRTCPeerConnectionExtensionGetConnectionState {
    mut:
    virt_get_connection_state() WebRTCPeerConnectionConnectionState
}

pub fn (r &WebRTCPeerConnectionExtension) uget_connection_state() WebRTCPeerConnectionConnectionState {
    mut object_out := i64(WebRTCPeerConnectionConnectionState.state_new)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_get_connection_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebRTCPeerConnectionConnectionState(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionGetGatheringState {
    mut:
    virt_get_gathering_state() WebRTCPeerConnectionGatheringState
}

pub fn (r &WebRTCPeerConnectionExtension) uget_gathering_state() WebRTCPeerConnectionGatheringState {
    mut object_out := i64(WebRTCPeerConnectionGatheringState.gathering_state_new)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_get_gathering_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebRTCPeerConnectionGatheringState(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionGetSignalingState {
    mut:
    virt_get_signaling_state() WebRTCPeerConnectionSignalingState
}

pub fn (r &WebRTCPeerConnectionExtension) uget_signaling_state() WebRTCPeerConnectionSignalingState {
    mut object_out := i64(WebRTCPeerConnectionSignalingState.signaling_state_stable)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_get_signaling_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{WebRTCPeerConnectionSignalingState(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionInitialize {
    mut:
    virt_initialize(p_config Dictionary) GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) uinitialize(p_config Dictionary) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_initialize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionCreateDataChannel {
    mut:
    virt_create_data_channel(p_label String, p_config Dictionary) WebRTCDataChannel
}

pub fn (mut r WebRTCPeerConnectionExtension) ucreate_data_channel(p_label String, p_config Dictionary) WebRTCDataChannel {
    mut object_out := WebRTCDataChannel{}
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_create_data_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_label)}
    args[1] = unsafe{voidptr(&p_config)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IWebRTCPeerConnectionExtensionCreateOffer {
    mut:
    virt_create_offer() GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) ucreate_offer() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_create_offer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionSetRemoteDescription {
    mut:
    virt_set_remote_description(p_type String, p_sdp String) GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) uset_remote_description(p_type String, p_sdp String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_set_remote_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_type)}
    args[1] = unsafe{voidptr(&p_sdp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionSetLocalDescription {
    mut:
    virt_set_local_description(p_type String, p_sdp String) GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) uset_local_description(p_type String, p_sdp String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_set_local_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_type)}
    args[1] = unsafe{voidptr(&p_sdp)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionAddIceCandidate {
    mut:
    virt_add_ice_candidate(p_sdp_mid_name String, p_sdp_mline_index i32, p_sdp_name String) GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) uadd_ice_candidate(p_sdp_mid_name String, p_sdp_mline_index i32, p_sdp_name String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_add_ice_candidate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&p_sdp_mid_name)}
    args[1] = unsafe{voidptr(&p_sdp_mline_index)}
    args[2] = unsafe{voidptr(&p_sdp_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionPoll {
    mut:
    virt_poll() GDError
}

pub fn (mut r WebRTCPeerConnectionExtension) upoll() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_poll")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IWebRTCPeerConnectionExtensionClose {
    mut:
    virt_close()
}

pub fn (mut r WebRTCPeerConnectionExtension) uclose() {
    classname := StringName.new("WebRTCPeerConnectionExtension")
    fnname := StringName.new("_close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
