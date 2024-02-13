module vgdextension

@[noinit]
pub struct EditorInspectorPlugin {
    RefCounted
}

pub interface IEditorInspectorPluginCanHandle {
    mut:
    virt_can_handle(object Object) bool
}

pub fn (r &EditorInspectorPlugin) ucan_handle(object Object) bool {
    mut object_out := false
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_can_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorInspectorPluginParseBegin {
    mut:
    virt_parse_begin(object Object)
}

pub fn (mut r EditorInspectorPlugin) uparse_begin(object Object) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorInspectorPluginParseCategory {
    mut:
    virt_parse_category(object Object, category String)
}

pub fn (mut r EditorInspectorPlugin) uparse_category(object Object, category String) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_category")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&category)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorInspectorPluginParseGroup {
    mut:
    virt_parse_group(object Object, group String)
}

pub fn (mut r EditorInspectorPlugin) uparse_group(object Object, group String) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&group)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorInspectorPluginParseProperty {
    mut:
    virt_parse_property(object Object, type_name VariantType, name String, hint_type PropertyHint, hint_string String, usage_flags PropertyUsageFlags, wide bool) bool
}

pub fn (mut r EditorInspectorPlugin) uparse_property(object Object, type_name VariantType, name String, hint_type PropertyHint, hint_string String, usage_flags PropertyUsageFlags, wide bool) bool {
    mut object_out := false
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [7]voidptr{} }
    args[0] = object.ptr
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&name)}
    args[3] = unsafe{voidptr(&hint_type)}
    args[4] = unsafe{voidptr(&hint_string)}
    args[5] = unsafe{voidptr(&usage_flags)}
    args[6] = unsafe{voidptr(&wide)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorInspectorPluginParseEnd {
    mut:
    virt_parse_end(object Object)
}

pub fn (mut r EditorInspectorPlugin) uparse_end(object Object) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) add_custom_control(control Control) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_custom_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) add_property_editor(property String, editor Control, add_to_end bool) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_property_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3406284123)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&property)}
    args[1] = editor.ptr
    args[2] = unsafe{voidptr(&add_to_end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) add_property_editor_for_multiple_properties(label String, properties PackedStringArray, editor Control) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_property_editor_for_multiple_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788598683)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&label)}
    args[1] = unsafe{voidptr(&properties)}
    args[2] = editor.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
