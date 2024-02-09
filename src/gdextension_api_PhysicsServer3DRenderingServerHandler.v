module vgdextension

pub struct PhysicsServer3DRenderingServerHandler {
    Object
}

pub interface IPhysicsServer3DRenderingServerHandlerSetVertex {
    mut:
    virt_set_vertex(vertex_id i32, vertices voidptr)
}

pub fn (mut r PhysicsServer3DRenderingServerHandler) uset_vertex(vertex_id i32, vertices voidptr) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    defer { classname.deinit() }
    fnname := StringName.new("_set_vertex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_id)}
    args[1] = unsafe{voidptr(&vertices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer3DRenderingServerHandlerSetNormal {
    mut:
    virt_set_normal(vertex_id i32, normals voidptr)
}

pub fn (mut r PhysicsServer3DRenderingServerHandler) uset_normal(vertex_id i32, normals voidptr) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    defer { classname.deinit() }
    fnname := StringName.new("_set_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_id)}
    args[1] = unsafe{voidptr(&normals)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IPhysicsServer3DRenderingServerHandlerSetAabb {
    mut:
    virt_set_aabb(aabb AABB)
}

pub fn (mut r PhysicsServer3DRenderingServerHandler) uset_aabb(aabb AABB) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    defer { classname.deinit() }
    fnname := StringName.new("_set_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
