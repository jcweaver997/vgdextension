module vgdextension

pub type VisualShaderNodeTexture2DArray = voidptr

pub fn (mut r VisualShaderNodeTexture2DArray) set_texture_array(value Texture2DArray) {
    classname := StringName.new("VisualShaderNodeTexture2DArray")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_array")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2206200446)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeTexture2DArray) get_texture_array() Texture2DArray {
    mut object_out := Texture2DArray(unsafe{nil})
    classname := StringName.new("VisualShaderNodeTexture2DArray")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_array")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 146117123)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
