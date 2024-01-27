module vgdextension

pub type PhysicsShapeQueryParameters2D = voidptr

pub fn (mut r PhysicsShapeQueryParameters2D) set_shape(shape Resource) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) get_shape() Resource {
    mut object_out := Resource(unsafe{nil})
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters2D) set_shape_rid(shape RID) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) get_shape_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters2D) set_transform(transform Transform2D) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) get_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters2D) set_motion(motion Vector2) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) get_motion() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters2D) set_margin(margin f32) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) get_margin() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters2D) set_collision_mask(collision_mask i32) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) get_collision_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters2D) set_exclude(exclude Array) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) get_exclude() Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters2D) set_collide_with_bodies(enable bool) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) is_collide_with_bodies_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_bodies_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsShapeQueryParameters2D) set_collide_with_areas(enable bool) {
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collide_with_areas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicsShapeQueryParameters2D) is_collide_with_areas_enabled() bool {
    mut object_out := false
    classname := StringName.new("PhysicsShapeQueryParameters2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_collide_with_areas_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
