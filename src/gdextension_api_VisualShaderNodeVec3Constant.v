module vgdextension

pub type VisualShaderNodeVec3Constant = voidptr

pub fn (mut r VisualShaderNodeVec3Constant) set_constant(constant Vector3) {
    classname := StringName.new("VisualShaderNodeVec3Constant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeVec3Constant) get_constant() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("VisualShaderNodeVec3Constant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
