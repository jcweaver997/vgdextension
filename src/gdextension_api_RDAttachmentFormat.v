module vgdextension

@[noinit]
pub struct RDAttachmentFormat {
    RefCounted
}

pub fn (mut r RDAttachmentFormat) set_format(p_member RenderingDeviceDataFormat) {
    classname := StringName.new("RDAttachmentFormat")
    defer { classname.deinit() }
    fnname := StringName.new("set_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 565531219)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDAttachmentFormat) get_format() RenderingDeviceDataFormat {
    mut object_out := RenderingDeviceDataFormat.data_format_r4g4_unorm_pack8
    classname := StringName.new("RDAttachmentFormat")
    defer { classname.deinit() }
    fnname := StringName.new("get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235804183)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDAttachmentFormat) set_samples(p_member RenderingDeviceTextureSamples) {
    classname := StringName.new("RDAttachmentFormat")
    defer { classname.deinit() }
    fnname := StringName.new("set_samples")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3774171498)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDAttachmentFormat) get_samples() RenderingDeviceTextureSamples {
    mut object_out := RenderingDeviceTextureSamples.texture_samples_1
    classname := StringName.new("RDAttachmentFormat")
    defer { classname.deinit() }
    fnname := StringName.new("get_samples")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 407791724)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDAttachmentFormat) set_usage_flags(p_member u32) {
    classname := StringName.new("RDAttachmentFormat")
    defer { classname.deinit() }
    fnname := StringName.new("set_usage_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDAttachmentFormat) get_usage_flags() u32 {
    mut object_out := u32(0)
    classname := StringName.new("RDAttachmentFormat")
    defer { classname.deinit() }
    fnname := StringName.new("get_usage_flags")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
