module vgdextension

@[noinit]
pub struct RDVertexAttribute {
    RefCounted
}

pub fn (mut r RDVertexAttribute) set_location(p_member u32) {
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("set_location")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDVertexAttribute) get_location() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("get_location")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDVertexAttribute) set_offset(p_member u32) {
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("set_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDVertexAttribute) get_offset() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("get_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDVertexAttribute) set_format(p_member RenderingDeviceDataFormat) {
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("set_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDVertexAttribute) get_format() RenderingDeviceDataFormat {
    mut object_out := i64(RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8)
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceDataFormat(object_out)}
}
pub fn (mut r RDVertexAttribute) set_stride(p_member u32) {
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("set_stride")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDVertexAttribute) get_stride() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("get_stride")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDVertexAttribute) set_frequency(p_member RenderingDeviceVertexFrequency) {
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("set_frequency")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 522141836)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDVertexAttribute) get_frequency() RenderingDeviceVertexFrequency {
    mut object_out := i64(RenderingDeviceVertexFrequency.vertex_frequency_vertex)
    classname := StringName.new("RDVertexAttribute")
    fnname := StringName.new("get_frequency")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4154106413)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceVertexFrequency(object_out)}
}
