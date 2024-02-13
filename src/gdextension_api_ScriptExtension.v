module vgdextension

@[noinit]
pub struct ScriptExtension {
    Script
}

pub interface IScriptExtensionEditorCanReloadFromFile {
    mut:
    virt_editor_can_reload_from_file() bool
}

pub fn (mut r ScriptExtension) ueditor_can_reload_from_file() bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_editor_can_reload_from_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionPlaceholderErased {
    mut:
    virt_placeholder_erased(placeholder voidptr)
}

pub fn (mut r ScriptExtension) uplaceholder_erased(placeholder voidptr) {
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_placeholder_erased")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&placeholder)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IScriptExtensionCanInstantiate {
    mut:
    virt_can_instantiate() bool
}

pub fn (r &ScriptExtension) ucan_instantiate() bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_can_instantiate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetBaseScript {
    mut:
    virt_get_base_script() Script
}

pub fn (r &ScriptExtension) uget_base_script() Script {
    mut object_out := Script{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_base_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetGlobalName {
    mut:
    virt_get_global_name() StringName
}

pub fn (r &ScriptExtension) uget_global_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_global_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionInheritsScript {
    mut:
    virt_inherits_script(script Script) bool
}

pub fn (r &ScriptExtension) uinherits_script(script Script) bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_inherits_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = script.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetInstanceBaseType {
    mut:
    virt_get_instance_base_type() StringName
}

pub fn (r &ScriptExtension) uget_instance_base_type() StringName {
    mut object_out := StringName{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_instance_base_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionInstanceCreate {
    mut:
    virt_instance_create(for_object Object) voidptr
}

pub fn (r &ScriptExtension) uinstance_create(for_object Object) voidptr {
    mut object_out := unsafe{nil}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_instance_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = for_object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionPlaceholderInstanceCreate {
    mut:
    virt_placeholder_instance_create(for_object Object) voidptr
}

pub fn (r &ScriptExtension) uplaceholder_instance_create(for_object Object) voidptr {
    mut object_out := unsafe{nil}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_placeholder_instance_create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = for_object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionInstanceHas {
    mut:
    virt_instance_has(object Object) bool
}

pub fn (r &ScriptExtension) uinstance_has(object Object) bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_instance_has")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionHasSourceCode {
    mut:
    virt_has_source_code() bool
}

pub fn (r &ScriptExtension) uhas_source_code() bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_has_source_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetSourceCode {
    mut:
    virt_get_source_code() String
}

pub fn (r &ScriptExtension) uget_source_code() String {
    mut object_out := String{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_source_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionSetSourceCode {
    mut:
    virt_set_source_code(code String)
}

pub fn (mut r ScriptExtension) uset_source_code(code String) {
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_set_source_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IScriptExtensionReload {
    mut:
    virt_reload(keep_state bool) GDError
}

pub fn (mut r ScriptExtension) ureload(keep_state bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_reload")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keep_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetDocumentation {
    mut:
    virt_get_documentation() Array
}

pub fn (r &ScriptExtension) uget_documentation() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_documentation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionHasMethod {
    mut:
    virt_has_method(method StringName) bool
}

pub fn (r &ScriptExtension) uhas_method(method StringName) bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_has_method")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&method)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetMethodInfo {
    mut:
    virt_get_method_info(method StringName) Dictionary
}

pub fn (r &ScriptExtension) uget_method_info(method StringName) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_method_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&method)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionIsTool {
    mut:
    virt_is_tool() bool
}

pub fn (r &ScriptExtension) uis_tool() bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_tool")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionIsValid {
    mut:
    virt_is_valid() bool
}

pub fn (r &ScriptExtension) uis_valid() bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_valid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetLanguage {
    mut:
    virt_get_language() ScriptLanguage
}

pub fn (r &ScriptExtension) uget_language() ScriptLanguage {
    mut object_out := ScriptLanguage{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionHasScriptSignal {
    mut:
    virt_has_script_signal(signal StringName) bool
}

pub fn (r &ScriptExtension) uhas_script_signal(signal StringName) bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_has_script_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&signal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetScriptSignalList {
    mut:
    virt_get_script_signal_list() Array
}

pub fn (r &ScriptExtension) uget_script_signal_list() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_script_signal_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionHasPropertyDefaultValue {
    mut:
    virt_has_property_default_value(property StringName) bool
}

pub fn (r &ScriptExtension) uhas_property_default_value(property StringName) bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_has_property_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&property)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetPropertyDefaultValue {
    mut:
    virt_get_property_default_value(property StringName) Variant
}

pub fn (r &ScriptExtension) uget_property_default_value(property StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_property_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&property)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionUpdateExports {
    mut:
    virt_update_exports()
}

pub fn (mut r ScriptExtension) uupdate_exports() {
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_update_exports")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IScriptExtensionGetScriptMethodList {
    mut:
    virt_get_script_method_list() Array
}

pub fn (r &ScriptExtension) uget_script_method_list() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_script_method_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetScriptPropertyList {
    mut:
    virt_get_script_property_list() Array
}

pub fn (r &ScriptExtension) uget_script_property_list() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_script_property_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetMemberLine {
    mut:
    virt_get_member_line(member StringName) i32
}

pub fn (r &ScriptExtension) uget_member_line(member StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_member_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetConstants {
    mut:
    virt_get_constants() Dictionary
}

pub fn (r &ScriptExtension) uget_constants() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_constants")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetMembers {
    mut:
    virt_get_members() Array
}

pub fn (r &ScriptExtension) uget_members() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_members")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionIsPlaceholderFallbackEnabled {
    mut:
    virt_is_placeholder_fallback_enabled() bool
}

pub fn (r &ScriptExtension) uis_placeholder_fallback_enabled() bool {
    mut object_out := false
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_is_placeholder_fallback_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IScriptExtensionGetRpcConfig {
    mut:
    virt_get_rpc_config() Variant
}

pub fn (r &ScriptExtension) uget_rpc_config() Variant {
    mut object_out := Variant{}
    classname := StringName.new("ScriptExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_rpc_config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
