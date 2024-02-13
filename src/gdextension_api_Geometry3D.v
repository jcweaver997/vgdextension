module vgdextension

@[noinit]
pub struct Geometry3D {
    Object
}

pub fn Geometry3D.get_singleton() Geometry3D {
    sn := StringName.new("Geometry3D")
    defer {sn.deinit()}
    o := Geometry3D{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r Geometry3D) build_box_planes(extents Vector3) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("build_box_planes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3622277145)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&extents)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) build_cylinder_planes(radius f64, height f64, sides i32, axis Vector3Axis) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("build_cylinder_planes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3142160516)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    args[1] = unsafe{voidptr(&height)}
    args[2] = unsafe{voidptr(&sides)}
    args[3] = unsafe{voidptr(&axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) build_capsule_planes(radius f64, height f64, sides i32, lats i32, axis Vector3Axis) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("build_capsule_planes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 410870045)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    args[1] = unsafe{voidptr(&height)}
    args[2] = unsafe{voidptr(&sides)}
    args[3] = unsafe{voidptr(&lats)}
    args[4] = unsafe{voidptr(&axis)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) get_closest_points_between_segments(p1 Vector3, p2 Vector3, q1 Vector3, q2 Vector3) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_points_between_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1056373962)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&p1)}
    args[1] = unsafe{voidptr(&p2)}
    args[2] = unsafe{voidptr(&q1)}
    args[3] = unsafe{voidptr(&q2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) get_closest_point_to_segment(point Vector3, s1 Vector3, s2 Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point_to_segment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2168193209)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&s1)}
    args[2] = unsafe{voidptr(&s2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) get_closest_point_to_segment_uncapped(point Vector3, s1 Vector3, s2 Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point_to_segment_uncapped")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2168193209)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&s1)}
    args[2] = unsafe{voidptr(&s2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) ray_intersects_triangle(from Vector3, dir Vector3, a Vector3, b Vector3, c Vector3) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("ray_intersects_triangle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1718655448)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&dir)}
    args[2] = unsafe{voidptr(&a)}
    args[3] = unsafe{voidptr(&b)}
    args[4] = unsafe{voidptr(&c)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) segment_intersects_triangle(from Vector3, to Vector3, a Vector3, b Vector3, c Vector3) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("segment_intersects_triangle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1718655448)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&a)}
    args[3] = unsafe{voidptr(&b)}
    args[4] = unsafe{voidptr(&c)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) segment_intersects_sphere(from Vector3, to Vector3, sphere_position Vector3, sphere_radius f64) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("segment_intersects_sphere")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4080141172)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&sphere_position)}
    args[3] = unsafe{voidptr(&sphere_radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) segment_intersects_cylinder(from Vector3, to Vector3, height f64, radius f64) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("segment_intersects_cylinder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2361316491)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&height)}
    args[3] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) segment_intersects_convex(from Vector3, to Vector3, planes Array) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("segment_intersects_convex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 537425332)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&planes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry3D) clip_polygon(points PackedVector3Array, plane Plane) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Geometry3D")
    defer { classname.deinit() }
    fnname := StringName.new("clip_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2603188319)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&plane)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
