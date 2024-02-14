module vgdextension

@[noinit]
pub struct ShaderInclude {
    Resource
}

pub fn (mut r ShaderInclude) set_code(code String) {
    classname := StringName.new("ShaderInclude")
    fnname := StringName.new("set_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&code)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ShaderInclude) get_code() String {
    mut object_out := String{}
    classname := StringName.new("ShaderInclude")
    fnname := StringName.new("get_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
