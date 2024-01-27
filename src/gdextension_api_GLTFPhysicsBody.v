pub type GLTFPhysicsBody = voidptr

pub fn GLTFPhysicsBody.from_node(body_node CollisionObject3D) GLTFPhysicsBody {
    mut object_out := GLTFPhysicsBody(unsafe{nil})
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("from_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 420544174)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body_node)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFPhysicsBody) to_node() CollisionObject3D {
    mut object_out := CollisionObject3D(unsafe{nil})
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("to_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3224013656)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn GLTFPhysicsBody.from_dictionary(dictionary Dictionary) GLTFPhysicsBody {
    mut object_out := GLTFPhysicsBody(unsafe{nil})
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("from_dictionary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1177544336)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dictionary)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFPhysicsBody) to_dictionary() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("to_dictionary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFPhysicsBody) get_body_type() String {
    mut object_out := String{}
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("get_body_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsBody) set_body_type(body_type String) {
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("set_body_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsBody) get_mass() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("get_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsBody) set_mass(mass f32) {
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("set_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsBody) get_linear_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsBody) set_linear_velocity(linear_velocity Vector3) {
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsBody) get_angular_velocity() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsBody) set_angular_velocity(angular_velocity Vector3) {
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFPhysicsBody) get_inertia_tensor() Basis {
    mut object_out := Basis{}
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("get_inertia_tensor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2716978435)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFPhysicsBody) set_inertia_tensor(inertia_tensor Basis) {
    classname := StringName.new("GLTFPhysicsBody")
    defer { classname.deinit() }
    fnname := StringName.new("set_inertia_tensor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1055510324)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
