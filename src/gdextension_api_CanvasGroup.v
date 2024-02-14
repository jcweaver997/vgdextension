module vgdextension

@[noinit]
pub struct CanvasGroup {
    Node2D
}

pub fn (mut r CanvasGroup) set_fit_margin(fit_margin f64) {
    classname := StringName.new("CanvasGroup")
    fnname := StringName.new("set_fit_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fit_margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasGroup) get_fit_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CanvasGroup")
    fnname := StringName.new("get_fit_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasGroup) set_clear_margin(clear_margin f64) {
    classname := StringName.new("CanvasGroup")
    fnname := StringName.new("set_clear_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&clear_margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasGroup) get_clear_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CanvasGroup")
    fnname := StringName.new("get_clear_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasGroup) set_use_mipmaps(use_mipmaps bool) {
    classname := StringName.new("CanvasGroup")
    fnname := StringName.new("set_use_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_mipmaps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasGroup) is_using_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("CanvasGroup")
    fnname := StringName.new("is_using_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
