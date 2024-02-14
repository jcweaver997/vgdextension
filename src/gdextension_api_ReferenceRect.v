module vgdextension

@[noinit]
pub struct ReferenceRect {
    Control
}

pub fn (r &ReferenceRect) get_border_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ReferenceRect")
    fnname := StringName.new("get_border_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ReferenceRect) set_border_color(color Color) {
    classname := StringName.new("ReferenceRect")
    fnname := StringName.new("set_border_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ReferenceRect) get_border_width() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ReferenceRect")
    fnname := StringName.new("get_border_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ReferenceRect) set_border_width(width f64) {
    classname := StringName.new("ReferenceRect")
    fnname := StringName.new("set_border_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ReferenceRect) get_editor_only() bool {
    mut object_out := false
    classname := StringName.new("ReferenceRect")
    fnname := StringName.new("get_editor_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ReferenceRect) set_editor_only(enabled bool) {
    classname := StringName.new("ReferenceRect")
    fnname := StringName.new("set_editor_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
