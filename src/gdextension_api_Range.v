module vgdextension

pub type Range = voidptr

pub fn (mut r Range) uvalue_changed(new_value f32) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("_value_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Range) get_value() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("get_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Range) get_min() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("get_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Range) get_max() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("get_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Range) get_step() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("get_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Range) get_page() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("get_page")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Range) get_as_ratio() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("get_as_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Range) set_value(value f32) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Range) set_value_no_signal(value f32) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_value_no_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Range) set_min(minimum f32) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Range) set_max(maximum f32) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Range) set_step(step f32) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Range) set_page(pagesize f32) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_page")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Range) set_as_ratio(value f32) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Range) set_use_rounded_values(enabled bool) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_rounded_values")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Range) is_using_rounded_values() bool {
    mut object_out := false
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_rounded_values")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Range) set_exp_ratio(enabled bool) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_exp_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Range) is_ratio_exp() bool {
    mut object_out := false
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("is_ratio_exp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Range) set_allow_greater(allow bool) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_greater")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Range) is_greater_allowed() bool {
    mut object_out := false
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("is_greater_allowed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Range) set_allow_lesser(allow bool) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_lesser")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Range) is_lesser_allowed() bool {
    mut object_out := false
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("is_lesser_allowed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Range) share(with Node) {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("share")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Range) unshare() {
    classname := StringName.new("Range")
    defer { classname.deinit() }
    fnname := StringName.new("unshare")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
