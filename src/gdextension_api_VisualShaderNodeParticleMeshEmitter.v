module vgdextension

@[noinit]
pub struct VisualShaderNodeParticleMeshEmitter {
    VisualShaderNodeParticleEmitter
}

pub fn (mut r VisualShaderNodeParticleMeshEmitter) set_mesh(mesh Mesh) {
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    fnname := StringName.new("set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParticleMeshEmitter) get_mesh() Mesh {
    mut object_out := Mesh{}
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    fnname := StringName.new("get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeParticleMeshEmitter) set_use_all_surfaces(enabled bool) {
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    fnname := StringName.new("set_use_all_surfaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParticleMeshEmitter) is_use_all_surfaces() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    fnname := StringName.new("is_use_all_surfaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeParticleMeshEmitter) set_surface_index(surface_index i32) {
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    fnname := StringName.new("set_surface_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParticleMeshEmitter) get_surface_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    fnname := StringName.new("get_surface_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
