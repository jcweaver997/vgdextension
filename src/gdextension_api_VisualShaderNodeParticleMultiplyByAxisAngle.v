module vgdextension

pub type VisualShaderNodeParticleMultiplyByAxisAngle = voidptr

pub fn (mut r VisualShaderNodeParticleMultiplyByAxisAngle) set_degrees_mode(enabled bool) {
    classname := StringName.new("VisualShaderNodeParticleMultiplyByAxisAngle")
    defer { classname.deinit() }
    fnname := StringName.new("set_degrees_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleMultiplyByAxisAngle) is_degrees_mode() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeParticleMultiplyByAxisAngle")
    defer { classname.deinit() }
    fnname := StringName.new("is_degrees_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
