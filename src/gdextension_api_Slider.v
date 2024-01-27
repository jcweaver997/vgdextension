pub type Slider = voidptr

pub fn (mut r Slider) set_ticks(count i32) {
    classname := StringName.new("Slider")
    defer { classname.deinit() }
    fnname := StringName.new("set_ticks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Slider) get_ticks() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Slider")
    defer { classname.deinit() }
    fnname := StringName.new("get_ticks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Slider) get_ticks_on_borders() bool {
    mut object_out := false
    classname := StringName.new("Slider")
    defer { classname.deinit() }
    fnname := StringName.new("get_ticks_on_borders")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Slider) set_ticks_on_borders(ticks_on_border bool) {
    classname := StringName.new("Slider")
    defer { classname.deinit() }
    fnname := StringName.new("set_ticks_on_borders")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Slider) set_editable(editable bool) {
    classname := StringName.new("Slider")
    defer { classname.deinit() }
    fnname := StringName.new("set_editable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Slider) is_editable() bool {
    mut object_out := false
    classname := StringName.new("Slider")
    defer { classname.deinit() }
    fnname := StringName.new("is_editable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Slider) set_scrollable(scrollable bool) {
    classname := StringName.new("Slider")
    defer { classname.deinit() }
    fnname := StringName.new("set_scrollable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Slider) is_scrollable() bool {
    mut object_out := false
    classname := StringName.new("Slider")
    defer { classname.deinit() }
    fnname := StringName.new("is_scrollable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
