module vgdextension

@[noinit]
pub struct RDPipelineSpecializationConstant {
    RefCounted
}

pub fn (mut r RDPipelineSpecializationConstant) set_value(value Variant) {
    classname := StringName.new("RDPipelineSpecializationConstant")
    fnname := StringName.new("set_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineSpecializationConstant) get_value() Variant {
    mut object_out := Variant{}
    classname := StringName.new("RDPipelineSpecializationConstant")
    fnname := StringName.new("get_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDPipelineSpecializationConstant) set_constant_id(constant_id u32) {
    classname := StringName.new("RDPipelineSpecializationConstant")
    fnname := StringName.new("set_constant_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDPipelineSpecializationConstant) get_constant_id() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDPipelineSpecializationConstant")
    fnname := StringName.new("get_constant_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
