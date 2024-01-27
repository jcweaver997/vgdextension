pub enum ScriptLanguageExtensionLookupResultType {
    lookup_result_script_location = 0
    lookup_result_class = 1
    lookup_result_class_constant = 2
    lookup_result_class_property = 3
    lookup_result_class_method = 4
    lookup_result_class_signal = 5
    lookup_result_class_enum = 6
    lookup_result_class_tbd_globalscope = 7
    lookup_result_class_annotation = 8
    lookup_result_max = 9
}

pub enum ScriptLanguageExtensionCodeCompletionLocation {
    location_local = 0
    location_parent_mask = 256
    location_other_user_code = 512
    location_other = 1024
}

pub enum ScriptLanguageExtensionCodeCompletionKind {
    code_completion_kind_class = 0
    code_completion_kind_function = 1
    code_completion_kind_signal = 2
    code_completion_kind_variable = 3
    code_completion_kind_member = 4
    code_completion_kind_enum = 5
    code_completion_kind_constant = 6
    code_completion_kind_node_path = 7
    code_completion_kind_file_path = 8
    code_completion_kind_plain_text = 9
    code_completion_kind_max = 10
}

pub type ScriptLanguageExtension = voidptr

pub fn (r &ScriptLanguageExtension) uget_name() String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) uinit() {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_init")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScriptLanguageExtension) uget_type() String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uget_extension() String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) ufinish() {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScriptLanguageExtension) uget_reserved_words() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_reserved_words")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uis_control_flow_keyword(keyword String) bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_control_flow_keyword")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keyword)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uget_comment_delimiters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_comment_delimiters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uget_string_delimiters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_string_delimiters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) umake_template(template String, class_name String, base_class_name String) Script {
    mut object_out := Script(unsafe{nil})
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_make_template")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&template)}
    args[1] = unsafe{voidptr(&class_name)}
    args[2] = unsafe{voidptr(&base_class_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uget_built_in_templates(object StringName) Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_built_in_templates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) uis_using_templates() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_using_templates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uvalidate(script String, path String, validate_functions bool, validate_errors bool, validate_warnings bool, validate_safe_lines bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_validate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    args[1] = unsafe{voidptr(&path)}
    args[2] = unsafe{voidptr(&validate_functions)}
    args[3] = unsafe{voidptr(&validate_errors)}
    args[4] = unsafe{voidptr(&validate_warnings)}
    args[5] = unsafe{voidptr(&validate_safe_lines)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uvalidate_path(path String) String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_validate_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) ucreate_script() Object {
    mut object_out := unsafe{nil}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_create_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uhas_named_classes() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_has_named_classes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) usupports_builtin_mode() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_supports_builtin_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) usupports_documentation() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_supports_documentation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) ucan_inherit_from_file() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_can_inherit_from_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) ufind_function(class_name String, function_name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_find_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class_name)}
    args[1] = unsafe{voidptr(&function_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) umake_function(class_name String, function_name String, function_args PackedStringArray) String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_make_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&class_name)}
    args[1] = unsafe{voidptr(&function_name)}
    args[2] = unsafe{voidptr(&function_args)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) uopen_in_external_editor(script Script, line i32, column i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_open_in_external_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    args[1] = unsafe{voidptr(&line)}
    args[2] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) uoverrides_external_editor() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_overrides_external_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) ucomplete_code(code String, path String, owner Object) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_complete_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    args[1] = unsafe{voidptr(&path)}
    args[2] = unsafe{voidptr(&owner)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) ulookup_code(code String, symbol String, path String, owner Object) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_lookup_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    args[1] = unsafe{voidptr(&symbol)}
    args[2] = unsafe{voidptr(&path)}
    args[3] = unsafe{voidptr(&owner)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uauto_indent_code(code String, from_line i32, to_line i32) String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_auto_indent_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    args[1] = unsafe{voidptr(&from_line)}
    args[2] = unsafe{voidptr(&to_line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) uadd_global_constant(name StringName, value Variant) {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_global_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptLanguageExtension) uadd_named_global_constant(name StringName, value Variant) {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_add_named_global_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptLanguageExtension) uremove_named_global_constant(name StringName) {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_remove_named_global_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptLanguageExtension) uthread_enter() {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_thread_enter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptLanguageExtension) uthread_exit() {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_thread_exit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScriptLanguageExtension) udebug_get_error() String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_stack_level_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_line(level i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_stack_level_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_function(level i32) String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_stack_level_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) udebug_get_stack_level_locals(level i32, max_subitems i32, max_depth i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_stack_level_locals")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    args[1] = unsafe{voidptr(&max_subitems)}
    args[2] = unsafe{voidptr(&max_depth)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) udebug_get_stack_level_members(level i32, max_subitems i32, max_depth i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_stack_level_members")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    args[1] = unsafe{voidptr(&max_subitems)}
    args[2] = unsafe{voidptr(&max_depth)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) udebug_get_stack_level_instance(level i32) voidptr {
    mut object_out := voidptr(unsafe{nil})
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_stack_level_instance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) udebug_get_globals(max_subitems i32, max_depth i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_globals")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_subitems)}
    args[1] = unsafe{voidptr(&max_depth)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) udebug_parse_stack_level_expression(level i32, expression String, max_subitems i32, max_depth i32) String {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_parse_stack_level_expression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    args[1] = unsafe{voidptr(&expression)}
    args[2] = unsafe{voidptr(&max_subitems)}
    args[3] = unsafe{voidptr(&max_depth)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) udebug_get_current_stack_info() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_debug_get_current_stack_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) ureload_all_scripts() {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_reload_all_scripts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptLanguageExtension) ureload_tool_script(script Script, soft_reload bool) {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_reload_tool_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScriptLanguageExtension) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_recognized_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uget_public_functions() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_public_functions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uget_public_constants() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_public_constants")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uget_public_annotations() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_public_annotations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) uprofiling_start() {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_profiling_start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptLanguageExtension) uprofiling_stop() {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_profiling_stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptLanguageExtension) uprofiling_get_accumulated_data(info_array &ScriptLanguageExtensionProfilingInfo, info_max i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_profiling_get_accumulated_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&info_array)}
    args[1] = unsafe{voidptr(&info_max)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) uprofiling_get_frame_data(info_array &ScriptLanguageExtensionProfilingInfo, info_max i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_profiling_get_frame_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&info_array)}
    args[1] = unsafe{voidptr(&info_max)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptLanguageExtension) uframe() {
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScriptLanguageExtension) uhandles_global_class_type(type_name String) bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_handles_global_class_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptLanguageExtension) uget_global_class_name(path String) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_global_class_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
