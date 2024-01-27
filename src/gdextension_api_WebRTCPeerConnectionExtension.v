pub type WebRTCPeerConnectionExtension = voidptr

pub fn (r &WebRTCPeerConnectionExtension) uget_connection_state() WebRTCPeerConnectionConnectionState {
    mut object_out := WebRTCPeerConnectionConnectionState.state_new
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_connection_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCPeerConnectionExtension) uget_gathering_state() WebRTCPeerConnectionGatheringState {
    mut object_out := WebRTCPeerConnectionGatheringState.gathering_state_new
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_gathering_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &WebRTCPeerConnectionExtension) uget_signaling_state() WebRTCPeerConnectionSignalingState {
    mut object_out := WebRTCPeerConnectionSignalingState.signaling_state_stable
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_signaling_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnectionExtension) ucreate_data_channel(p_label String, p_config Dictionary) WebRTCDataChannel {
    mut object_out := WebRTCDataChannel(unsafe{nil})
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_create_data_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&p_label)}
    args[1] = unsafe{voidptr(&p_config)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnectionExtension) ucreate_offer() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_create_offer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnectionExtension) upoll() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_poll")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WebRTCPeerConnectionExtension) uclose() {
    classname := StringName.new("WebRTCPeerConnectionExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
