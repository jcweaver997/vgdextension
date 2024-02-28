module vgdextension

@[noinit]
pub struct RDShaderSPIRV {
    Resource
}

pub fn (r &RDShaderSPIRV) set_stage_bytecode(stage RenderingDeviceShaderStage, bytecode PackedByteArray) {
    classname := StringName.new("RDShaderSPIRV")
    fnname := StringName.new("set_stage_bytecode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3514097977)
    mut args := unsafe { [2]voidptr{} }
    i64_stage := i64(stage)
    args[0] = unsafe{voidptr(&i64_stage)}
    args[1] = unsafe{voidptr(&bytecode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDShaderSPIRV) get_stage_bytecode(stage RenderingDeviceShaderStage) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RDShaderSPIRV")
    fnname := StringName.new("get_stage_bytecode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3816765404)
    mut args := unsafe { [1]voidptr{} }
    i64_stage := i64(stage)
    args[0] = unsafe{voidptr(&i64_stage)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDShaderSPIRV) set_stage_compile_error(stage RenderingDeviceShaderStage, compile_error string) {
    classname := StringName.new("RDShaderSPIRV")
    fnname := StringName.new("set_stage_compile_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 620821314)
    mut args := unsafe { [2]voidptr{} }
    i64_stage := i64(stage)
    args[0] = unsafe{voidptr(&i64_stage)}
    arg_sn1 := String.new(compile_error)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDShaderSPIRV) get_stage_compile_error(stage RenderingDeviceShaderStage) string {
    mut object_out := String{}
    classname := StringName.new("RDShaderSPIRV")
    fnname := StringName.new("get_stage_compile_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354920045)
    mut args := unsafe { [1]voidptr{} }
    i64_stage := i64(stage)
    args[0] = unsafe{voidptr(&i64_stage)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
