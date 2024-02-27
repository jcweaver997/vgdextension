module vgdextension

@[noinit]
pub struct Button {
    BaseButton
}

pub fn (mut r Button) set_text(text string) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_text() string {
    mut object_out := String{}
    classname := StringName.new("Button")
    fnname := StringName.new("get_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Button) set_text_overrun_behavior(overrun_behavior TextServerOverrunBehavior) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_text_overrun_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1008890932)
    mut args := unsafe { [1]voidptr{} }
    i64_overrun_behavior := i64(overrun_behavior)
    args[0] = unsafe{voidptr(&i64_overrun_behavior)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_text_overrun_behavior() TextServerOverrunBehavior {
    mut object_out := i64(TextServerOverrunBehavior.overrun_no_trimming)
    classname := StringName.new("Button")
    fnname := StringName.new("get_text_overrun_behavior")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3779142101)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextServerOverrunBehavior(object_out)}
}
pub fn (mut r Button) set_text_direction(direction ControlTextDirection) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 119160795)
    mut args := unsafe { [1]voidptr{} }
    i64_direction := i64(direction)
    args[0] = unsafe{voidptr(&i64_direction)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_text_direction() ControlTextDirection {
    mut object_out := i64(ControlTextDirection.text_direction_inherited)
    classname := StringName.new("Button")
    fnname := StringName.new("get_text_direction")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797257663)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ControlTextDirection(object_out)}
}
pub fn (mut r Button) set_language(language string) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(language)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_language() string {
    mut object_out := String{}
    classname := StringName.new("Button")
    fnname := StringName.new("get_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Button) set_button_icon(texture Texture2D) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_button_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_button_icon() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Button")
    fnname := StringName.new("get_button_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Button) set_flat(enabled bool) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_flat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) is_flat() bool {
    mut object_out := false
    classname := StringName.new("Button")
    fnname := StringName.new("is_flat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Button) set_clip_text(enabled bool) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_clip_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_clip_text() bool {
    mut object_out := false
    classname := StringName.new("Button")
    fnname := StringName.new("get_clip_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Button) set_text_alignment(alignment HorizontalAlignment) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_text_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_text_alignment() HorizontalAlignment {
    mut object_out := i64(HorizontalAlignment.horizontal_alignment_left)
    classname := StringName.new("Button")
    fnname := StringName.new("get_text_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HorizontalAlignment(object_out)}
}
pub fn (mut r Button) set_icon_alignment(icon_alignment HorizontalAlignment) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_icon_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2312603777)
    mut args := unsafe { [1]voidptr{} }
    i64_icon_alignment := i64(icon_alignment)
    args[0] = unsafe{voidptr(&i64_icon_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_icon_alignment() HorizontalAlignment {
    mut object_out := i64(HorizontalAlignment.horizontal_alignment_left)
    classname := StringName.new("Button")
    fnname := StringName.new("get_icon_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 341400642)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{HorizontalAlignment(object_out)}
}
pub fn (mut r Button) set_vertical_icon_alignment(vertical_icon_alignment VerticalAlignment) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_vertical_icon_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1796458609)
    mut args := unsafe { [1]voidptr{} }
    i64_vertical_icon_alignment := i64(vertical_icon_alignment)
    args[0] = unsafe{voidptr(&i64_vertical_icon_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) get_vertical_icon_alignment() VerticalAlignment {
    mut object_out := i64(VerticalAlignment.vertical_alignment_top)
    classname := StringName.new("Button")
    fnname := StringName.new("get_vertical_icon_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3274884059)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VerticalAlignment(object_out)}
}
pub fn (mut r Button) set_expand_icon(enabled bool) {
    classname := StringName.new("Button")
    fnname := StringName.new("set_expand_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Button) is_expand_icon() bool {
    mut object_out := false
    classname := StringName.new("Button")
    fnname := StringName.new("is_expand_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
