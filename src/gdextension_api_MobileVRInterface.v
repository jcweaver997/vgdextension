pub type MobileVRInterface = voidptr

pub fn (mut r MobileVRInterface) set_eye_height(eye_height f32) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_eye_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MobileVRInterface) get_eye_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_eye_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_iod(iod f32) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_iod")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MobileVRInterface) get_iod() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_iod")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_display_width(display_width f32) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_display_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MobileVRInterface) get_display_width() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_display_to_lens(display_to_lens f32) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_display_to_lens")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MobileVRInterface) get_display_to_lens() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_to_lens")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_oversample(oversample f32) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_oversample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MobileVRInterface) get_oversample() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_oversample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_k1(k f32) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_k1")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MobileVRInterface) get_k1() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_k1")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MobileVRInterface) set_k2(k f32) {
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_k2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MobileVRInterface) get_k2() f32 {
    mut object_out := f32(0)
    classname := StringName.new("MobileVRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_k2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
