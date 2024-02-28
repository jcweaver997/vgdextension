module vgdextension

@[noinit]
pub struct GLTFNode {
    Resource
}

pub fn (r &GLTFNode) get_parent() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_parent(parent i32) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_height(height i32) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_xform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_xform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4183770049)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_xform(xform Transform3D) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_xform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_mesh() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_mesh(mesh i32) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_camera() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_camera")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_camera(camera i32) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_camera")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&camera)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_skin() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_skin(skin i32) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_skeleton() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_skeleton(skeleton i32) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_position(position Vector3) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_rotation() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2916281908)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_rotation(rotation Quaternion) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rotation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_scale() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_scale(scale Vector3) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_children() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_children")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_children(children PackedInt32Array) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_children")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&children)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_light() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_light")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_light(light i32) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_light")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&light)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFNode) get_additional_data(extension_name string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("get_additional_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(extension_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFNode) set_additional_data(extension_name string, additional_data Variant) {
    classname := StringName.new("GLTFNode")
    fnname := StringName.new("set_additional_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(extension_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&additional_data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
