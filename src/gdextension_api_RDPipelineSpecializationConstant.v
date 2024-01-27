pub type RDPipelineSpecializationConstant = voidptr

pub fn (mut r RDPipelineSpecializationConstant) set_value(value Variant) {
    classname := StringName.new("RDPipelineSpecializationConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineSpecializationConstant) get_value() Variant {
    mut object_out := Variant{}
    classname := StringName.new("RDPipelineSpecializationConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineSpecializationConstant) set_constant_id(constant_id i32) {
    classname := StringName.new("RDPipelineSpecializationConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineSpecializationConstant) get_constant_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDPipelineSpecializationConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
