module vgdextension

pub struct MobileVRInterface {
    XRInterface
}

pub fn (mut r MobileVRInterface) set_eye_height(eye_height f64) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_eye_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&eye_height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MobileVRInterface) get_eye_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_eye_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_iod(iod f64) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_iod")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&iod)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MobileVRInterface) get_iod() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_iod")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_display_width(display_width f64) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_display_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&display_width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MobileVRInterface) get_display_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_display_to_lens(display_to_lens f64) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_display_to_lens")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&display_to_lens)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MobileVRInterface) get_display_to_lens() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_to_lens")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_oversample(oversample f64) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_oversample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&oversample)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MobileVRInterface) get_oversample() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_oversample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_k1(k f64) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_k1")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&k)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MobileVRInterface) get_k1() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_k1")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_k2(k f64) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_k2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&k)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MobileVRInterface) get_k2() f64 {
    mut object_out := f64(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_k2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
