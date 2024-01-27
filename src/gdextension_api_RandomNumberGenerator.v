pub type RandomNumberGenerator = voidptr

pub fn (mut r RandomNumberGenerator) set_seed(seed i32) {
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("set_seed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r RandomNumberGenerator) get_seed() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("get_seed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RandomNumberGenerator) set_state(state i32) {
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("set_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RandomNumberGenerator) get_state() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("get_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RandomNumberGenerator) randi() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("randi")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RandomNumberGenerator) randf() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("randf")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RandomNumberGenerator) randfn(mean f32, deviation f32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("randfn")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 837325100)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&mean)}
    args[1] = unsafe{voidptr(&deviation)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RandomNumberGenerator) randf_range(from f32, to f32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("randf_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4269894367)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RandomNumberGenerator) randi_range(from i32, to i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("randi_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RandomNumberGenerator) randomize() {
    classname := StringName.new("RandomNumberGenerator")
    defer { classname.deinit() }
    fnname := StringName.new("randomize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
