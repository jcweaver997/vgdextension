module vgdextension

pub type PhysicsDirectSpaceState2D = voidptr

pub fn (mut r PhysicsDirectSpaceState2D) intersect_point(parameters PhysicsPointQueryParameters2D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    defer { classname.deinit() }
    fnname := StringName.new("intersect_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3278207904)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) intersect_ray(parameters PhysicsRayQueryParameters2D) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    defer { classname.deinit() }
    fnname := StringName.new("intersect_ray")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1590275562)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) intersect_shape(parameters PhysicsShapeQueryParameters2D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    defer { classname.deinit() }
    fnname := StringName.new("intersect_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3803848594)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) cast_motion(parameters PhysicsShapeQueryParameters2D) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    defer { classname.deinit() }
    fnname := StringName.new("cast_motion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711275086)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) collide_shape(parameters PhysicsShapeQueryParameters2D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    defer { classname.deinit() }
    fnname := StringName.new("collide_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3803848594)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) get_rest_info(parameters PhysicsShapeQueryParameters2D) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rest_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2803666496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parameters)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
