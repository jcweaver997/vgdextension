module vgdextension

@[noinit]
pub struct GLTFMesh {
    Resource
}

pub fn (mut r GLTFMesh) get_mesh() ImporterMesh {
    mut object_out := ImporterMesh{}
    classname := StringName.new("GLTFMesh")
    fnname := StringName.new("get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754628756)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFMesh) set_mesh(mesh ImporterMesh) {
    classname := StringName.new("GLTFMesh")
    fnname := StringName.new("set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255166972)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFMesh) get_blend_weights() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("GLTFMesh")
    fnname := StringName.new("get_blend_weights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2445143706)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFMesh) set_blend_weights(blend_weights PackedFloat32Array) {
    classname := StringName.new("GLTFMesh")
    fnname := StringName.new("set_blend_weights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&blend_weights)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFMesh) get_instance_materials() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFMesh")
    fnname := StringName.new("get_instance_materials")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFMesh) set_instance_materials(instance_materials Array) {
    classname := StringName.new("GLTFMesh")
    fnname := StringName.new("set_instance_materials")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instance_materials)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
