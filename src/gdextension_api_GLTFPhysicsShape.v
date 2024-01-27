pub type GLTFPhysicsShape = voidptr

pub fn GLTFPhysicsShape.from_node(shape_node CollisionShape3D) GLTFPhysicsShape {
    mut object_out := GLTFPhysicsShape(unsafe{nil})
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("from_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3613751275)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape_node)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsShape) to_node(cache_shapes bool) CollisionShape3D {
    mut object_out := CollisionShape3D(unsafe{nil})
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("to_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 563689933)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cache_shapes)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn GLTFPhysicsShape.from_dictionary(dictionary Dictionary) GLTFPhysicsShape {
    mut object_out := GLTFPhysicsShape(unsafe{nil})
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("from_dictionary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2390691823)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dictionary)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFPhysicsShape) to_dictionary() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("to_dictionary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFPhysicsShape) get_shape_type() String {
    mut object_out := String{}
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsShape) set_shape_type(shape_type String) {
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsShape) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsShape) set_size(size Vector3) {
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsShape) get_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsShape) set_radius(radius f32) {
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsShape) get_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsShape) set_height(height f32) {
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsShape) get_is_trigger() bool {
    mut object_out := false
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("get_is_trigger")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsShape) set_is_trigger(is_trigger bool) {
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("set_is_trigger")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsShape) get_mesh_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsShape) set_mesh_index(mesh_index i32) {
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsShape) get_importer_mesh() ImporterMesh {
    mut object_out := ImporterMesh(unsafe{nil})
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("get_importer_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3161779525)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsShape) set_importer_mesh(importer_mesh ImporterMesh) {
    classname := StringName.new("GLTFPhysicsShape")
    defer { classname.deinit() }
    fnname := StringName.new("set_importer_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2255166972)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
