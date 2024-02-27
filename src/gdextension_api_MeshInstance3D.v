module vgdextension

@[noinit]
pub struct MeshInstance3D {
    GeometryInstance3D
}

pub fn (mut r MeshInstance3D) set_mesh(mesh Mesh) {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshInstance3D) get_mesh() Mesh {
    mut object_out := Mesh{}
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MeshInstance3D) set_skeleton_path(skeleton_path NodePath) {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("set_skeleton_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r MeshInstance3D) get_skeleton_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("get_skeleton_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MeshInstance3D) set_skin(skin Skin) {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("set_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3971435618)
    mut args := unsafe { [1]voidptr{} }
    args[0] = skin.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshInstance3D) get_skin() Skin {
    mut object_out := Skin{}
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("get_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074563878)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshInstance3D) get_surface_override_material_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("get_surface_override_material_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MeshInstance3D) set_surface_override_material(surface i32, material Material) {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("set_surface_override_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface)}
    args[1] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshInstance3D) get_surface_override_material(surface i32) Material {
    mut object_out := Material{}
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("get_surface_override_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshInstance3D) get_active_material(surface i32) Material {
    mut object_out := Material{}
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("get_active_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MeshInstance3D) create_trimesh_collision() {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("create_trimesh_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r MeshInstance3D) create_convex_collision(clean bool, simplify bool) {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("create_convex_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2751962654)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&clean)}
    args[1] = unsafe{voidptr(&simplify)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r MeshInstance3D) create_multiple_convex_collisions(settings MeshConvexDecompositionSettings) {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("create_multiple_convex_collisions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 628789669)
    mut args := unsafe { [1]voidptr{} }
    args[0] = settings.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshInstance3D) get_blend_shape_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("get_blend_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MeshInstance3D) find_blend_shape_by_name(name string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("find_blend_shape_by_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4150868206)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshInstance3D) get_blend_shape_value(blend_shape_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("get_blend_shape_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&blend_shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MeshInstance3D) set_blend_shape_value(blend_shape_idx i32, value f64) {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("set_blend_shape_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&blend_shape_idx)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r MeshInstance3D) create_debug_tangents() {
    classname := StringName.new("MeshInstance3D")
    fnname := StringName.new("create_debug_tangents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
