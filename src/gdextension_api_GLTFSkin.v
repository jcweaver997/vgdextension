module vgdextension

@[noinit]
pub struct GLTFSkin {
    Resource
}

pub fn (mut r GLTFSkin) get_skin_root() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_skin_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_skin_root(skin_root i32) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_skin_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skin_root)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_joints_original() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_joints_original")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_joints_original(joints_original PackedInt32Array) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_joints_original")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joints_original)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_inverse_binds() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_inverse_binds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_inverse_binds(inverse_binds Array) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_inverse_binds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&inverse_binds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_joints() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_joints")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_joints(joints PackedInt32Array) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_joints")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joints)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_non_joints() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_non_joints")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_non_joints(non_joints PackedInt32Array) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_non_joints")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&non_joints)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_roots() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_roots")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_roots(roots PackedInt32Array) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_roots")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&roots)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_skeleton() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_skeleton(skeleton i32) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_joint_i_to_bone_i() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_joint_i_to_bone_i")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_joint_i_to_bone_i(joint_i_to_bone_i Dictionary) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_joint_i_to_bone_i")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_i_to_bone_i)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_joint_i_to_name() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_joint_i_to_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_joint_i_to_name(joint_i_to_name Dictionary) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_joint_i_to_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joint_i_to_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFSkin) get_godot_skin() Skin {
    mut object_out := Skin{}
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("get_godot_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1032037385)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFSkin) set_godot_skin(godot_skin Skin) {
    classname := StringName.new("GLTFSkin")
    fnname := StringName.new("set_godot_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971435618)
    mut args := unsafe { [1]voidptr{} }
    args[0] = godot_skin.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
