module vgdextension

@[noinit]
pub struct VisualShaderNodeFloatConstant {
    VisualShaderNodeConstant
}

pub fn (mut r VisualShaderNodeFloatConstant) set_constant(constant f64) {
    classname := StringName.new("VisualShaderNodeFloatConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatConstant) get_constant() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualShaderNodeFloatConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
