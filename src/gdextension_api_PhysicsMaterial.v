module vgdextension

@[noinit]
pub struct PhysicsMaterial {
    Resource
}

pub fn (mut r PhysicsMaterial) set_friction(friction f64) {
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_friction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&friction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsMaterial) get_friction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_friction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsMaterial) set_rough(rough bool) {
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_rough")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rough)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsMaterial) is_rough() bool {
    mut object_out := false
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("is_rough")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsMaterial) set_bounce(bounce f64) {
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_bounce")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bounce)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsMaterial) get_bounce() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_bounce")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsMaterial) set_absorbent(absorbent bool) {
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_absorbent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&absorbent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicsMaterial) is_absorbent() bool {
    mut object_out := false
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("is_absorbent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
