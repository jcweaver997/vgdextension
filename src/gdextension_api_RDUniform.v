module vgdextension

@[noinit]
pub struct RDUniform {
    RefCounted
}

pub fn (r &RDUniform) set_uniform_type(p_member RenderingDeviceUniformType) {
    classname := StringName.new("RDUniform")
    fnname := StringName.new("set_uniform_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1664894931)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDUniform) get_uniform_type() RenderingDeviceUniformType {
    mut object_out := i64(RenderingDeviceUniformType.uniform_type_sampler)
    classname := StringName.new("RDUniform")
    fnname := StringName.new("get_uniform_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 475470040)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceUniformType(object_out)}
}
pub fn (r &RDUniform) set_binding(p_member i32) {
    classname := StringName.new("RDUniform")
    fnname := StringName.new("set_binding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDUniform) get_binding() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDUniform")
    fnname := StringName.new("get_binding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDUniform) add_id(id RID) {
    classname := StringName.new("RDUniform")
    fnname := StringName.new("add_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDUniform) clear_ids() {
    classname := StringName.new("RDUniform")
    fnname := StringName.new("clear_ids")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDUniform) get_ids() Array {
    mut object_out := Array{}
    classname := StringName.new("RDUniform")
    fnname := StringName.new("get_ids")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
