pub type Button = voidptr

pub fn (mut r Button) set_text(text String) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_text() String {
    mut object_out := String{}
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_overrun_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_text_overrun_behavior() TextServerOverrunBehavior {
    mut object_out := TextServerOverrunBehavior.overrun_no_trimming
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_overrun_behavior")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_text_direction() ControlTextDirection {
    mut object_out := ControlTextDirection.text_direction_inherited
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_language(language String) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_language() String {
    mut object_out := String{}
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_button_icon(texture Texture2D) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_button_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_button_icon() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_button_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_flat(enabled bool) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_flat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) is_flat() bool {
    mut object_out := false
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("is_flat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_clip_text(enabled bool) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_clip_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_clip_text() bool {
    mut object_out := false
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_clip_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_text_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_text_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_text_alignment() HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_icon_alignment(icon_alignment HorizontalAlignment) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_icon_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_icon_alignment() HorizontalAlignment {
    mut object_out := HorizontalAlignment.horizontal_alignment_left
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_icon_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_vertical_icon_alignment(vertical_icon_alignment VerticalAlignment) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical_icon_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) get_vertical_icon_alignment() VerticalAlignment {
    mut object_out := VerticalAlignment.vertical_alignment_top
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertical_icon_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Button) set_expand_icon(enabled bool) {
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("set_expand_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Button) is_expand_icon() bool {
    mut object_out := false
    classname := StringName.new("Button")
    defer { classname.deinit() }
    fnname := StringName.new("is_expand_icon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
