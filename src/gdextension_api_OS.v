pub enum OSRenderingDriver {
    rendering_driver_vulkan = 0
    rendering_driver_opengl3 = 1
}

pub enum OSSystemDir {
    system_dir_desktop = 0
    system_dir_dcim = 1
    system_dir_documents = 2
    system_dir_downloads = 3
    system_dir_movies = 4
    system_dir_music = 5
    system_dir_pictures = 6
    system_dir_ringtones = 7
}

pub type OS = voidptr

pub fn (mut r OS) get_connected_midi_inputs() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_connected_midi_inputs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) open_midi_inputs() {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("open_midi_inputs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OS) close_midi_inputs() {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("close_midi_inputs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OS) alert(text String, title String) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("alert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 233059325)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OS) crash(message String) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("crash")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OS) set_low_processor_usage_mode(enable bool) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("set_low_processor_usage_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OS) is_in_low_processor_usage_mode() bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_low_processor_usage_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) set_low_processor_usage_mode_sleep_usec(usec i32) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("set_low_processor_usage_mode_sleep_usec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OS) get_low_processor_usage_mode_sleep_usec() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_low_processor_usage_mode_sleep_usec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) set_delta_smoothing(delta_smoothing_enabled bool) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("set_delta_smoothing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OS) is_delta_smoothing_enabled() bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("is_delta_smoothing_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_processor_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_processor_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_processor_name() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_processor_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_system_fonts() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_system_fonts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_system_font_path(font_name String, weight i32, stretch i32, italic bool) String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_system_font_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2262142305)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&font_name)}
    args[1] = unsafe{voidptr(&weight)}
    args[2] = unsafe{voidptr(&stretch)}
    args[3] = unsafe{voidptr(&italic)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_system_font_path_for_text(font_name String, text String, locale String, script String, weight i32, stretch i32, italic bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_system_font_path_for_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3824042574)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&font_name)}
    args[1] = unsafe{voidptr(&text)}
    args[2] = unsafe{voidptr(&locale)}
    args[3] = unsafe{voidptr(&script)}
    args[4] = unsafe{voidptr(&weight)}
    args[5] = unsafe{voidptr(&stretch)}
    args[6] = unsafe{voidptr(&italic)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_executable_path() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_executable_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) read_string_from_stdin() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("read_string_from_stdin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) execute(path String, arguments PackedStringArray, output Array, read_stderr bool, open_console bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("execute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2881709059)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&arguments)}
    args[2] = unsafe{voidptr(&output)}
    args[3] = unsafe{voidptr(&read_stderr)}
    args[4] = unsafe{voidptr(&open_console)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) create_process(path String, arguments PackedStringArray, open_console bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("create_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2903767230)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&arguments)}
    args[2] = unsafe{voidptr(&open_console)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) create_instance(arguments PackedStringArray) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("create_instance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1080601263)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&arguments)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) kill(pid i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("kill")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) shell_open(uri String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("shell_open")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uri)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) shell_show_in_file_manager(file_or_dir_path String, open_folder bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("shell_show_in_file_manager")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&file_or_dir_path)}
    args[1] = unsafe{voidptr(&open_folder)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) is_process_running(pid i32) bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("is_process_running")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_process_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_process_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) has_environment(variable String) bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("has_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&variable)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_environment(variable String) String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&variable)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) set_environment(variable String, value String) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3605043004)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OS) unset_environment(variable String) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("unset_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3089850668)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OS) get_name() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_distribution_name() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_distribution_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_version() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_version")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) get_cmdline_args() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_cmdline_args")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) get_cmdline_user_args() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_cmdline_user_args")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_video_adapter_driver_info() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_video_adapter_driver_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) set_restart_on_exit(restart bool, arguments PackedStringArray) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("set_restart_on_exit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 611198603)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OS) is_restart_on_exit_set() bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("is_restart_on_exit_set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_restart_on_exit_arguments() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_restart_on_exit_arguments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) delay_usec(usec i32) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("delay_usec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 998575451)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OS) delay_msec(msec i32) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("delay_msec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 998575451)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OS) get_locale() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_locale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_locale_language() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_locale_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_model_name() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_model_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) is_userfs_persistent() bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("is_userfs_persistent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) is_stdout_verbose() bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("is_stdout_verbose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) is_debug_build() bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("is_debug_build")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_static_memory_usage() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_static_memory_usage")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_static_memory_peak_usage() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_static_memory_peak_usage")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_memory_info() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_memory_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) move_to_trash(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("move_to_trash")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2113323047)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_user_data_dir() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_user_data_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_system_dir(dir OSSystemDir, shared_storage bool) String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_system_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965199849)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&dir)}
    args[1] = unsafe{voidptr(&shared_storage)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_config_dir() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_config_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_data_dir() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_data_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_cache_dir() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_cache_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_unique_id() String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_unique_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_keycode_string(code Key) String {
    mut object_out := String{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_keycode_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2261993717)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) is_keycode_unicode(code i32) bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("is_keycode_unicode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) find_keycode_from_string(gdstring String) Key {
    mut object_out := Key.key_none
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("find_keycode_from_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1084858572)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) set_use_file_access_save_and_swap(enabled bool) {
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_file_access_save_and_swap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r OS) set_thread_name(name String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("set_thread_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_thread_caller_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_thread_caller_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_main_thread_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_main_thread_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) has_feature(tag_name String) bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("has_feature")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tag_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) request_permission(name String) bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("request_permission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OS) request_permissions() bool {
    mut object_out := false
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("request_permissions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OS) get_granted_permissions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OS")
    defer { classname.deinit() }
    fnname := StringName.new("get_granted_permissions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
