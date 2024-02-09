module vgdextension

pub struct OpenXRInterface {
    XRInterface
}

pub fn (r &OpenXRInterface) get_display_refresh_rate() f64 {
    mut object_out := f64(0)
    classname := StringName.new("OpenXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_display_refresh_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRInterface) set_display_refresh_rate(refresh_rate f64) {
    classname := StringName.new("OpenXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_display_refresh_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&refresh_rate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRInterface) get_render_target_size_multiplier() f64 {
    mut object_out := f64(0)
    classname := StringName.new("OpenXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_render_target_size_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRInterface) set_render_target_size_multiplier(multiplier f64) {
    classname := StringName.new("OpenXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_render_target_size_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multiplier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRInterface) is_action_set_active(name String) bool {
    mut object_out := false
    classname := StringName.new("OpenXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("is_action_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRInterface) set_action_set_active(name String, active bool) {
    classname := StringName.new("OpenXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("set_action_set_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRInterface) get_action_sets() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_sets")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRInterface) get_available_display_refresh_rates() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRInterface")
    defer { classname.deinit() }
    fnname := StringName.new("get_available_display_refresh_rates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
