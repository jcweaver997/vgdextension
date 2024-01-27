pub type ReferenceRect = voidptr

pub fn (r &ReferenceRect) get_border_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ReferenceRect")
    defer { classname.deinit() }
    fnname := StringName.new("get_border_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReferenceRect) set_border_color(color Color) {
    classname := StringName.new("ReferenceRect")
    defer { classname.deinit() }
    fnname := StringName.new("set_border_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ReferenceRect) get_border_width() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ReferenceRect")
    defer { classname.deinit() }
    fnname := StringName.new("get_border_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReferenceRect) set_border_width(width f32) {
    classname := StringName.new("ReferenceRect")
    defer { classname.deinit() }
    fnname := StringName.new("set_border_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ReferenceRect) get_editor_only() bool {
    mut object_out := false
    classname := StringName.new("ReferenceRect")
    defer { classname.deinit() }
    fnname := StringName.new("get_editor_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ReferenceRect) set_editor_only(enabled bool) {
    classname := StringName.new("ReferenceRect")
    defer { classname.deinit() }
    fnname := StringName.new("set_editor_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
