pub type RDShaderFile = voidptr

pub fn (mut r RDShaderFile) set_bytecode(bytecode RDShaderSPIRV, version StringName) {
    classname := StringName.new("RDShaderFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_bytecode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558064255)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDShaderFile) get_spirv(version StringName) RDShaderSPIRV {
    mut object_out := RDShaderSPIRV(unsafe{nil})
    classname := StringName.new("RDShaderFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_spirv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3340165340)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&version)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RDShaderFile) get_version_list() Array {
    mut object_out := Array{}
    classname := StringName.new("RDShaderFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_version_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDShaderFile) set_base_error(error String) {
    classname := StringName.new("RDShaderFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_base_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDShaderFile) get_base_error() String {
    mut object_out := String{}
    classname := StringName.new("RDShaderFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_base_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
