module vgdextension

pub enum OSRenderingDriver as i64 {
    rendering_driver_vulkan = 0
    rendering_driver_opengl3 = 1
}

pub enum OSSystemDir as i64 {
    system_dir_desktop = 0
    system_dir_dcim = 1
    system_dir_documents = 2
    system_dir_downloads = 3
    system_dir_movies = 4
    system_dir_music = 5
    system_dir_pictures = 6
    system_dir_ringtones = 7
}

@[noinit]
pub struct OS {
    Object
}

pub fn OS.get_singleton() OS {
    sn := StringName.new("OS")
    o := OS{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r OS) get_connected_midi_inputs() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_connected_midi_inputs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) open_midi_inputs() {
    classname := StringName.new("OS")
    fnname := StringName.new("open_midi_inputs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r OS) close_midi_inputs() {
    classname := StringName.new("OS")
    fnname := StringName.new("close_midi_inputs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r OS) alert(text string, title string) {
    classname := StringName.new("OS")
    fnname := StringName.new("alert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1783970740)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(title)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r OS) crash(message string) {
    classname := StringName.new("OS")
    fnname := StringName.new("crash")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r OS) set_low_processor_usage_mode(enable bool) {
    classname := StringName.new("OS")
    fnname := StringName.new("set_low_processor_usage_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OS) is_in_low_processor_usage_mode() bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_in_low_processor_usage_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) set_low_processor_usage_mode_sleep_usec(usec i32) {
    classname := StringName.new("OS")
    fnname := StringName.new("set_low_processor_usage_mode_sleep_usec")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&usec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OS) get_low_processor_usage_mode_sleep_usec() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    fnname := StringName.new("get_low_processor_usage_mode_sleep_usec")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) set_delta_smoothing(delta_smoothing_enabled bool) {
    classname := StringName.new("OS")
    fnname := StringName.new("set_delta_smoothing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta_smoothing_enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OS) is_delta_smoothing_enabled() bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_delta_smoothing_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_processor_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    fnname := StringName.new("get_processor_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_processor_name() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_processor_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_system_fonts() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_system_fonts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_system_font_path(font_name string, weight i32, stretch i32, italic bool) string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_system_font_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 626580860)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(font_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&weight)}
    args[2] = unsafe{voidptr(&stretch)}
    args[3] = unsafe{voidptr(&italic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_system_font_path_for_text(font_name string, text string, locale string, script string, weight i32, stretch i32, italic bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_system_font_path_for_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 197317981)
    mut args := unsafe { [7]voidptr{} }
    arg_sn0 := String.new(font_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(locale)
    args[2] = unsafe{voidptr(&arg_sn2)}
    arg_sn3 := String.new(script)
    args[3] = unsafe{voidptr(&arg_sn3)}
    args[4] = unsafe{voidptr(&weight)}
    args[5] = unsafe{voidptr(&stretch)}
    args[6] = unsafe{voidptr(&italic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_executable_path() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_executable_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r OS) read_string_from_stdin() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("read_string_from_stdin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r OS) execute(path string, arguments PackedStringArray, output Array, read_stderr bool, open_console bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    fnname := StringName.new("execute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1488299882)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&arguments)}
    args[2] = unsafe{voidptr(&output)}
    args[3] = unsafe{voidptr(&read_stderr)}
    args[4] = unsafe{voidptr(&open_console)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) create_process(path string, arguments PackedStringArray, open_console bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    fnname := StringName.new("create_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903767230)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&arguments)}
    args[2] = unsafe{voidptr(&open_console)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) create_instance(arguments PackedStringArray) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    fnname := StringName.new("create_instance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1080601263)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&arguments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) kill(pid i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("OS")
    fnname := StringName.new("kill")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r OS) shell_open(uri string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("OS")
    fnname := StringName.new("shell_open")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(uri)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r OS) shell_show_in_file_manager(file_or_dir_path string, open_folder bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("OS")
    fnname := StringName.new("shell_show_in_file_manager")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565188097)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(file_or_dir_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&open_folder)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &OS) is_process_running(pid i32) bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_process_running")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_process_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    fnname := StringName.new("get_process_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) has_environment(variable string) bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("has_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(variable)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_environment(variable string) string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(variable)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) set_environment(variable string, value string) {
    classname := StringName.new("OS")
    fnname := StringName.new("set_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3605043004)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(variable)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(value)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OS) unset_environment(variable string) {
    classname := StringName.new("OS")
    fnname := StringName.new("unset_environment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3089850668)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(variable)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OS) get_name() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_distribution_name() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_distribution_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_version() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r OS) get_cmdline_args() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_cmdline_args")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) get_cmdline_user_args() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_cmdline_user_args")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_video_adapter_driver_info() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_video_adapter_driver_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) set_restart_on_exit(restart bool, arguments PackedStringArray) {
    classname := StringName.new("OS")
    fnname := StringName.new("set_restart_on_exit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3331453935)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&restart)}
    args[1] = unsafe{voidptr(&arguments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OS) is_restart_on_exit_set() bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_restart_on_exit_set")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_restart_on_exit_arguments() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_restart_on_exit_arguments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) delay_usec(usec i32) {
    classname := StringName.new("OS")
    fnname := StringName.new("delay_usec")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 998575451)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&usec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OS) delay_msec(msec i32) {
    classname := StringName.new("OS")
    fnname := StringName.new("delay_msec")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 998575451)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&msec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OS) get_locale() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_locale_language() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_locale_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_model_name() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_model_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) is_userfs_persistent() bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_userfs_persistent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) is_stdout_verbose() bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_stdout_verbose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) is_debug_build() bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_debug_build")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_static_memory_usage() u64 {
    mut object_out := u64(0)
    classname := StringName.new("OS")
    fnname := StringName.new("get_static_memory_usage")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_static_memory_peak_usage() u64 {
    mut object_out := u64(0)
    classname := StringName.new("OS")
    fnname := StringName.new("get_static_memory_peak_usage")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_memory_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_memory_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) move_to_trash(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("OS")
    fnname := StringName.new("move_to_trash")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2113323047)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &OS) get_user_data_dir() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_user_data_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_system_dir(dir OSSystemDir, shared_storage bool) string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_system_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3073895123)
    mut args := unsafe { [2]voidptr{} }
    i64_dir := i64(dir)
    args[0] = unsafe{voidptr(&i64_dir)}
    args[1] = unsafe{voidptr(&shared_storage)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_config_dir() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_config_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_data_dir() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_data_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_cache_dir() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_cache_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_unique_id() string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_unique_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) get_keycode_string(code Key) string {
    mut object_out := String{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_keycode_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2261993717)
    mut args := unsafe { [1]voidptr{} }
    i64_code := i64(code)
    args[0] = unsafe{voidptr(&i64_code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OS) is_keycode_unicode(code i64) bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_keycode_unicode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) find_keycode_from_string(gdstring string) Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("OS")
    fnname := StringName.new("find_keycode_from_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1084858572)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(gdstring)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (mut r OS) set_use_file_access_save_and_swap(enabled bool) {
    classname := StringName.new("OS")
    fnname := StringName.new("set_use_file_access_save_and_swap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r OS) set_thread_name(name string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("OS")
    fnname := StringName.new("set_thread_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &OS) get_thread_caller_id() u64 {
    mut object_out := u64(0)
    classname := StringName.new("OS")
    fnname := StringName.new("get_thread_caller_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_main_thread_id() u64 {
    mut object_out := u64(0)
    classname := StringName.new("OS")
    fnname := StringName.new("get_main_thread_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) has_feature(tag_name string) bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("has_feature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(tag_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) is_sandboxed() bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("is_sandboxed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) request_permission(name string) bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("request_permission")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) request_permissions() bool {
    mut object_out := false
    classname := StringName.new("OS")
    fnname := StringName.new("request_permissions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OS) get_granted_permissions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    fnname := StringName.new("get_granted_permissions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OS) revoke_granted_permissions() {
    classname := StringName.new("OS")
    fnname := StringName.new("revoke_granted_permissions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
