module vgdextension

pub enum VisualShaderNodeIntParameterHint as i64 {
    hint_none = 0
    hint_range = 1
    hint_range_step = 2
    hint_max = 3
}

@[noinit]
pub struct VisualShaderNodeIntParameter {
    VisualShaderNodeParameter
}

pub fn (mut r VisualShaderNodeIntParameter) set_hint(hint VisualShaderNodeIntParameterHint) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("set_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2540512075)
    mut args := unsafe { [1]voidptr{} }
    i64_hint := i64(hint)
    args[0] = unsafe{voidptr(&i64_hint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntParameter) get_hint() VisualShaderNodeIntParameterHint {
    mut object_out := i64(VisualShaderNodeIntParameterHint.hint_none)
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("get_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4250814924)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeIntParameterHint(object_out)}
}
pub fn (mut r VisualShaderNodeIntParameter) set_min(value i32) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("set_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntParameter) get_min() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("get_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_max(value i32) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("set_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntParameter) get_max() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("get_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_step(value i32) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("set_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntParameter) get_step() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("get_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_default_value_enabled(enabled bool) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("set_default_value_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntParameter) is_default_value_enabled() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("is_default_value_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_default_value(value i32) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("set_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntParameter) get_default_value() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntParameter")
    fnname := StringName.new("get_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
