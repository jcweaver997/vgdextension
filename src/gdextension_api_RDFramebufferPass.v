module vgdextension

@[noinit]
pub struct RDFramebufferPass {
    RefCounted
}

pub fn (mut r RDFramebufferPass) set_color_attachments(p_member PackedInt32Array) {
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("set_color_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDFramebufferPass) get_color_attachments() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("get_color_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDFramebufferPass) set_input_attachments(p_member PackedInt32Array) {
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("set_input_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDFramebufferPass) get_input_attachments() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("get_input_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDFramebufferPass) set_resolve_attachments(p_member PackedInt32Array) {
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("set_resolve_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDFramebufferPass) get_resolve_attachments() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("get_resolve_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDFramebufferPass) set_preserve_attachments(p_member PackedInt32Array) {
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("set_preserve_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDFramebufferPass) get_preserve_attachments() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("get_preserve_attachments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r RDFramebufferPass) set_depth_attachment(p_member i32) {
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("set_depth_attachment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDFramebufferPass) get_depth_attachment() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RDFramebufferPass")
    fnname := StringName.new("get_depth_attachment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
