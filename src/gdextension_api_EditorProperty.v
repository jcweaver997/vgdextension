module vgdextension

pub struct EditorProperty {
    Container
}

pub interface IEditorPropertyUpdateProperty {
    mut:
    virt_update_property()
}

pub fn (mut r EditorProperty) uupdate_property() {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("_update_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IEditorPropertySetReadOnly {
    mut:
    virt_set_read_only(read_only bool)
}

pub fn (mut r EditorProperty) uset_read_only(read_only bool) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("_set_read_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&read_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorProperty) set_label(text String) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("set_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorProperty) get_label() String {
    mut object_out := String{}
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("get_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorProperty) set_read_only(read_only bool) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("set_read_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&read_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorProperty) is_read_only() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("is_read_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorProperty) set_checkable(checkable bool) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("set_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&checkable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorProperty) is_checkable() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("is_checkable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorProperty) set_checked(checked bool) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("set_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&checked)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorProperty) is_checked() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("is_checked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorProperty) set_draw_warning(draw_warning bool) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_warning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&draw_warning)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorProperty) is_draw_warning() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("is_draw_warning")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorProperty) set_keying(keying bool) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("set_keying")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keying)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorProperty) is_keying() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("is_keying")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorProperty) set_deletable(deletable bool) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("set_deletable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&deletable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorProperty) is_deletable() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("is_deletable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorProperty) get_edited_property() StringName {
    mut object_out := StringName{}
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("get_edited_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorProperty) get_edited_object() Object {
    mut object_out := Object{}
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("get_edited_object")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2050059866)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorProperty) update_property() {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("update_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorProperty) add_focusable(control Control) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("add_focusable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = control.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorProperty) set_bottom_editor(editor Control) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("set_bottom_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = editor.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorProperty) emit_changed(property StringName, value Variant, field StringName, changing bool) {
    classname := StringName.new("EditorProperty")
    defer { classname.deinit() }
    fnname := StringName.new("emit_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3069422438)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&property)}
    args[1] = unsafe{voidptr(&value)}
    args[2] = unsafe{voidptr(&field)}
    args[3] = unsafe{voidptr(&changing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
