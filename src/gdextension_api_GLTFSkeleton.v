module vgdextension

@[noinit]
pub struct GLTFSkeleton {
    Resource
}

pub fn (r &GLTFSkeleton) get_joints() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("get_joints")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFSkeleton) set_joints(joints PackedInt32Array) {
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("set_joints")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&joints)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFSkeleton) get_roots() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("get_roots")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFSkeleton) set_roots(roots PackedInt32Array) {
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("set_roots")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&roots)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFSkeleton) get_godot_skeleton() Skeleton3D {
    mut object_out := Skeleton3D{}
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("get_godot_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1814733083)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFSkeleton) get_unique_names() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("get_unique_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFSkeleton) set_unique_names(unique_names Array) {
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("set_unique_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unique_names)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFSkeleton) get_godot_bone_node() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("get_godot_bone_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFSkeleton) set_godot_bone_node(godot_bone_node Dictionary) {
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("set_godot_bone_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&godot_bone_node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFSkeleton) get_bone_attachment_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("get_bone_attachment_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFSkeleton) get_bone_attachment(idx i32) BoneAttachment3D {
    mut object_out := BoneAttachment3D{}
    classname := StringName.new("GLTFSkeleton")
    fnname := StringName.new("get_bone_attachment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 945440495)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
