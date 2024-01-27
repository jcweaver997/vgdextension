pub type RDShaderSPIRV = voidptr

pub fn (mut r RDShaderSPIRV) set_stage_bytecode(stage RenderingDeviceShaderStage, bytecode PackedByteArray) {
    classname := StringName.new("RDShaderSPIRV")
    defer { classname.deinit() }
    fnname := StringName.new("set_stage_bytecode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3514097977)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDShaderSPIRV) get_stage_bytecode(stage RenderingDeviceShaderStage) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("RDShaderSPIRV")
    defer { classname.deinit() }
    fnname := StringName.new("get_stage_bytecode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3816765404)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stage)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RDShaderSPIRV) set_stage_compile_error(stage RenderingDeviceShaderStage, compile_error String) {
    classname := StringName.new("RDShaderSPIRV")
    defer { classname.deinit() }
    fnname := StringName.new("set_stage_compile_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 620821314)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDShaderSPIRV) get_stage_compile_error(stage RenderingDeviceShaderStage) String {
    mut object_out := String{}
    classname := StringName.new("RDShaderSPIRV")
    defer { classname.deinit() }
    fnname := StringName.new("get_stage_compile_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354920045)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stage)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
