module vgdextension

pub type Curve2D = voidptr

pub fn (r &Curve2D) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve2D) set_point_count(count i32) {
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Curve2D) add_point(position Vector2, gdin Vector2, out Vector2, index i32) {
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2437345566)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Curve2D) set_point_position(idx i32, position Vector2) {
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve2D) get_point_position(idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve2D) set_point_in(idx i32, position Vector2) {
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_in")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve2D) get_point_in(idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_in")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve2D) set_point_out(idx i32, position Vector2) {
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_out")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve2D) get_point_out(idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_out")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve2D) remove_point(idx i32) {
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Curve2D) clear_points() {
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve2D) sample(idx i32, t f32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("sample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 26514310)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&t)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) samplef(fofs f32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("samplef")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3588506812)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fofs)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Curve2D) set_bake_interval(distance f32) {
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bake_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Curve2D) get_bake_interval() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bake_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) get_baked_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_baked_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) sample_baked(offset f32, cubic bool) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("sample_baked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3464257706)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&cubic)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) sample_baked_with_rotation(offset f32, cubic bool) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("sample_baked_with_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3296056341)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&cubic)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) get_baked_points() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_baked_points")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) get_closest_point(to_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) get_closest_offset(to_point Vector2) f32 {
    mut object_out := f32(0)
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_closest_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276447920)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) tessellate(max_stages i32, tolerance_degrees f32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("tessellate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 958145977)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_stages)}
    args[1] = unsafe{voidptr(&tolerance_degrees)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Curve2D) tessellate_even_length(max_stages i32, tolerance_length f32) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Curve2D")
    defer { classname.deinit() }
    fnname := StringName.new("tessellate_even_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2319761637)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_stages)}
    args[1] = unsafe{voidptr(&tolerance_length)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
