module vgdextension

@[noinit]
pub struct SceneTreeTimer {
    RefCounted
}

pub fn (mut r SceneTreeTimer) set_time_left(time f64) {
    classname := StringName.new("SceneTreeTimer")
    fnname := StringName.new("set_time_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SceneTreeTimer) get_time_left() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SceneTreeTimer")
    fnname := StringName.new("get_time_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
