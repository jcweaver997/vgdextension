module vgdextension

pub struct RDVertexAttribute {
    RefCounted
}

pub fn (mut r RDVertexAttribute) set_location(p_member u32) {
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("set_location")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDVertexAttribute) get_location() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("get_location")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDVertexAttribute) set_offset(p_member u32) {
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDVertexAttribute) get_offset() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDVertexAttribute) set_format(p_member RenderingDeviceDataFormat) {
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("set_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDVertexAttribute) get_format() RenderingDeviceDataFormat {
    mut object_out := RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDVertexAttribute) set_stride(p_member u32) {
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("set_stride")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDVertexAttribute) get_stride() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("get_stride")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDVertexAttribute) set_frequency(p_member RenderingDeviceVertexFrequency) {
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("set_frequency")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 522141836)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDVertexAttribute) get_frequency() RenderingDeviceVertexFrequency {
    mut object_out := RenderingDeviceVertexFrequency.vertex_frequency_vertex
    classname := StringName.new("RDVertexAttribute")
    defer { classname.deinit() }
    fnname := StringName.new("get_frequency")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4154106413)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
