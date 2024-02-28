module vgdextension

@[noinit]
pub struct RandomNumberGenerator {
    RefCounted
}

pub fn (r &RandomNumberGenerator) set_seed(seed u64) {
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("set_seed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RandomNumberGenerator) get_seed() u64 {
    mut object_out := u64(0)
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("get_seed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RandomNumberGenerator) set_state(state u64) {
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("set_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RandomNumberGenerator) get_state() u64 {
    mut object_out := u64(0)
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("get_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RandomNumberGenerator) randi() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("randi")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RandomNumberGenerator) randf() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("randf")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RandomNumberGenerator) randfn(mean f64, deviation f64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("randfn")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 837325100)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mean)}
    args[1] = unsafe{voidptr(&deviation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RandomNumberGenerator) randf_range(from f64, to f64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("randf_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4269894367)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RandomNumberGenerator) randi_range(from i32, to i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("randi_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RandomNumberGenerator) randomize() {
    classname := StringName.new("RandomNumberGenerator")
    fnname := StringName.new("randomize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
