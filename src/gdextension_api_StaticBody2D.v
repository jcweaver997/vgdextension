pub type StaticBody2D = voidptr

pub fn (mut r StaticBody2D) set_constant_linear_velocity(vel Vector2) {
    classname := StringName.new("StaticBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StaticBody2D) set_constant_angular_velocity(vel f32) {
    classname := StringName.new("StaticBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StaticBody2D) get_constant_linear_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StaticBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StaticBody2D) get_constant_angular_velocity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("StaticBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StaticBody2D) set_physics_material_override(physics_material_override PhysicsMaterial) {
    classname := StringName.new("StaticBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784508650)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StaticBody2D) get_physics_material_override() PhysicsMaterial {
    mut object_out := PhysicsMaterial(unsafe{nil})
    classname := StringName.new("StaticBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2521850424)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
