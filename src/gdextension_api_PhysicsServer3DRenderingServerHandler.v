module vgdextension

@[noinit]
pub struct PhysicsServer3DRenderingServerHandler {
    Object
}

pub interface IPhysicsServer3DRenderingServerHandlerSetVertex {
    mut:
    virt_set_vertex(vertex_id i32, vertex Vector3)
}

pub fn (r &PhysicsServer3DRenderingServerHandler) uset_vertex(vertex_id i32, vertex Vector3) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    fnname := StringName.new("_set_vertex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_id)}
    args[1] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DRenderingServerHandlerSetNormal {
    mut:
    virt_set_normal(vertex_id i32, normal Vector3)
}

pub fn (r &PhysicsServer3DRenderingServerHandler) uset_normal(vertex_id i32, normal Vector3) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    fnname := StringName.new("_set_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_id)}
    args[1] = unsafe{voidptr(&normal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IPhysicsServer3DRenderingServerHandlerSetAabb {
    mut:
    virt_set_aabb(aabb AABB)
}

pub fn (r &PhysicsServer3DRenderingServerHandler) uset_aabb(aabb AABB) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    fnname := StringName.new("_set_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3DRenderingServerHandler) set_vertex(vertex_id i32, vertex Vector3) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    fnname := StringName.new("set_vertex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_id)}
    args[1] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3DRenderingServerHandler) set_normal(vertex_id i32, normal Vector3) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    fnname := StringName.new("set_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_id)}
    args[1] = unsafe{voidptr(&normal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PhysicsServer3DRenderingServerHandler) set_aabb(aabb AABB) {
    classname := StringName.new("PhysicsServer3DRenderingServerHandler")
    fnname := StringName.new("set_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
