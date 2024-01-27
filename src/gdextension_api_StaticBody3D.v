module vgdextension

pub type StaticBody3D = voidptr

pub fn (mut r StaticBody3D) set_constant_linear_velocity(vel Vector3) {
    classname := StringName.new("StaticBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StaticBody3D) set_constant_angular_velocity(vel Vector3) {
    classname := StringName.new("StaticBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StaticBody3D) get_constant_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("StaticBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StaticBody3D) get_constant_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("StaticBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StaticBody3D) set_physics_material_override(physics_material_override PhysicsMaterial) {
    classname := StringName.new("StaticBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784508650)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StaticBody3D) get_physics_material_override() PhysicsMaterial {
    mut object_out := PhysicsMaterial(unsafe{nil})
    classname := StringName.new("StaticBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_material_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2521850424)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
