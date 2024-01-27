module vgdextension

pub type RDUniform = voidptr

pub fn (mut r RDUniform) set_uniform_type(p_member RenderingDeviceUniformType) {
    classname := StringName.new("RDUniform")
    defer { classname.deinit() }
    fnname := StringName.new("set_uniform_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1664894931)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDUniform) get_uniform_type() RenderingDeviceUniformType {
    mut object_out := RenderingDeviceUniformType.uniform_type_sampler
    classname := StringName.new("RDUniform")
    defer { classname.deinit() }
    fnname := StringName.new("get_uniform_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 475470040)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDUniform) set_binding(p_member i32) {
    classname := StringName.new("RDUniform")
    defer { classname.deinit() }
    fnname := StringName.new("set_binding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDUniform) get_binding() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDUniform")
    defer { classname.deinit() }
    fnname := StringName.new("get_binding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDUniform) add_id(id RID) {
    classname := StringName.new("RDUniform")
    defer { classname.deinit() }
    fnname := StringName.new("add_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r RDUniform) clear_ids() {
    classname := StringName.new("RDUniform")
    defer { classname.deinit() }
    fnname := StringName.new("clear_ids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDUniform) get_ids() Array {
    mut object_out := Array{}
    classname := StringName.new("RDUniform")
    defer { classname.deinit() }
    fnname := StringName.new("get_ids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
