module vgdextension

@[noinit]
pub struct Slider {
    Range
}

pub fn (mut r Slider) set_ticks(count i32) {
    classname := StringName.new("Slider")
    fnname := StringName.new("set_ticks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Slider) get_ticks() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Slider")
    fnname := StringName.new("get_ticks")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Slider) get_ticks_on_borders() bool {
    mut object_out := false
    classname := StringName.new("Slider")
    fnname := StringName.new("get_ticks_on_borders")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Slider) set_ticks_on_borders(ticks_on_border bool) {
    classname := StringName.new("Slider")
    fnname := StringName.new("set_ticks_on_borders")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ticks_on_border)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Slider) set_editable(editable bool) {
    classname := StringName.new("Slider")
    fnname := StringName.new("set_editable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&editable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Slider) is_editable() bool {
    mut object_out := false
    classname := StringName.new("Slider")
    fnname := StringName.new("is_editable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Slider) set_scrollable(scrollable bool) {
    classname := StringName.new("Slider")
    fnname := StringName.new("set_scrollable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scrollable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Slider) is_scrollable() bool {
    mut object_out := false
    classname := StringName.new("Slider")
    fnname := StringName.new("is_scrollable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
