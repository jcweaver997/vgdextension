module vgdextension

@[noinit]
pub struct Engine {
    Object
}

pub fn Engine.get_singleton() Engine {
    sn := StringName.new("Engine")
    o := Engine{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &Engine) set_physics_ticks_per_second(physics_ticks_per_second i32) {
    classname := StringName.new("Engine")
    fnname := StringName.new("set_physics_ticks_per_second")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&physics_ticks_per_second)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Engine) get_physics_ticks_per_second() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_physics_ticks_per_second")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) set_max_physics_steps_per_frame(max_physics_steps i32) {
    classname := StringName.new("Engine")
    fnname := StringName.new("set_max_physics_steps_per_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_physics_steps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Engine) get_max_physics_steps_per_frame() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_max_physics_steps_per_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) set_physics_jitter_fix(physics_jitter_fix f64) {
    classname := StringName.new("Engine")
    fnname := StringName.new("set_physics_jitter_fix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&physics_jitter_fix)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Engine) get_physics_jitter_fix() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_physics_jitter_fix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_physics_interpolation_fraction() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_physics_interpolation_fraction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) set_max_fps(max_fps i32) {
    classname := StringName.new("Engine")
    fnname := StringName.new("set_max_fps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_fps)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Engine) get_max_fps() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_max_fps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) set_time_scale(time_scale f64) {
    classname := StringName.new("Engine")
    fnname := StringName.new("set_time_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Engine) get_time_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_time_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_frames_drawn() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_frames_drawn")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_frames_per_second() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_frames_per_second")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_physics_frames() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_physics_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_process_frames() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_process_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_main_loop() MainLoop {
    mut object_out := MainLoop{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_main_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1016888095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_version_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_version_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_author_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_author_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_copyright_info() Array {
    mut object_out := Array{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_copyright_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_donor_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_donor_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_license_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_license_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_license_text() string {
    mut object_out := String{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_license_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Engine) get_architecture_name() string {
    mut object_out := String{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_architecture_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Engine) is_in_physics_frame() bool {
    mut object_out := false
    classname := StringName.new("Engine")
    fnname := StringName.new("is_in_physics_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) has_singleton(name string) bool {
    mut object_out := false
    classname := StringName.new("Engine")
    fnname := StringName.new("has_singleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_singleton(name string) Object {
    mut object_out := Object{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_singleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1371597918)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) register_singleton(name string, instance Object) {
    classname := StringName.new("Engine")
    fnname := StringName.new("register_singleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 965313290)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = instance.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Engine) unregister_singleton(name string) {
    classname := StringName.new("Engine")
    fnname := StringName.new("unregister_singleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Engine) get_singleton_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_singleton_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) register_script_language(language ScriptLanguage) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Engine")
    fnname := StringName.new("register_script_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850254898)
    mut args := unsafe { [1]voidptr{} }
    args[0] = language.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Engine) unregister_script_language(language ScriptLanguage) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Engine")
    fnname := StringName.new("unregister_script_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1850254898)
    mut args := unsafe { [1]voidptr{} }
    args[0] = language.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Engine) get_script_language_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Engine")
    fnname := StringName.new("get_script_language_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_script_language(index i32) ScriptLanguage {
    mut object_out := ScriptLanguage{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_script_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2151255799)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) is_editor_hint() bool {
    mut object_out := false
    classname := StringName.new("Engine")
    fnname := StringName.new("is_editor_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Engine) get_write_movie_path() string {
    mut object_out := String{}
    classname := StringName.new("Engine")
    fnname := StringName.new("get_write_movie_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Engine) set_print_error_messages(enabled bool) {
    classname := StringName.new("Engine")
    fnname := StringName.new("set_print_error_messages")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Engine) is_printing_error_messages() bool {
    mut object_out := false
    classname := StringName.new("Engine")
    fnname := StringName.new("is_printing_error_messages")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
