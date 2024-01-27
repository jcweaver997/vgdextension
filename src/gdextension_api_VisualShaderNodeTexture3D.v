module vgdextension

pub type VisualShaderNodeTexture3D = voidptr

pub fn (mut r VisualShaderNodeTexture3D) set_texture(value Texture3D) {
    classname := StringName.new("VisualShaderNodeTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1188404210)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeTexture3D) get_texture() Texture3D {
    mut object_out := Texture3D(unsafe{nil})
    classname := StringName.new("VisualShaderNodeTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373985333)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
