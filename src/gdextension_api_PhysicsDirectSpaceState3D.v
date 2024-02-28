module vgdextension

@[noinit]
pub struct PhysicsDirectSpaceState3D {
    Object
}

pub fn (r &PhysicsDirectSpaceState3D) intersect_point(parameters PhysicsPointQueryParameters3D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    fnname := StringName.new("intersect_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 975173756)
    mut args := unsafe { [2]voidptr{} }
    args[0] = parameters.ptr
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectSpaceState3D) intersect_ray(parameters PhysicsRayQueryParameters3D) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    fnname := StringName.new("intersect_ray")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3957970750)
    mut args := unsafe { [1]voidptr{} }
    args[0] = parameters.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectSpaceState3D) intersect_shape(parameters PhysicsShapeQueryParameters3D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    fnname := StringName.new("intersect_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3762137681)
    mut args := unsafe { [2]voidptr{} }
    args[0] = parameters.ptr
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectSpaceState3D) cast_motion(parameters PhysicsShapeQueryParameters3D) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    fnname := StringName.new("cast_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778757334)
    mut args := unsafe { [1]voidptr{} }
    args[0] = parameters.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectSpaceState3D) collide_shape(parameters PhysicsShapeQueryParameters3D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    fnname := StringName.new("collide_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3762137681)
    mut args := unsafe { [2]voidptr{} }
    args[0] = parameters.ptr
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PhysicsDirectSpaceState3D) get_rest_info(parameters PhysicsShapeQueryParameters3D) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    fnname := StringName.new("get_rest_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1376751592)
    mut args := unsafe { [1]voidptr{} }
    args[0] = parameters.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
