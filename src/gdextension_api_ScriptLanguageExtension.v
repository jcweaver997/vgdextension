module vgdextension

pub enum ScriptLanguageExtensionLookupResultType as i64 {
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

pub enum ScriptLanguageExtensionCodeCompletionLocation as i64 {
    location_local = 0
    location_parent_mask = 256
    location_other_user_code = 512
    location_other = 1024
}

pub enum ScriptLanguageExtensionCodeCompletionKind as i64 {
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

@[noinit]
pub struct ScriptLanguageExtension {
    ScriptLanguage
}

pub interface IScriptLanguageExtensionGetName {
    mut:
    virt_get_name() String
}

pub fn (r &ScriptLanguageExtension) uget_name() string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionInit {
    mut:
    virt_init()
}

pub fn (r &ScriptLanguageExtension) uinit() {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_init")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionGetType {
    mut:
    virt_get_type() String
}

pub fn (r &ScriptLanguageExtension) uget_type() string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionGetExtension {
    mut:
    virt_get_extension() String
}

pub fn (r &ScriptLanguageExtension) uget_extension() string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionFinish {
    mut:
    virt_finish()
}

pub fn (r &ScriptLanguageExtension) ufinish() {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_finish")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionGetReservedWords {
    mut:
    virt_get_reserved_words() PackedStringArray
}

pub fn (r &ScriptLanguageExtension) uget_reserved_words() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_reserved_words")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionIsControlFlowKeyword {
    mut:
    virt_is_control_flow_keyword(keyword String) bool
}

pub fn (r &ScriptLanguageExtension) uis_control_flow_keyword(keyword string) bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_is_control_flow_keyword")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(keyword)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionGetCommentDelimiters {
    mut:
    virt_get_comment_delimiters() PackedStringArray
}

pub fn (r &ScriptLanguageExtension) uget_comment_delimiters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_comment_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionGetDocCommentDelimiters {
    mut:
    virt_get_doc_comment_delimiters() PackedStringArray
}

pub fn (r &ScriptLanguageExtension) uget_doc_comment_delimiters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_doc_comment_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionGetStringDelimiters {
    mut:
    virt_get_string_delimiters() PackedStringArray
}

pub fn (r &ScriptLanguageExtension) uget_string_delimiters() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_string_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionMakeTemplate {
    mut:
    virt_make_template(template String, class_name String, base_class_name String) Script
}

pub fn (r &ScriptLanguageExtension) umake_template(template string, class_name string, base_class_name string) Script {
    mut object_out := Script{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_make_template")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(template)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(class_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(base_class_name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionGetBuiltInTemplates {
    mut:
    virt_get_built_in_templates(object StringName) Array
}

pub fn (r &ScriptLanguageExtension) uget_built_in_templates(object string) Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_built_in_templates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(object)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionIsUsingTemplates {
    mut:
    virt_is_using_templates() bool
}

pub fn (r &ScriptLanguageExtension) uis_using_templates() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_is_using_templates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionValidate {
    mut:
    virt_validate(script String, path String, validate_functions bool, validate_errors bool, validate_warnings bool, validate_safe_lines bool) Dictionary
}

pub fn (r &ScriptLanguageExtension) uvalidate(script string, path string, validate_functions bool, validate_errors bool, validate_warnings bool, validate_safe_lines bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_validate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [6]voidptr{} }
    arg_sn0 := String.new(script)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&validate_functions)}
    args[3] = unsafe{voidptr(&validate_errors)}
    args[4] = unsafe{voidptr(&validate_warnings)}
    args[5] = unsafe{voidptr(&validate_safe_lines)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionValidatePath {
    mut:
    virt_validate_path(path String) String
}

pub fn (r &ScriptLanguageExtension) uvalidate_path(path string) string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_validate_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionCreateScript {
    mut:
    virt_create_script() Object
}

pub fn (r &ScriptLanguageExtension) ucreate_script() Object {
    mut object_out := Object{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_create_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionHasNamedClasses {
    mut:
    virt_has_named_classes() bool
}

pub fn (r &ScriptLanguageExtension) uhas_named_classes() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_has_named_classes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionSupportsBuiltinMode {
    mut:
    virt_supports_builtin_mode() bool
}

pub fn (r &ScriptLanguageExtension) usupports_builtin_mode() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_supports_builtin_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionSupportsDocumentation {
    mut:
    virt_supports_documentation() bool
}

pub fn (r &ScriptLanguageExtension) usupports_documentation() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_supports_documentation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionCanInheritFromFile {
    mut:
    virt_can_inherit_from_file() bool
}

pub fn (r &ScriptLanguageExtension) ucan_inherit_from_file() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_can_inherit_from_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionFindFunction {
    mut:
    virt_find_function(class_name String, function_name String) i32
}

pub fn (r &ScriptLanguageExtension) ufind_function(class_name string, function_name string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_find_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(class_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(function_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionMakeFunction {
    mut:
    virt_make_function(class_name String, function_name String, function_args PackedStringArray) String
}

pub fn (r &ScriptLanguageExtension) umake_function(class_name string, function_name string, function_args PackedStringArray) string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_make_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(class_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(function_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&function_args)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionOpenInExternalEditor {
    mut:
    virt_open_in_external_editor(script Script, line i32, column i32) GDError
}

pub fn (r &ScriptLanguageExtension) uopen_in_external_editor(script Script, line i32, column i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_open_in_external_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = script.ptr
    args[1] = unsafe{voidptr(&line)}
    args[2] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IScriptLanguageExtensionOverridesExternalEditor {
    mut:
    virt_overrides_external_editor() bool
}

pub fn (r &ScriptLanguageExtension) uoverrides_external_editor() bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_overrides_external_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionCompleteCode {
    mut:
    virt_complete_code(code String, path String, owner Object) Dictionary
}

pub fn (r &ScriptLanguageExtension) ucomplete_code(code string, path string, owner Object) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_complete_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(code)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = owner.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionLookupCode {
    mut:
    virt_lookup_code(code String, symbol String, path String, owner Object) Dictionary
}

pub fn (r &ScriptLanguageExtension) ulookup_code(code string, symbol string, path string, owner Object) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_lookup_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(code)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(symbol)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(path)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = owner.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionAutoIndentCode {
    mut:
    virt_auto_indent_code(code String, from_line i32, to_line i32) String
}

pub fn (r &ScriptLanguageExtension) uauto_indent_code(code string, from_line i32, to_line i32) string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_auto_indent_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(code)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&from_line)}
    args[2] = unsafe{voidptr(&to_line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionAddGlobalConstant {
    mut:
    virt_add_global_constant(name StringName, value Variant)
}

pub fn (r &ScriptLanguageExtension) uadd_global_constant(name string, value Variant) {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_add_global_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionAddNamedGlobalConstant {
    mut:
    virt_add_named_global_constant(name StringName, value Variant)
}

pub fn (r &ScriptLanguageExtension) uadd_named_global_constant(name string, value Variant) {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_add_named_global_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionRemoveNamedGlobalConstant {
    mut:
    virt_remove_named_global_constant(name StringName)
}

pub fn (r &ScriptLanguageExtension) uremove_named_global_constant(name string) {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_remove_named_global_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionThreadEnter {
    mut:
    virt_thread_enter()
}

pub fn (r &ScriptLanguageExtension) uthread_enter() {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_thread_enter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionThreadExit {
    mut:
    virt_thread_exit()
}

pub fn (r &ScriptLanguageExtension) uthread_exit() {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_thread_exit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionDebugGetError {
    mut:
    virt_debug_get_error() String
}

pub fn (r &ScriptLanguageExtension) udebug_get_error() string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionDebugGetStackLevelCount {
    mut:
    virt_debug_get_stack_level_count() i32
}

pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_stack_level_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionDebugGetStackLevelLine {
    mut:
    virt_debug_get_stack_level_line(level i32) i32
}

pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_line(level i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_stack_level_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionDebugGetStackLevelFunction {
    mut:
    virt_debug_get_stack_level_function(level i32) String
}

pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_function(level i32) string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_stack_level_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionDebugGetStackLevelLocals {
    mut:
    virt_debug_get_stack_level_locals(level i32, max_subitems i32, max_depth i32) Dictionary
}

pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_locals(level i32, max_subitems i32, max_depth i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_stack_level_locals")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    args[1] = unsafe{voidptr(&max_subitems)}
    args[2] = unsafe{voidptr(&max_depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionDebugGetStackLevelMembers {
    mut:
    virt_debug_get_stack_level_members(level i32, max_subitems i32, max_depth i32) Dictionary
}

pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_members(level i32, max_subitems i32, max_depth i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_stack_level_members")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    args[1] = unsafe{voidptr(&max_subitems)}
    args[2] = unsafe{voidptr(&max_depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionDebugGetStackLevelInstance {
    mut:
    virt_debug_get_stack_level_instance(level i32) voidptr
}

pub fn (r &ScriptLanguageExtension) udebug_get_stack_level_instance(level i32) voidptr {
    mut object_out := unsafe{nil}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_stack_level_instance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionDebugGetGlobals {
    mut:
    virt_debug_get_globals(max_subitems i32, max_depth i32) Dictionary
}

pub fn (r &ScriptLanguageExtension) udebug_get_globals(max_subitems i32, max_depth i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_globals")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&max_subitems)}
    args[1] = unsafe{voidptr(&max_depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionDebugParseStackLevelExpression {
    mut:
    virt_debug_parse_stack_level_expression(level i32, expression String, max_subitems i32, max_depth i32) String
}

pub fn (r &ScriptLanguageExtension) udebug_parse_stack_level_expression(level i32, expression string, max_subitems i32, max_depth i32) string {
    mut object_out := String{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_parse_stack_level_expression")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&level)}
    arg_sn1 := String.new(expression)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&max_subitems)}
    args[3] = unsafe{voidptr(&max_depth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IScriptLanguageExtensionDebugGetCurrentStackInfo {
    mut:
    virt_debug_get_current_stack_info() Array
}

pub fn (r &ScriptLanguageExtension) udebug_get_current_stack_info() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_debug_get_current_stack_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionReloadAllScripts {
    mut:
    virt_reload_all_scripts()
}

pub fn (r &ScriptLanguageExtension) ureload_all_scripts() {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_reload_all_scripts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionReloadToolScript {
    mut:
    virt_reload_tool_script(script Script, soft_reload bool)
}

pub fn (r &ScriptLanguageExtension) ureload_tool_script(script Script, soft_reload bool) {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_reload_tool_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = script.ptr
    args[1] = unsafe{voidptr(&soft_reload)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionGetRecognizedExtensions {
    mut:
    virt_get_recognized_extensions() PackedStringArray
}

pub fn (r &ScriptLanguageExtension) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_recognized_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionGetPublicFunctions {
    mut:
    virt_get_public_functions() Array
}

pub fn (r &ScriptLanguageExtension) uget_public_functions() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_public_functions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionGetPublicConstants {
    mut:
    virt_get_public_constants() Dictionary
}

pub fn (r &ScriptLanguageExtension) uget_public_constants() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_public_constants")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionGetPublicAnnotations {
    mut:
    virt_get_public_annotations() Array
}

pub fn (r &ScriptLanguageExtension) uget_public_annotations() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_public_annotations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionProfilingStart {
    mut:
    virt_profiling_start()
}

pub fn (r &ScriptLanguageExtension) uprofiling_start() {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_profiling_start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionProfilingStop {
    mut:
    virt_profiling_stop()
}

pub fn (r &ScriptLanguageExtension) uprofiling_stop() {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_profiling_stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionProfilingGetAccumulatedData {
    mut:
    virt_profiling_get_accumulated_data(info_array &ScriptLanguageExtensionProfilingInfo, info_max i32) i32
}

pub fn (r &ScriptLanguageExtension) uprofiling_get_accumulated_data(info_array &ScriptLanguageExtensionProfilingInfo, info_max i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_profiling_get_accumulated_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&info_array)}
    args[1] = unsafe{voidptr(&info_max)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionProfilingGetFrameData {
    mut:
    virt_profiling_get_frame_data(info_array &ScriptLanguageExtensionProfilingInfo, info_max i32) i32
}

pub fn (r &ScriptLanguageExtension) uprofiling_get_frame_data(info_array &ScriptLanguageExtensionProfilingInfo, info_max i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_profiling_get_frame_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&info_array)}
    args[1] = unsafe{voidptr(&info_max)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionFrame {
    mut:
    virt_frame()
}

pub fn (r &ScriptLanguageExtension) uframe() {
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IScriptLanguageExtensionHandlesGlobalClassType {
    mut:
    virt_handles_global_class_type(type_name String) bool
}

pub fn (r &ScriptLanguageExtension) uhandles_global_class_type(type_name string) bool {
    mut object_out := false
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_handles_global_class_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IScriptLanguageExtensionGetGlobalClassName {
    mut:
    virt_get_global_class_name(path String) Dictionary
}

pub fn (r &ScriptLanguageExtension) uget_global_class_name(path string) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptLanguageExtension")
    fnname := StringName.new("_get_global_class_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
