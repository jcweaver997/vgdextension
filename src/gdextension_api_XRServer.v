module vgdextension

pub enum XRServerTrackerType {
    tracker_head = 1
    tracker_controller = 2
    tracker_basestation = 4
    tracker_anchor = 8
    tracker_any_known = 127
    tracker_unknown = 128
    tracker_any = 255
}

pub enum XRServerRotationMode {
    reset_full_rotation = 0
    reset_but_keep_tilt = 1
    dont_reset_rotation = 2
}

@[noinit]
pub struct XRServer {
    Object
}

pub fn XRServer.get_singleton() XRServer {
    sn := StringName.new("XRServer")
    defer {sn.deinit()}
    o := XRServer{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (r &XRServer) get_world_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_world_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRServer) set_world_scale(scale f64) {
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_world_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &XRServer) get_world_origin() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_world_origin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRServer) set_world_origin(world_origin Transform3D) {
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_world_origin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&world_origin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &XRServer) get_reference_frame() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_reference_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRServer) center_on_hmd(rotation_mode XRServerRotationMode, keep_height bool) {
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("center_on_hmd")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1450904707)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&rotation_mode)}
    args[1] = unsafe{voidptr(&keep_height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r XRServer) get_hmd_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_hmd_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4183770049)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRServer) add_interface(gdinterface XRInterface) {
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("add_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1898711491)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gdinterface.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &XRServer) get_interface_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_interface_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRServer) remove_interface(gdinterface XRInterface) {
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1898711491)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gdinterface.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &XRServer) get_interface(idx i32) XRInterface {
    mut object_out := XRInterface{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4237347919)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRServer) get_interfaces() Array {
    mut object_out := Array{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_interfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &XRServer) find_interface(name String) XRInterface {
    mut object_out := XRInterface{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("find_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1395192955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r XRServer) add_tracker(tracker XRPositionalTracker) {
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("add_tracker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2692800323)
    mut args := unsafe { [1]voidptr{} }
    args[0] = tracker.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r XRServer) remove_tracker(tracker XRPositionalTracker) {
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("remove_tracker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2692800323)
    mut args := unsafe { [1]voidptr{} }
    args[0] = tracker.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r XRServer) get_trackers(tracker_types i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_trackers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tracker_types)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRServer) get_tracker(tracker_name StringName) XRPositionalTracker {
    mut object_out := XRPositionalTracker{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2742084544)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tracker_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRServer) get_primary_interface() XRInterface {
    mut object_out := XRInterface{}
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("get_primary_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2143545064)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XRServer) set_primary_interface(gdinterface XRInterface) {
    classname := StringName.new("XRServer")
    defer { classname.deinit() }
    fnname := StringName.new("set_primary_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1898711491)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gdinterface.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
