module vgdextension

@[noinit]
pub struct PhysicsShapeQueryParameters3D {
    RefCounted
}

pub fn (mut r PhysicsShapeQueryParameters3D) set_shape(shape Resource) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
    mut args := unsafe { [1]voidptr{} }
    args[0] = shape.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) get_shape() Resource {
    mut object_out := Resource{}
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("get_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters3D) set_shape_rid(shape RID) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_shape_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) get_shape_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("get_shape_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters3D) set_transform(transform Transform3D) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) get_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters3D) set_motion(motion Vector3) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&motion)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) get_motion() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("get_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters3D) set_margin(margin f64) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) get_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters3D) set_collision_mask(collision_mask u32) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters3D) set_exclude(exclude Array) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_exclude")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&exclude)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) get_exclude() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("get_exclude")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters3D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_collide_with_bodies")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("is_collide_with_bodies_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters3D) set_collide_with_areas(enable bool) {
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("set_collide_with_areas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsShapeQueryParameters3D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsShapeQueryParameters3D")
    fnname := StringName.new("is_collide_with_areas_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
