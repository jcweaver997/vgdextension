module vgdextension

@[noinit]
pub struct StyleBoxLine {
    StyleBox
}

pub fn (mut r StyleBoxLine) set_color(color Color) {
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxLine) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxLine) set_thickness(thickness i32) {
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&thickness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxLine) get_thickness() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_thickness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxLine) set_grow_begin(offset f64) {
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_grow_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxLine) get_grow_begin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_grow_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxLine) set_grow_end(offset f64) {
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_grow_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxLine) get_grow_end() f64 {
    mut object_out := f64(0)
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("get_grow_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxLine) set_vertical(vertical bool) {
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertical)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxLine) is_vertical() bool {
    mut object_out := false
    classname := StringName.new("StyleBoxLine")
    defer { classname.deinit() }
    fnname := StringName.new("is_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
