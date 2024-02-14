module vgdextension

@[noinit]
pub struct RDTextureFormat {
    RefCounted
}

pub fn (mut r RDTextureFormat) set_format(p_member RenderingDeviceDataFormat) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_format() RenderingDeviceDataFormat {
    mut object_out := i64(RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceDataFormat(object_out)}
}
pub fn (mut r RDTextureFormat) set_width(p_member u32) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_width() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDTextureFormat) set_height(p_member u32) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_height() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDTextureFormat) set_depth(p_member u32) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_depth() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDTextureFormat) set_array_layers(p_member u32) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_array_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_array_layers() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_array_layers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDTextureFormat) set_mipmaps(p_member u32) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_mipmaps() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_mipmaps")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDTextureFormat) set_texture_type(p_member RenderingDeviceTextureType) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_texture_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 652343381)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_texture_type() RenderingDeviceTextureType {
    mut object_out := i64(RenderingDeviceTextureType.texture_type_1d)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_texture_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4036357416)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceTextureType(object_out)}
}
pub fn (mut r RDTextureFormat) set_samples(p_member RenderingDeviceTextureSamples) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_samples")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3774171498)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_samples() RenderingDeviceTextureSamples {
    mut object_out := i64(RenderingDeviceTextureSamples.texture_samples_1)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_samples")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 407791724)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceTextureSamples(object_out)}
}
pub fn (mut r RDTextureFormat) set_usage_bits(p_member RenderingDeviceTextureUsageBits) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("set_usage_bits")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 245642367)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDTextureFormat) get_usage_bits() RenderingDeviceTextureUsageBits {
    mut object_out := i64(RenderingDeviceTextureUsageBits.texture_usage_sampling_bit)
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("get_usage_bits")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1313398998)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceTextureUsageBits(object_out)}
}
pub fn (mut r RDTextureFormat) add_shareable_format(format RenderingDeviceDataFormat) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("add_shareable_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
    mut args := unsafe { [1]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r RDTextureFormat) remove_shareable_format(format RenderingDeviceDataFormat) {
    classname := StringName.new("RDTextureFormat")
    fnname := StringName.new("remove_shareable_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
    mut args := unsafe { [1]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
