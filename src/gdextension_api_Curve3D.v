module vgdextension

pub type Curve3D = voidptr

pub fn (r &Curve3D) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve3D) set_point_count(count i32) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Curve3D) add_point(position Vector3, gdin Vector3, out Vector3, index i32) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3836314258)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Curve3D) set_point_position(idx i32, position Vector3) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve3D) get_point_position(idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve3D) set_point_tilt(idx i32, tilt f32) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_tilt")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve3D) get_point_tilt(idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_tilt")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve3D) set_point_in(idx i32, position Vector3) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_in")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve3D) get_point_in(idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_in")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve3D) set_point_out(idx i32, position Vector3) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_out")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve3D) get_point_out(idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_out")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve3D) remove_point(idx i32) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Curve3D) clear_points() {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve3D) sample(idx i32, t f32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("sample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3285246857)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&t)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) samplef(fofs f32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("samplef")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2553580215)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fofs)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve3D) set_bake_interval(distance f32) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve3D) get_bake_interval() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve3D) set_up_vector_enabled(enable bool) {
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_up_vector_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve3D) is_up_vector_enabled() bool {
    mut object_out := false
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_up_vector_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) get_baked_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_baked_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) sample_baked(offset f32, cubic bool) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("sample_baked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1350085894)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&cubic)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) sample_baked_with_rotation(offset f32, cubic bool, apply_tilt bool) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("sample_baked_with_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1939359131)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&cubic)}
    args[2] = unsafe{voidptr(&apply_tilt)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) sample_baked_up_vector(offset f32, apply_tilt bool) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("sample_baked_up_vector")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1362627031)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&apply_tilt)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) get_baked_points() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_baked_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) get_baked_tilts() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_baked_tilts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) get_baked_up_vectors() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_baked_up_vectors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) get_closest_point(to_point Vector3) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 192990374)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) get_closest_offset(to_point Vector3) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1109078154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) tessellate(max_stages i32, tolerance_degrees f32) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("tessellate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1519759391)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_stages)}
    args[1] = unsafe{voidptr(&tolerance_degrees)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve3D) tessellate_even_length(max_stages i32, tolerance_length f32) PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Curve3D")
    defer { classname.deinit() }
    fnname := StringName.new("tessellate_even_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 133237049)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_stages)}
    args[1] = unsafe{voidptr(&tolerance_length)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
