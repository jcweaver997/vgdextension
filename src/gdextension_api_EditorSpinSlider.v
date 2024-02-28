module vgdextension

@[noinit]
pub struct EditorSpinSlider {
    Range
}

pub fn (r &EditorSpinSlider) set_label(label string) {
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("set_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(label)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSpinSlider) get_label() string {
    mut object_out := String{}
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("get_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorSpinSlider) set_suffix(suffix string) {
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("set_suffix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(suffix)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSpinSlider) get_suffix() string {
    mut object_out := String{}
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("get_suffix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorSpinSlider) set_read_only(read_only bool) {
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("set_read_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&read_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSpinSlider) is_read_only() bool {
    mut object_out := false
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("is_read_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorSpinSlider) set_flat(flat bool) {
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("set_flat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSpinSlider) is_flat() bool {
    mut object_out := false
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("is_flat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorSpinSlider) set_hide_slider(hide_slider bool) {
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("set_hide_slider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hide_slider)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSpinSlider) is_hiding_slider() bool {
    mut object_out := false
    classname := StringName.new("EditorSpinSlider")
    fnname := StringName.new("is_hiding_slider")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
