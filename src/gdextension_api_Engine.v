module vgdextension

pub struct Engine {
    Object
}

pub fn Engine.get_singleton() Engine {
    sn := StringName.new("Engine")
    defer {sn.deinit()}
    o := Engine{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r Engine) set_physics_ticks_per_second(physics_ticks_per_second i32) {
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_ticks_per_second")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&physics_ticks_per_second)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Engine) get_physics_ticks_per_second() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_ticks_per_second")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) set_max_physics_steps_per_frame(max_physics_steps i32) {
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_physics_steps_per_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_physics_steps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Engine) get_max_physics_steps_per_frame() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_physics_steps_per_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) set_physics_jitter_fix(physics_jitter_fix f64) {
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("set_physics_jitter_fix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&physics_jitter_fix)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Engine) get_physics_jitter_fix() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_jitter_fix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_physics_interpolation_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_interpolation_fraction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) set_max_fps(max_fps i32) {
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_fps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Engine) get_max_fps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_fps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) set_time_scale(time_scale f64) {
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("set_time_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Engine) get_time_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) get_frames_drawn() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_frames_drawn")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_frames_per_second() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_frames_per_second")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_physics_frames() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_process_frames() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_main_loop() MainLoop {
    mut object_out := MainLoop{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_main_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1016888095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_version_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_version_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_author_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_author_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_copyright_info() Array {
    mut object_out := Array{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_copyright_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_donor_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_donor_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_license_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_license_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_license_text() String {
    mut object_out := String{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_license_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_architecture_name() String {
    mut object_out := String{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_architecture_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) is_in_physics_frame() bool {
    mut object_out := false
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_physics_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) has_singleton(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("has_singleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_singleton(name StringName) Object {
    mut object_out := Object{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_singleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1371597918)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) register_singleton(name StringName, instance Object) {
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("register_singleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965313290)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = instance.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Engine) unregister_singleton(name StringName) {
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("unregister_singleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Engine) get_singleton_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_singleton_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) register_script_language(language ScriptLanguage) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("register_script_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850254898)
    mut args := unsafe { [1]voidptr{} }
    args[0] = language.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) unregister_script_language(language ScriptLanguage) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("unregister_script_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850254898)
    mut args := unsafe { [1]voidptr{} }
    args[0] = language.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) get_script_language_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_language_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_script_language(index i32) ScriptLanguage {
    mut object_out := ScriptLanguage{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2151255799)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) is_editor_hint() bool {
    mut object_out := false
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("is_editor_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Engine) get_write_movie_path() String {
    mut object_out := String{}
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("get_write_movie_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Engine) set_print_error_messages(enabled bool) {
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("set_print_error_messages")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Engine) is_printing_error_messages() bool {
    mut object_out := false
    classname := StringName.new("Engine")
    defer { classname.deinit() }
    fnname := StringName.new("is_printing_error_messages")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
