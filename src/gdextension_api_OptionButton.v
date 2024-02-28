module vgdextension

@[noinit]
pub struct OptionButton {
    Button
}

pub fn (r &OptionButton) add_item(label string, id i32) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("add_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2697778442)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) add_icon_item(texture Texture2D, label string, id i32) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("add_icon_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3781678508)
    mut args := unsafe { [3]voidptr{} }
    args[0] = texture.ptr
    arg_sn1 := String.new(label)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) set_item_text(idx i32, text string) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_item_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    arg_sn1 := String.new(text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) set_item_icon(idx i32, texture Texture2D) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_item_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) set_item_disabled(idx i32, disabled bool) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_item_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) set_item_id(idx i32, id i32) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_item_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) set_item_metadata(idx i32, metadata Variant) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_item_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) set_item_tooltip(idx i32, tooltip string) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_item_tooltip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    arg_sn1 := String.new(tooltip)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) get_item_text(idx i32) string {
    mut object_out := String{}
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_item_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OptionButton) get_item_icon(idx i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_item_icon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) get_item_id(idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_item_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) get_item_index(id i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_item_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) get_item_metadata(idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_item_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) get_item_tooltip(idx i32) string {
    mut object_out := String{}
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_item_tooltip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OptionButton) is_item_disabled(idx i32) bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    fnname := StringName.new("is_item_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) is_item_separator(idx i32) bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    fnname := StringName.new("is_item_separator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) add_separator(text string) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("add_separator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3005725572)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) clear() {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) gdselect(idx i32) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("select")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) get_selected() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) get_selected_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_selected_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) get_selected_metadata() Variant {
    mut object_out := Variant{}
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_selected_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) remove_item(idx i32) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("remove_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) get_popup() PopupMenu {
    mut object_out := PopupMenu{}
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_popup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229722558)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) show_popup() {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("show_popup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) set_item_count(count i32) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_item_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) get_item_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_item_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) has_selectable_items() bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    fnname := StringName.new("has_selectable_items")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) get_selectable_item(from_last bool) i32 {
    mut object_out := i32(0)
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_selectable_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 894402480)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&from_last)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) set_fit_to_longest_item(fit bool) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_fit_to_longest_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) is_fit_to_longest_item() bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    fnname := StringName.new("is_fit_to_longest_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) set_allow_reselect(allow bool) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_allow_reselect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OptionButton) get_allow_reselect() bool {
    mut object_out := false
    classname := StringName.new("OptionButton")
    fnname := StringName.new("get_allow_reselect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OptionButton) set_disable_shortcuts(disabled bool) {
    classname := StringName.new("OptionButton")
    fnname := StringName.new("set_disable_shortcuts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&disabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
