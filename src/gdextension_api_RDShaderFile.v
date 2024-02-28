module vgdextension

@[noinit]
pub struct RDShaderFile {
    Resource
}

pub fn (r &RDShaderFile) set_bytecode(bytecode RDShaderSPIRV, version string) {
    classname := StringName.new("RDShaderFile")
    fnname := StringName.new("set_bytecode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558064255)
    mut args := unsafe { [2]voidptr{} }
    args[0] = bytecode.ptr
    arg_sn1 := StringName.new(version)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDShaderFile) get_spirv(version string) RDShaderSPIRV {
    mut object_out := RDShaderSPIRV{}
    classname := StringName.new("RDShaderFile")
    fnname := StringName.new("get_spirv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3340165340)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(version)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDShaderFile) get_version_list() Array {
    mut object_out := Array{}
    classname := StringName.new("RDShaderFile")
    fnname := StringName.new("get_version_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDShaderFile) set_base_error(error string) {
    classname := StringName.new("RDShaderFile")
    fnname := StringName.new("set_base_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(error)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDShaderFile) get_base_error() string {
    mut object_out := String{}
    classname := StringName.new("RDShaderFile")
    fnname := StringName.new("get_base_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
