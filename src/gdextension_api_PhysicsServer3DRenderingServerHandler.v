module vgdextension

pub type PhysicsServer3DRenderingServerHandler = voidptr

pub fn (mut r PhysicsServer3DRenderingServerHandler) uset_vertex(vertex_id i32, vertices voidptr) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    defer { classname.deinit() }
    fnname := StringName.new("_set_vertex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DRenderingServerHandler) uset_normal(vertex_id i32, normals voidptr) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    defer { classname.deinit() }
    fnname := StringName.new("_set_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer3DRenderingServerHandler) uset_aabb(aabb AABB) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    defer { classname.deinit() }
    fnname := StringName.new("_set_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
