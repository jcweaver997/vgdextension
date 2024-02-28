module vgdextension

@[noinit]
pub struct GLTFCamera {
    Resource
}

pub fn GLTFCamera.from_node(camera_node Camera3D) GLTFCamera {
    mut object_out := GLTFCamera{}
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("from_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 237784)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&camera_node.ptr)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFCamera) to_node() Camera3D {
    mut object_out := Camera3D{}
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("to_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2285090890)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn GLTFCamera.from_dictionary(dictionary Dictionary) GLTFCamera {
    mut object_out := GLTFCamera{}
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("from_dictionary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2495512509)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dictionary)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFCamera) to_dictionary() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("to_dictionary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFCamera) get_perspective() bool {
    mut object_out := false
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("get_perspective")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFCamera) set_perspective(perspective bool) {
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("set_perspective")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&perspective)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFCamera) get_fov() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("get_fov")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFCamera) set_fov(fov f64) {
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("set_fov")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fov)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFCamera) get_size_mag() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("get_size_mag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFCamera) set_size_mag(size_mag f64) {
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("set_size_mag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size_mag)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFCamera) get_depth_far() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("get_depth_far")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFCamera) set_depth_far(zdepth_far f64) {
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("set_depth_far")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&zdepth_far)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFCamera) get_depth_near() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("get_depth_near")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFCamera) set_depth_near(zdepth_near f64) {
    classname := StringName.new("GLTFCamera")
    fnname := StringName.new("set_depth_near")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&zdepth_near)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
