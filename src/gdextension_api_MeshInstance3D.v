pub type MeshInstance3D = voidptr

pub fn (mut r MeshInstance3D) set_mesh(mesh Mesh) {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MeshInstance3D) get_mesh() Mesh {
    mut object_out := Mesh(unsafe{nil})
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshInstance3D) set_skeleton_path(skeleton_path NodePath) {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_skeleton_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MeshInstance3D) get_skeleton_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshInstance3D) set_skin(skin Skin) {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971435618)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MeshInstance3D) get_skin() Skin {
    mut object_out := Skin(unsafe{nil})
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074563878)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MeshInstance3D) get_surface_override_material_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_override_material_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshInstance3D) set_surface_override_material(surface i32, material Material) {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_surface_override_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MeshInstance3D) get_surface_override_material(surface i32) Material {
    mut object_out := Material(unsafe{nil})
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_override_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshInstance3D) get_active_material(surface i32) Material {
    mut object_out := Material(unsafe{nil})
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_active_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshInstance3D) create_trimesh_collision() {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("create_trimesh_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MeshInstance3D) create_convex_collision(clean bool, simplify bool) {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("create_convex_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2751962654)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MeshInstance3D) create_multiple_convex_collisions(settings MeshConvexDecompositionSettings) {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("create_multiple_convex_collisions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 628789669)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MeshInstance3D) get_blend_shape_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshInstance3D) find_blend_shape_by_name(name StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("find_blend_shape_by_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150868206)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshInstance3D) get_blend_shape_value(blend_shape_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_shape_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&blend_shape_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshInstance3D) set_blend_shape_value(blend_shape_idx i32, value f32) {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_shape_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MeshInstance3D) create_debug_tangents() {
    classname := StringName.new("MeshInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("create_debug_tangents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
