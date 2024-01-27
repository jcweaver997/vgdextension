pub type VisualShaderNodeParticleMeshEmitter = voidptr

pub fn (mut r VisualShaderNodeParticleMeshEmitter) set_mesh(mesh Mesh) {
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleMeshEmitter) get_mesh() Mesh {
    mut object_out := Mesh(unsafe{nil})
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeParticleMeshEmitter) set_use_all_surfaces(enabled bool) {
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_all_surfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleMeshEmitter) is_use_all_surfaces() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    defer { classname.deinit() }
    fnname := StringName.new("is_use_all_surfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeParticleMeshEmitter) set_surface_index(surface_index i32) {
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    defer { classname.deinit() }
    fnname := StringName.new("set_surface_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeParticleMeshEmitter) get_surface_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeParticleMeshEmitter")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
