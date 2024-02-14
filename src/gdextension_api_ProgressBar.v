module vgdextension

pub enum ProgressBarFillMode as i64 {
    fill_begin_to_end = 0
    fill_end_to_begin = 1
    fill_top_to_bottom = 2
    fill_bottom_to_top = 3
}

@[noinit]
pub struct ProgressBar {
    Range
}

pub fn (mut r ProgressBar) set_fill_mode(mode i32) {
    classname := StringName.new("ProgressBar")
    fnname := StringName.new("set_fill_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ProgressBar) get_fill_mode() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ProgressBar")
    fnname := StringName.new("get_fill_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ProgressBar) set_show_percentage(visible bool) {
    classname := StringName.new("ProgressBar")
    fnname := StringName.new("set_show_percentage")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProgressBar) is_percentage_shown() bool {
    mut object_out := false
    classname := StringName.new("ProgressBar")
    fnname := StringName.new("is_percentage_shown")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
