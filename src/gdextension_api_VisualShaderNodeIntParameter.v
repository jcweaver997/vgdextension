pub enum VisualShaderNodeIntParameterHint {
    hint_none = 0
    hint_range = 1
    hint_range_step = 2
    hint_max = 3
}

pub type VisualShaderNodeIntParameter = voidptr

pub fn (mut r VisualShaderNodeIntParameter) set_hint(hint VisualShaderNodeIntParameterHint) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2540512075)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntParameter) get_hint() VisualShaderNodeIntParameterHint {
    mut object_out := VisualShaderNodeIntParameterHint.hint_none
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4250814924)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_min(value i32) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntParameter) get_min() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_max(value i32) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntParameter) get_max() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_step(value i32) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntParameter) get_step() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_default_value_enabled(enabled bool) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_value_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntParameter) is_default_value_enabled() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("is_default_value_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeIntParameter) set_default_value(value i32) {
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntParameter) get_default_value() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
