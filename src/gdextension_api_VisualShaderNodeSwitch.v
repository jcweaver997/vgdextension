module vgdextension

pub enum VisualShaderNodeSwitchOpType as i64 {
    op_type_float = 0
    op_type_int = 1
    op_type_uint = 2
    op_type_vector_2d = 3
    op_type_vector_3d = 4
    op_type_vector_4d = 5
    op_type_boolean = 6
    op_type_transform = 7
    op_type_max = 8
}

@[noinit]
pub struct VisualShaderNodeSwitch {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeSwitch) set_op_type(type_name VisualShaderNodeSwitchOpType) {
    classname := StringName.new("VisualShaderNodeSwitch")
    fnname := StringName.new("set_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 510471861)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeSwitch) get_op_type() VisualShaderNodeSwitchOpType {
    mut object_out := i64(VisualShaderNodeSwitchOpType.op_type_float)
    classname := StringName.new("VisualShaderNodeSwitch")
    fnname := StringName.new("get_op_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2517845071)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeSwitchOpType(object_out)}
}
