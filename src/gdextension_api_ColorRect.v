module vgdextension

@[noinit]
pub struct ColorRect {
    Control
}

pub fn (mut r ColorRect) set_color(color Color) {
    classname := StringName.new("ColorRect")
    fnname := StringName.new("set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorRect) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ColorRect")
    fnname := StringName.new("get_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
