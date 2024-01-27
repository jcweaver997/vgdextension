module vgdextension

pub type VisualShaderNodeInput = voidptr

pub fn (mut r VisualShaderNodeInput) set_input_name(name String) {
    classname := StringName.new("VisualShaderNodeInput")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeInput) get_input_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeInput")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeInput) get_input_real_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeInput")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_real_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
