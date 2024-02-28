module vgdextension

@[noinit]
pub struct VisualShaderNodeInput {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeInput) set_input_name(name string) {
    classname := StringName.new("VisualShaderNodeInput")
    fnname := StringName.new("set_input_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeInput) get_input_name() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeInput")
    fnname := StringName.new("get_input_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &VisualShaderNodeInput) get_input_real_name() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeInput")
    fnname := StringName.new("get_input_real_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
