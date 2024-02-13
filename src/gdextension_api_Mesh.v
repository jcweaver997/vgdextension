module vgdextension

pub enum MeshPrimitiveType {
    primitive_points = 0
    primitive_lines = 1
    primitive_line_strip = 2
    primitive_triangles = 3
    primitive_triangle_strip = 4
}

pub enum MeshArrayType {
    array_vertex = 0
    array_normal = 1
    array_tangent = 2
    array_color = 3
    array_tex_uv = 4
    array_tex_uv2 = 5
    array_custom0 = 6
    array_custom1 = 7
    array_custom2 = 8
    array_custom3 = 9
    array_bones = 10
    array_weights = 11
    array_index = 12
    array_max = 13
}

pub enum MeshArrayCustomFormat {
    array_custom_rgba8_unorm = 0
    array_custom_rgba8_snorm = 1
    array_custom_rg_half = 2
    array_custom_rgba_half = 3
    array_custom_r_float = 4
    array_custom_rg_float = 5
    array_custom_rgb_float = 6
    array_custom_rgba_float = 7
    array_custom_max = 8
}

pub enum MeshArrayFormat {
    array_format_vertex = 1
    array_format_normal = 2
    array_format_tangent = 4
    array_format_color = 8
    array_format_tex_uv = 16
    array_format_tex_uv2 = 32
    array_format_custom0 = 64
    array_format_custom1 = 128
    array_format_custom2 = 256
    array_format_custom3 = 512
    array_format_bones = 1024
    array_format_weights = 2048
    array_format_index = 4096
    array_format_blend_shape_mask = 7
    array_format_custom_base = 13
    array_format_custom_bits = 3
    array_format_custom2_shift = 19
    array_format_custom3_shift = 22
    array_compress_flags_base = 25
    array_flag_use_2d_vertices = 33554432
    array_flag_use_dynamic_update = 67108864
    array_flag_use_8_bone_weights = 134217728
    array_flag_uses_empty_vertex_array = 268435456
}

pub enum MeshBlendShapeMode {
    blend_shape_mode_normalized = 0
    blend_shape_mode_relative = 1
}

@[noinit]
pub struct Mesh {
    Resource
}

pub interface IMeshGetSurfaceCount {
    mut:
    virt_get_surface_count() i32
}

pub fn (r &Mesh) uget_surface_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_get_surface_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IMeshSurfaceGetArrayLen {
    mut:
    virt_surface_get_array_len(index i32) i32
}

pub fn (r &Mesh) usurface_get_array_len(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_get_array_len")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshSurfaceGetArrayIndexLen {
    mut:
    virt_surface_get_array_index_len(index i32) i32
}

pub fn (r &Mesh) usurface_get_array_index_len(index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_get_array_index_len")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshSurfaceGetArrays {
    mut:
    virt_surface_get_arrays(index i32) Array
}

pub fn (r &Mesh) usurface_get_arrays(index i32) Array {
    mut object_out := Array{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_get_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshSurfaceGetBlendShapeArrays {
    mut:
    virt_surface_get_blend_shape_arrays(index i32) Array
}

pub fn (r &Mesh) usurface_get_blend_shape_arrays(index i32) Array {
    mut object_out := Array{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_get_blend_shape_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshSurfaceGetLods {
    mut:
    virt_surface_get_lods(index i32) Dictionary
}

pub fn (r &Mesh) usurface_get_lods(index i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_get_lods")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshSurfaceGetFormat {
    mut:
    virt_surface_get_format(index i32) u32
}

pub fn (r &Mesh) usurface_get_format(index i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshSurfaceGetPrimitiveType {
    mut:
    virt_surface_get_primitive_type(index i32) u32
}

pub fn (r &Mesh) usurface_get_primitive_type(index i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_get_primitive_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshSurfaceSetMaterial {
    mut:
    virt_surface_set_material(index i32, material Material)
}

pub fn (mut r Mesh) usurface_set_material(index i32, material Material) {
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IMeshSurfaceGetMaterial {
    mut:
    virt_surface_get_material(index i32) Material
}

pub fn (r &Mesh) usurface_get_material(index i32) Material {
    mut object_out := Material{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_surface_get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshGetBlendShapeCount {
    mut:
    virt_get_blend_shape_count() i32
}

pub fn (r &Mesh) uget_blend_shape_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_get_blend_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IMeshGetBlendShapeName {
    mut:
    virt_get_blend_shape_name(index i32) StringName
}

pub fn (r &Mesh) uget_blend_shape_name(index i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_get_blend_shape_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMeshSetBlendShapeName {
    mut:
    virt_set_blend_shape_name(index i32, name StringName)
}

pub fn (mut r Mesh) uset_blend_shape_name(index i32, name StringName) {
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_set_blend_shape_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IMeshGetAabb {
    mut:
    virt_get_aabb() AABB
}

pub fn (r &Mesh) uget_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("_get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Mesh) set_lightmap_size_hint(size Vector2i) {
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_lightmap_size_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Mesh) get_lightmap_size_hint() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_lightmap_size_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) get_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) get_faces() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) get_surface_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) surface_get_arrays(surf_idx i32) Array {
    mut object_out := Array{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_get_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) surface_get_blend_shape_arrays(surf_idx i32) Array {
    mut object_out := Array{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_get_blend_shape_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Mesh) surface_set_material(surf_idx i32, material Material) {
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    args[1] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Mesh) surface_get_material(surf_idx i32) Material {
    mut object_out := Material{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) create_placeholder() Resource {
    mut object_out := Resource{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("create_placeholder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) create_trimesh_shape() ConcavePolygonShape3D {
    mut object_out := ConcavePolygonShape3D{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("create_trimesh_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4160111210)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) create_convex_shape(clean bool, simplify bool) ConvexPolygonShape3D {
    mut object_out := ConvexPolygonShape3D{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("create_convex_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2529984628)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&clean)}
    args[1] = unsafe{voidptr(&simplify)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) create_outline(margin f64) Mesh {
    mut object_out := Mesh{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("create_outline")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1208642001)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Mesh) generate_triangle_mesh() TriangleMesh {
    mut object_out := TriangleMesh{}
    classname := StringName.new("Mesh")
    defer { classname.deinit() }
    fnname := StringName.new("generate_triangle_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3476533166)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
