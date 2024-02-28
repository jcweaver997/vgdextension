module vgdextension

@[noinit]
pub struct EditorProperty {
    Container
}

pub interface IEditorPropertyUpdateProperty {
    mut:
    virt_update_property()
}

pub fn (r &EditorProperty) uupdate_property() {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("_update_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorPropertySetReadOnly {
    mut:
    virt_set_read_only(read_only bool)
}

pub fn (r &EditorProperty) uset_read_only(read_only bool) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("_set_read_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&read_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) set_label(text string) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("set_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) get_label() string {
    mut object_out := String{}
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("get_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorProperty) set_read_only(read_only bool) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("set_read_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&read_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) is_read_only() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("is_read_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorProperty) set_checkable(checkable bool) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("set_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&checkable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) is_checkable() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("is_checkable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorProperty) set_checked(checked bool) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("set_checked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&checked)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) is_checked() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("is_checked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorProperty) set_draw_warning(draw_warning bool) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("set_draw_warning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&draw_warning)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) is_draw_warning() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("is_draw_warning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorProperty) set_keying(keying bool) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("set_keying")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keying)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) is_keying() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("is_keying")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorProperty) set_deletable(deletable bool) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("set_deletable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&deletable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) is_deletable() bool {
    mut object_out := false
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("is_deletable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorProperty) get_edited_property() string {
    mut object_out := StringName{}
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("get_edited_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorProperty) get_edited_object() Object {
    mut object_out := Object{}
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("get_edited_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2050059866)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorProperty) update_property() {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("update_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) add_focusable(control Control) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("add_focusable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) set_bottom_editor(editor Control) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("set_bottom_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1496901182)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&editor.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorProperty) emit_changed(property string, value Variant, field string, changing bool) {
    classname := StringName.new("EditorProperty")
    fnname := StringName.new("emit_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3069422438)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    arg_sn2 := StringName.new(field)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&changing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
