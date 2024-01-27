module vgdextension

pub type PhysicsMaterial = voidptr

pub fn (mut r PhysicsMaterial) set_friction(friction f32) {
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_friction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsMaterial) get_friction() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_friction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsMaterial) set_rough(rough bool) {
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_rough")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsMaterial) is_rough() bool {
    mut object_out := false
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("is_rough")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsMaterial) set_bounce(bounce f32) {
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_bounce")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsMaterial) get_bounce() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_bounce")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsMaterial) set_absorbent(absorbent bool) {
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_absorbent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsMaterial) is_absorbent() bool {
    mut object_out := false
    classname := StringName.new("PhysicsMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("is_absorbent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
