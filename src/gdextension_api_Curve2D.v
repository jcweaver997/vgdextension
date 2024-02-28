module vgdextension

@[noinit]
pub struct Curve2D {
    Resource
}

pub fn (r &Curve2D) get_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) set_point_count(count i32) {
    classname := StringName.new("Curve2D")
    fnname := StringName.new("set_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve2D) add_point(position Vector2, gdin Vector2, out Vector2, index i32) {
    classname := StringName.new("Curve2D")
    fnname := StringName.new("add_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4175465202)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&gdin)}
    args[2] = unsafe{voidptr(&out)}
    args[3] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve2D) set_point_position(idx i32, position Vector2) {
    classname := StringName.new("Curve2D")
    fnname := StringName.new("set_point_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve2D) get_point_position(idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_point_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) set_point_in(idx i32, position Vector2) {
    classname := StringName.new("Curve2D")
    fnname := StringName.new("set_point_in")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve2D) get_point_in(idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_point_in")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) set_point_out(idx i32, position Vector2) {
    classname := StringName.new("Curve2D")
    fnname := StringName.new("set_point_out")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve2D) get_point_out(idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_point_out")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) remove_point(idx i32) {
    classname := StringName.new("Curve2D")
    fnname := StringName.new("remove_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve2D) clear_points() {
    classname := StringName.new("Curve2D")
    fnname := StringName.new("clear_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve2D) sample(idx i32, t f64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("sample")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 26514310)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&t)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) samplef(fofs f64) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("samplef")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3588506812)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fofs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) set_bake_interval(distance f64) {
    classname := StringName.new("Curve2D")
    fnname := StringName.new("set_bake_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Curve2D) get_bake_interval() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_bake_interval")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) get_baked_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_baked_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) sample_baked(offset f64, cubic bool) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("sample_baked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3464257706)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&cubic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) sample_baked_with_rotation(offset f64, cubic bool) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("sample_baked_with_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3296056341)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    args[1] = unsafe{voidptr(&cubic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) get_baked_points() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_baked_points")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) get_closest_point(to_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_closest_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) get_closest_offset(to_point Vector2) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Curve2D")
    fnname := StringName.new("get_closest_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2276447920)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) tessellate(max_stages i32, tolerance_degrees f64) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("tessellate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 958145977)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_stages)}
    args[1] = unsafe{voidptr(&tolerance_degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Curve2D) tessellate_even_length(max_stages i32, tolerance_length f64) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Curve2D")
    fnname := StringName.new("tessellate_even_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2319761637)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_stages)}
    args[1] = unsafe{voidptr(&tolerance_length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
