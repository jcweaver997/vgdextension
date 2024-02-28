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
    fnname := StringName.new("_can_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorInspectorPluginParseBegin {
    mut:
    virt_parse_begin(object Object)
}

pub fn (r &EditorInspectorPlugin) uparse_begin(object Object) {
    classname := StringName.new("EditorInspectorPlugin")
    fnname := StringName.new("_parse_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorInspectorPluginParseCategory {
    mut:
    virt_parse_category(object Object, category String)
}

pub fn (r &EditorInspectorPlugin) uparse_category(object Object, category string) {
    classname := StringName.new("EditorInspectorPlugin")
    fnname := StringName.new("_parse_category")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    arg_sn1 := String.new(category)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorInspectorPluginParseGroup {
    mut:
    virt_parse_group(object Object, group String)
}

pub fn (r &EditorInspectorPlugin) uparse_group(object Object, group string) {
    classname := StringName.new("EditorInspectorPlugin")
    fnname := StringName.new("_parse_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    arg_sn1 := String.new(group)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorInspectorPluginParseProperty {
    mut:
    virt_parse_property(object Object, type_name VariantType, name String, hint_type PropertyHint, hint_string String, usage_flags PropertyUsageFlags, wide bool) bool
}

pub fn (r &EditorInspectorPlugin) uparse_property(object Object, type_name VariantType, name string, hint_type PropertyHint, hint_string string, usage_flags PropertyUsageFlags, wide bool) bool {
    mut object_out := false
    classname := StringName.new("EditorInspectorPlugin")
    fnname := StringName.new("_parse_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [7]voidptr{} }
    args[0] = object.ptr
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    arg_sn2 := String.new(name)
    args[2] = unsafe{voidptr(&arg_sn2)}
    i64_hint_type := i64(hint_type)
    args[3] = unsafe{voidptr(&i64_hint_type)}
    arg_sn4 := String.new(hint_string)
    args[4] = unsafe{voidptr(&arg_sn4)}
    i64_usage_flags := i64(usage_flags)
    args[5] = unsafe{voidptr(&i64_usage_flags)}
    args[6] = unsafe{voidptr(&wide)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn2.deinit()
    arg_sn4.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorInspectorPluginParseEnd {
    mut:
    virt_parse_end(object Object)
}

pub fn (r &EditorInspectorPlugin) uparse_end(object Object) {
    classname := StringName.new("EditorInspectorPlugin")
    fnname := StringName.new("_parse_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInspectorPlugin) add_custom_control(control Control) {
    classname := StringName.new("EditorInspectorPlugin")
    fnname := StringName.new("add_custom_control")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInspectorPlugin) add_property_editor(property string, editor Control, add_to_end bool) {
    classname := StringName.new("EditorInspectorPlugin")
    fnname := StringName.new("add_property_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3406284123)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = editor.ptr
    args[2] = unsafe{voidptr(&add_to_end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorInspectorPlugin) add_property_editor_for_multiple_properties(label string, properties PackedStringArray, editor Control) {
    classname := StringName.new("EditorInspectorPlugin")
    fnname := StringName.new("add_property_editor_for_multiple_properties")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788598683)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&properties)}
    args[2] = editor.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
