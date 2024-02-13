module vgdextension

@[noinit]
pub struct XRController3D {
    XRNode3D
}

pub fn (r &XRController3D) is_button_pressed(name StringName) bool {
    mut object_out := false
    classname := StringName.new("XRController3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_button_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRController3D) get_input(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("XRController3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_input")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRController3D) get_float(name StringName) f64 {
    mut object_out := f64(0)
    classname := StringName.new("XRController3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_float")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2349060816)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRController3D) get_vector2(name StringName) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("XRController3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_vector2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3100822709)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &XRController3D) get_tracker_hand() XRPositionalTrackerTrackerHand {
    mut object_out := XRPositionalTrackerTrackerHand.tracker_hand_unknown
    classname := StringName.new("XRController3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_tracker_hand")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4181770860)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
