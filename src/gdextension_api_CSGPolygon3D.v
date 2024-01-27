pub enum CSGPolygon3DMode {
    mode_depth = 0
    mode_spin = 1
    mode_path = 2
}

pub enum CSGPolygon3DPathRotation {
    path_rotation_polygon = 0
    path_rotation_path = 1
    path_rotation_path_follow = 2
}

pub enum CSGPolygon3DPathIntervalType {
    path_interval_distance = 0
    path_interval_subdivide = 1
}

pub type CSGPolygon3D = voidptr

pub fn (mut r CSGPolygon3D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_mode(mode CSGPolygon3DMode) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3158377035)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_mode() CSGPolygon3DMode {
    mut object_out := CSGPolygon3DMode.mode_depth
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1201612222)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_depth(depth f32) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_depth() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_spin_degrees(degrees f32) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_spin_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_spin_degrees() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_spin_degrees")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_spin_sides(spin_sides i32) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_spin_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_spin_sides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_spin_sides")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_node(path NodePath) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_path_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_interval_type(interval_type CSGPolygon3DPathIntervalType) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_interval_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744240707)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_path_interval_type() CSGPolygon3DPathIntervalType {
    mut object_out := CSGPolygon3DPathIntervalType.path_interval_distance
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_interval_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3434618397)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_interval(interval f32) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_path_interval() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_simplify_angle(degrees f32) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_simplify_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_path_simplify_angle() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_simplify_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_rotation(path_rotation CSGPolygon3DPathRotation) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1412947288)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_path_rotation() CSGPolygon3DPathRotation {
    mut object_out := CSGPolygon3DPathRotation.path_rotation_polygon
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 647219346)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_local(enable bool) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) is_path_local() bool {
    mut object_out := false
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_path_local")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_continuous_u(enable bool) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_continuous_u")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) is_path_continuous_u() bool {
    mut object_out := false
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_path_continuous_u")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_u_distance(distance f32) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_u_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_path_u_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_u_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_path_joined(enable bool) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_joined")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) is_path_joined() bool {
    mut object_out := false
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_path_joined")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_material(material Material) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_material() Material {
    mut object_out := Material(unsafe{nil})
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGPolygon3D) set_smooth_faces(smooth_faces bool) {
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_smooth_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGPolygon3D) get_smooth_faces() bool {
    mut object_out := false
    classname := StringName.new("CSGPolygon3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_smooth_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
