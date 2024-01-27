pub type GLTFCamera = voidptr

pub fn GLTFCamera.from_node(camera_node Camera3D) GLTFCamera {
    mut object_out := GLTFCamera(unsafe{nil})
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("from_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 237784)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&camera_node)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFCamera) to_node() Camera3D {
    mut object_out := Camera3D(unsafe{nil})
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("to_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285090890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn GLTFCamera.from_dictionary(dictionary Dictionary) GLTFCamera {
    mut object_out := GLTFCamera(unsafe{nil})
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("from_dictionary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2495512509)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dictionary)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFCamera) to_dictionary() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("to_dictionary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFCamera) get_perspective() bool {
    mut object_out := false
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("get_perspective")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFCamera) set_perspective(perspective bool) {
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("set_perspective")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFCamera) get_fov() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("get_fov")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFCamera) set_fov(fov f32) {
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("set_fov")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFCamera) get_size_mag() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("get_size_mag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFCamera) set_size_mag(size_mag f32) {
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("set_size_mag")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFCamera) get_depth_far() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_far")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFCamera) set_depth_far(zdepth_far f32) {
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_far")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFCamera) get_depth_near() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth_near")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFCamera) set_depth_near(zdepth_near f32) {
    classname := StringName.new("GLTFCamera")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth_near")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
