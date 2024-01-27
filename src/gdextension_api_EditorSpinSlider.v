pub type EditorSpinSlider = voidptr

pub fn (mut r EditorSpinSlider) set_label(label String) {
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("set_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSpinSlider) get_label() String {
    mut object_out := String{}
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("get_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSpinSlider) set_suffix(suffix String) {
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("set_suffix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSpinSlider) get_suffix() String {
    mut object_out := String{}
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("get_suffix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSpinSlider) set_read_only(read_only bool) {
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("set_read_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSpinSlider) is_read_only() bool {
    mut object_out := false
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("is_read_only")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSpinSlider) set_flat(flat bool) {
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("set_flat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSpinSlider) is_flat() bool {
    mut object_out := false
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("is_flat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSpinSlider) set_hide_slider(hide_slider bool) {
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("set_hide_slider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorSpinSlider) is_hiding_slider() bool {
    mut object_out := false
    classname := StringName.new("EditorSpinSlider")
    defer { classname.deinit() }
    fnname := StringName.new("is_hiding_slider")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
