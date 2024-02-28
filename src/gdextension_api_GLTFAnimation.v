module vgdextension

@[noinit]
pub struct GLTFAnimation {
    Resource
}

pub fn (r &GLTFAnimation) get_loop() bool {
    mut object_out := false
    classname := StringName.new("GLTFAnimation")
    fnname := StringName.new("get_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFAnimation) set_loop(loop bool) {
    classname := StringName.new("GLTFAnimation")
    fnname := StringName.new("set_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&loop)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
