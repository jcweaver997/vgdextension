module vgdextension

@[noinit]
pub struct GLTFPhysicsShape {
    Resource
}

pub fn GLTFPhysicsShape.from_node(shape_node CollisionShape3D) GLTFPhysicsShape {
    mut object_out := GLTFPhysicsShape{}
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("from_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3613751275)
    mut args := unsafe { [1]voidptr{} }
    args[0] = shape_node.ptr
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) to_node(cache_shapes bool) CollisionShape3D {
    mut object_out := CollisionShape3D{}
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("to_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 563689933)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_shapes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn GLTFPhysicsShape.from_dictionary(dictionary Dictionary) GLTFPhysicsShape {
    mut object_out := GLTFPhysicsShape{}
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("from_dictionary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2390691823)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dictionary)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) to_dictionary() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("to_dictionary")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) get_shape_type() string {
    mut object_out := String{}
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("get_shape_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &GLTFPhysicsShape) set_shape_type(shape_type string) {
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("set_shape_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(shape_type)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFPhysicsShape) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) set_size(size Vector3) {
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFPhysicsShape) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("get_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) set_radius(radius f64) {
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFPhysicsShape) get_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) set_height(height f64) {
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFPhysicsShape) get_is_trigger() bool {
    mut object_out := false
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("get_is_trigger")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) set_is_trigger(is_trigger bool) {
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("set_is_trigger")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&is_trigger)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFPhysicsShape) get_mesh_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("get_mesh_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) set_mesh_index(mesh_index i32) {
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("set_mesh_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mesh_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFPhysicsShape) get_importer_mesh() ImporterMesh {
    mut object_out := ImporterMesh{}
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("get_importer_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3161779525)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GLTFPhysicsShape) set_importer_mesh(importer_mesh ImporterMesh) {
    classname := StringName.new("GLTFPhysicsShape")
    fnname := StringName.new("set_importer_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255166972)
    mut args := unsafe { [1]voidptr{} }
    args[0] = importer_mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
