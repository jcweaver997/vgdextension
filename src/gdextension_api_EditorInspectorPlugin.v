pub type EditorInspectorPlugin = voidptr

pub fn (r &EditorInspectorPlugin) ucan_handle(object Object) bool {
    mut object_out := false
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_can_handle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInspectorPlugin) uparse_begin(object Object) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) uparse_category(object Object, category String) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_category")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) uparse_group(object Object, group String) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) uparse_property(object Object, type_name VariantType, name String, hint_type PropertyHint, hint_string String, usage_flags PropertyUsageFlags, wide bool) bool {
    mut object_out := false
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    args[1] = unsafe{voidptr(&type_name)}
    args[2] = unsafe{voidptr(&name)}
    args[3] = unsafe{voidptr(&hint_type)}
    args[4] = unsafe{voidptr(&hint_string)}
    args[5] = unsafe{voidptr(&usage_flags)}
    args[6] = unsafe{voidptr(&wide)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorInspectorPlugin) uparse_end(object Object) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) add_custom_control(control Control) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_custom_control")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) add_property_editor(property String, editor Control, add_to_end bool) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_property_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3406284123)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorInspectorPlugin) add_property_editor_for_multiple_properties(label String, properties PackedStringArray, editor Control) {
    classname := StringName.new("EditorInspectorPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("add_property_editor_for_multiple_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 788598683)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
