module vgdextension

pub struct VisualShaderNodeInput {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeInput) set_input_name(name String) {
    classname := StringName.new("VisualShaderNodeInput")
    defer { classname.deinit() }
    fnname := StringName.new("set_input_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeInput) get_input_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeInput")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualShaderNodeInput) get_input_real_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeInput")
    defer { classname.deinit() }
    fnname := StringName.new("get_input_real_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
