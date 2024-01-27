pub type PhysicsDirectSpaceState3D = voidptr

pub fn (mut r PhysicsDirectSpaceState3D) intersect_point(parameters PhysicsPointQueryParameters3D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    defer { classname.deinit() }
    fnname := StringName.new("intersect_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 45993382)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3D) intersect_ray(parameters PhysicsRayQueryParameters3D) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    defer { classname.deinit() }
    fnname := StringName.new("intersect_ray")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3957970750)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3D) intersect_shape(parameters PhysicsShapeQueryParameters3D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    defer { classname.deinit() }
    fnname := StringName.new("intersect_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 550215980)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3D) cast_motion(parameters PhysicsShapeQueryParameters3D) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    defer { classname.deinit() }
    fnname := StringName.new("cast_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1778757334)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3D) collide_shape(parameters PhysicsShapeQueryParameters3D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    defer { classname.deinit() }
    fnname := StringName.new("collide_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 550215980)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState3D) get_rest_info(parameters PhysicsShapeQueryParameters3D) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("PhysicsDirectSpaceState3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rest_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1376751592)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
