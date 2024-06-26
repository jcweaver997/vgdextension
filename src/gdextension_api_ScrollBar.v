module vgdextension

@[noinit]
pub struct ScrollBar {
    Range
}

pub fn (r &ScrollBar) set_custom_step(step f64) {
    classname := StringName.new("ScrollBar")
    fnname := StringName.new("set_custom_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&step)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ScrollBar) get_custom_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ScrollBar")
    fnname := StringName.new("get_custom_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
