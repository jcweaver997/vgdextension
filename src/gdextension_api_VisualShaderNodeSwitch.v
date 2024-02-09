module vgdextension

pub enum VisualShaderNodeSwitchOpType {
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

pub struct VisualShaderNodeSwitch {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeSwitch) set_op_type(type_name VisualShaderNodeSwitchOpType) {
    classname := StringName.new("VisualShaderNodeSwitch")
    defer { classname.deinit() }
    fnname := StringName.new("set_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 510471861)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeSwitch) get_op_type() VisualShaderNodeSwitchOpType {
    mut object_out := VisualShaderNodeSwitchOpType.op_type_float
    classname := StringName.new("VisualShaderNodeSwitch")
    defer { classname.deinit() }
    fnname := StringName.new("get_op_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2517845071)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
