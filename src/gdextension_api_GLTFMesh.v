pub type GLTFMesh = voidptr

pub fn (mut r GLTFMesh) get_mesh() ImporterMesh {
    mut object_out := ImporterMesh(unsafe{nil})
    classname := StringName.new("GLTFMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3754628756)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFMesh) set_mesh(mesh ImporterMesh) {
    classname := StringName.new("GLTFMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255166972)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFMesh) get_blend_weights() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("GLTFMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_weights")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2445143706)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFMesh) set_blend_weights(blend_weights PackedFloat32Array) {
    classname := StringName.new("GLTFMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_weights")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFMesh) get_instance_materials() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_materials")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFMesh) set_instance_materials(instance_materials Array) {
    classname := StringName.new("GLTFMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_instance_materials")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
