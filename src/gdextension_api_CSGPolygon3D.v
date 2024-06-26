module vgdextension

pub enum CSGPolygon3DMode as i64 {
    mode_depth = 0
    mode_spin = 1
    mode_path = 2
}

pub enum CSGPolygon3DPathRotation as i64 {
    path_rotation_polygon = 0
    path_rotation_path = 1
    path_rotation_path_follow = 2
}

pub enum CSGPolygon3DPathIntervalType as i64 {
    path_interval_distance = 0
    path_interval_subdivide = 1
}

@[noinit]
pub struct CSGPolygon3D {
    CSGPrimitive3D
}

pub fn (r &CSGPolygon3D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_mode(mode CSGPolygon3DMode) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3158377035)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_mode() CSGPolygon3DMode {
    mut object_out := i64(CSGPolygon3DMode.mode_depth)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1201612222)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CSGPolygon3DMode(object_out)}
}
pub fn (r &CSGPolygon3D) set_depth(depth f64) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_depth() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_spin_degrees(degrees f64) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_spin_degrees")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_spin_degrees() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_spin_degrees")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_spin_sides(spin_sides i32) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_spin_sides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&spin_sides)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_spin_sides() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_spin_sides")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_path_node(path NodePath) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_path_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_path_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_path_interval_type(interval_type CSGPolygon3DPathIntervalType) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_interval_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744240707)
    mut args := unsafe { [1]voidptr{} }
    i64_interval_type := i64(interval_type)
    args[0] = unsafe{voidptr(&i64_interval_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_path_interval_type() CSGPolygon3DPathIntervalType {
    mut object_out := i64(CSGPolygon3DPathIntervalType.path_interval_distance)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_path_interval_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3434618397)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CSGPolygon3DPathIntervalType(object_out)}
}
pub fn (r &CSGPolygon3D) set_path_interval(interval f64) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&interval)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_path_interval() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_path_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_path_simplify_angle(degrees f64) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_simplify_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_path_simplify_angle() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_path_simplify_angle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_path_rotation(path_rotation CSGPolygon3DPathRotation) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1412947288)
    mut args := unsafe { [1]voidptr{} }
    i64_path_rotation := i64(path_rotation)
    args[0] = unsafe{voidptr(&i64_path_rotation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_path_rotation() CSGPolygon3DPathRotation {
    mut object_out := i64(CSGPolygon3DPathRotation.path_rotation_polygon)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_path_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 647219346)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CSGPolygon3DPathRotation(object_out)}
}
pub fn (r &CSGPolygon3D) set_path_local(enable bool) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) is_path_local() bool {
    mut object_out := false
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("is_path_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_path_continuous_u(enable bool) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_continuous_u")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) is_path_continuous_u() bool {
    mut object_out := false
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("is_path_continuous_u")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_path_u_distance(distance f64) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_u_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_path_u_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_path_u_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_path_joined(enable bool) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_path_joined")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) is_path_joined() bool {
    mut object_out := false
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("is_path_joined")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_material(material Material) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&material.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGPolygon3D) set_smooth_faces(smooth_faces bool) {
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("set_smooth_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&smooth_faces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGPolygon3D) get_smooth_faces() bool {
    mut object_out := false
    classname := StringName.new("CSGPolygon3D")
    fnname := StringName.new("get_smooth_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
