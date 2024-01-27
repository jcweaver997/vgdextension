module vgdextension

pub enum Geometry2DPolyBooleanOperation {
    operation_union = 0
    operation_difference = 1
    operation_intersection = 2
    operation_xor = 3
}

pub enum Geometry2DPolyJoinType {
    join_square = 0
    join_round = 1
    join_miter = 2
}

pub enum Geometry2DPolyEndType {
    end_polygon = 0
    end_joined = 1
    end_butt = 2
    end_square = 3
    end_round = 4
}

pub type Geometry2D = voidptr

pub fn (mut r Geometry2D) is_point_in_circle(point Vector2, circle_position Vector2, circle_radius f32) bool {
    mut object_out := false
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_point_in_circle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2929491703)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&circle_position)}
    args[2] = unsafe{voidptr(&circle_radius)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) segment_intersects_circle(segment_from Vector2, segment_to Vector2, circle_position Vector2, circle_radius f32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("segment_intersects_circle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1356928167)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&segment_from)}
    args[1] = unsafe{voidptr(&segment_to)}
    args[2] = unsafe{voidptr(&circle_position)}
    args[3] = unsafe{voidptr(&circle_radius)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) segment_intersects_segment(from_a Vector2, to_a Vector2, from_b Vector2, to_b Vector2) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("segment_intersects_segment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2058025344)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&from_a)}
    args[1] = unsafe{voidptr(&to_a)}
    args[2] = unsafe{voidptr(&from_b)}
    args[3] = unsafe{voidptr(&to_b)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) line_intersects_line(from_a Vector2, dir_a Vector2, from_b Vector2, dir_b Vector2) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("line_intersects_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2058025344)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&from_a)}
    args[1] = unsafe{voidptr(&dir_a)}
    args[2] = unsafe{voidptr(&from_b)}
    args[3] = unsafe{voidptr(&dir_b)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) get_closest_points_between_segments(p1 Vector2, q1 Vector2, p2 Vector2, q2 Vector2) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_points_between_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3344690961)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&p1)}
    args[1] = unsafe{voidptr(&q1)}
    args[2] = unsafe{voidptr(&p2)}
    args[3] = unsafe{voidptr(&q2)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) get_closest_point_to_segment(point Vector2, s1 Vector2, s2 Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point_to_segment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4172901909)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&s1)}
    args[2] = unsafe{voidptr(&s2)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) get_closest_point_to_segment_uncapped(point Vector2, s1 Vector2, s2 Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point_to_segment_uncapped")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4172901909)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&s1)}
    args[2] = unsafe{voidptr(&s2)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Geometry2D) point_is_inside_triangle(point Vector2, a Vector2, b Vector2, c Vector2) bool {
    mut object_out := false
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("point_is_inside_triangle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1025948137)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&a)}
    args[2] = unsafe{voidptr(&b)}
    args[3] = unsafe{voidptr(&c)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) is_polygon_clockwise(polygon PackedVector2Array) bool {
    mut object_out := false
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_polygon_clockwise")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1361156557)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) is_point_in_polygon(point Vector2, polygon PackedVector2Array) bool {
    mut object_out := false
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_point_in_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 738277916)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) triangulate_polygon(polygon PackedVector2Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("triangulate_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1389921771)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) triangulate_delaunay(points PackedVector2Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("triangulate_delaunay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1389921771)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) convex_hull(points PackedVector2Array) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("convex_hull")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2004331998)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) decompose_polygon_in_convex(polygon PackedVector2Array) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("decompose_polygon_in_convex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3982393695)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) merge_polygons(polygon_a PackedVector2Array, polygon_b PackedVector2Array) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("merge_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3637387053)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&polygon_a)}
    args[1] = unsafe{voidptr(&polygon_b)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) clip_polygons(polygon_a PackedVector2Array, polygon_b PackedVector2Array) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("clip_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3637387053)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&polygon_a)}
    args[1] = unsafe{voidptr(&polygon_b)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) intersect_polygons(polygon_a PackedVector2Array, polygon_b PackedVector2Array) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("intersect_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3637387053)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&polygon_a)}
    args[1] = unsafe{voidptr(&polygon_b)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) exclude_polygons(polygon_a PackedVector2Array, polygon_b PackedVector2Array) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("exclude_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3637387053)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&polygon_a)}
    args[1] = unsafe{voidptr(&polygon_b)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) clip_polyline_with_polygon(polyline PackedVector2Array, polygon PackedVector2Array) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("clip_polyline_with_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3637387053)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&polyline)}
    args[1] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) intersect_polyline_with_polygon(polyline PackedVector2Array, polygon PackedVector2Array) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("intersect_polyline_with_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3637387053)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&polyline)}
    args[1] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) offset_polygon(polygon PackedVector2Array, delta f32, join_type Geometry2DPolyJoinType) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("offset_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837618924)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    args[1] = unsafe{voidptr(&delta)}
    args[2] = unsafe{voidptr(&join_type)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) offset_polyline(polyline PackedVector2Array, delta f32, join_type Geometry2DPolyJoinType, end_type Geometry2DPolyEndType) Array {
    mut object_out := Array{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("offset_polyline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 328033063)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&polyline)}
    args[1] = unsafe{voidptr(&delta)}
    args[2] = unsafe{voidptr(&join_type)}
    args[3] = unsafe{voidptr(&end_type)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Geometry2D) make_atlas(sizes PackedVector2Array) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Geometry2D")
    defer { classname.deinit() }
    fnname := StringName.new("make_atlas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1337682371)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sizes)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
