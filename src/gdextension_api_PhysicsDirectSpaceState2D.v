module vgdextension

@[noinit]
pub struct PhysicsDirectSpaceState2D {
    Object
}

pub fn (mut r PhysicsDirectSpaceState2D) intersect_point(parameters PhysicsPointQueryParameters2D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    fnname := StringName.new("intersect_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2118456068)
    mut args := unsafe { [2]voidptr{} }
    args[0] = parameters.ptr
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) intersect_ray(parameters PhysicsRayQueryParameters2D) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    fnname := StringName.new("intersect_ray")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1590275562)
    mut args := unsafe { [1]voidptr{} }
    args[0] = parameters.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) intersect_shape(parameters PhysicsShapeQueryParameters2D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    fnname := StringName.new("intersect_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488867228)
    mut args := unsafe { [2]voidptr{} }
    args[0] = parameters.ptr
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) cast_motion(parameters PhysicsShapeQueryParameters2D) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    fnname := StringName.new("cast_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711275086)
    mut args := unsafe { [1]voidptr{} }
    args[0] = parameters.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) collide_shape(parameters PhysicsShapeQueryParameters2D, max_results i32) Array {
    mut object_out := Array{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    fnname := StringName.new("collide_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2488867228)
    mut args := unsafe { [2]voidptr{} }
    args[0] = parameters.ptr
    args[1] = unsafe{voidptr(&max_results)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PhysicsDirectSpaceState2D) get_rest_info(parameters PhysicsShapeQueryParameters2D) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("PhysicsDirectSpaceState2D")
    fnname := StringName.new("get_rest_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2803666496)
    mut args := unsafe { [1]voidptr{} }
    args[0] = parameters.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
