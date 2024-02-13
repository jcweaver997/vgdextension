module vgdextension

@[noinit]
pub struct ImporterMesh {
    Resource
}

pub fn (mut r ImporterMesh) add_blend_shape(name String) {
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("add_blend_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ImporterMesh) get_blend_shape_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_blend_shape_name(blend_shape_idx i32) String {
    mut object_out := String{}
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_shape_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&blend_shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ImporterMesh) set_blend_shape_mode(mode MeshBlendShapeMode) {
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_shape_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 227983991)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ImporterMesh) get_blend_shape_mode() MeshBlendShapeMode {
    mut object_out := MeshBlendShapeMode.blend_shape_mode_normalized
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_shape_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 836485024)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ImporterMesh) add_surface(primitive MeshPrimitiveType, arrays Array, blend_shapes Array, lods Dictionary, material Material, name String, flags u32) {
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("add_surface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4122361985)
    mut args := unsafe { [7]voidptr{} }
    args[0] = unsafe{voidptr(&primitive)}
    args[1] = unsafe{voidptr(&arrays)}
    args[2] = unsafe{voidptr(&blend_shapes)}
    args[3] = unsafe{voidptr(&lods)}
    args[4] = material.ptr
    args[5] = unsafe{voidptr(&name)}
    args[6] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ImporterMesh) get_surface_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ImporterMesh) get_surface_primitive_type(surface_idx i32) MeshPrimitiveType {
    mut object_out := MeshPrimitiveType.primitive_points
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_primitive_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3552571330)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_surface_name(surface_idx i32) String {
    mut object_out := String{}
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_surface_arrays(surface_idx i32) Array {
    mut object_out := Array{}
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_surface_blend_shape_arrays(surface_idx i32, blend_shape_idx i32) Array {
    mut object_out := Array{}
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_blend_shape_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2345056839)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = unsafe{voidptr(&blend_shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_surface_lod_count(surface_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_lod_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_surface_lod_size(surface_idx i32, lod_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_lod_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = unsafe{voidptr(&lod_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_surface_lod_indices(surface_idx i32, lod_idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_lod_indices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265128013)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = unsafe{voidptr(&lod_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_surface_material(surface_idx i32) Material {
    mut object_out := Material{}
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImporterMesh) get_surface_format(surface_idx i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_surface_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ImporterMesh) set_surface_name(surface_idx i32, name String) {
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_surface_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImporterMesh) set_surface_material(surface_idx i32, material Material) {
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_surface_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImporterMesh) generate_lods(normal_merge_angle f64, normal_split_angle f64, bone_transform_array Array) {
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("generate_lods")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2491878677)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&normal_merge_angle)}
    args[1] = unsafe{voidptr(&normal_split_angle)}
    args[2] = unsafe{voidptr(&bone_transform_array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImporterMesh) get_mesh(base_mesh ArrayMesh) ArrayMesh {
    mut object_out := ArrayMesh{}
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1457573577)
    mut args := unsafe { [1]voidptr{} }
    args[0] = base_mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ImporterMesh) clear() {
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImporterMesh) set_lightmap_size_hint(size Vector2i) {
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_lightmap_size_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ImporterMesh) get_lightmap_size_hint() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("ImporterMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_lightmap_size_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
