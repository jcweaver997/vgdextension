module vgdextension

pub type GLTFNode = voidptr

pub fn (mut r GLTFNode) get_parent() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_parent(parent i32) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_height(height i32) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_xform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_xform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4183770049)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_xform(xform Transform3D) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_xform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_mesh() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_mesh(mesh i32) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_camera() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_camera(camera i32) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_camera")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_skin() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_skin(skin i32) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_skeleton() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_skeleton(skeleton i32) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_position() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_position(position Vector3) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_rotation() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2916281908)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_rotation(rotation Quaternion) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_scale() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3783033775)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_scale(scale Vector3) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_children() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_children")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_children(children PackedInt32Array) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_children")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_light() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_light")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_light(light i32) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_light")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFNode) get_additional_data(extension_name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("get_additional_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&extension_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFNode) set_additional_data(extension_name StringName, additional_data Variant) {
    classname := StringName.new("GLTFNode")
    defer { classname.deinit() }
    fnname := StringName.new("set_additional_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
