pub type SpinBox = voidptr

pub fn (mut r SpinBox) set_horizontal_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpinBox) get_horizontal_alignment() HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_horizontal_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SpinBox) set_suffix(suffix String) {
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_suffix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpinBox) get_suffix() String {
    mut object_out := String{}
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_suffix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SpinBox) set_prefix(prefix String) {
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_prefix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpinBox) get_prefix() String {
    mut object_out := String{}
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_prefix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SpinBox) set_editable(enabled bool) {
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_editable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SpinBox) set_custom_arrow_step(arrow_step f32) {
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_arrow_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpinBox) get_custom_arrow_step() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_arrow_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SpinBox) is_editable() bool {
    mut object_out := false
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("is_editable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SpinBox) set_update_on_text_changed(enabled bool) {
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_update_on_text_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpinBox) get_update_on_text_changed() bool {
    mut object_out := false
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_update_on_text_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SpinBox) set_select_all_on_focus(enabled bool) {
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_select_all_on_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SpinBox) is_select_all_on_focus() bool {
    mut object_out := false
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("is_select_all_on_focus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SpinBox) apply() {
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("apply")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SpinBox) get_line_edit() LineEdit {
    mut object_out := LineEdit(unsafe{nil})
    classname := StringName.new("SpinBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_edit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4071694264)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
