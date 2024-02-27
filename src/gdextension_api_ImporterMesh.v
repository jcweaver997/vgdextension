module vgdextension

@[noinit]
pub struct ImporterMesh {
    Resource
}

pub fn (mut r ImporterMesh) add_blend_shape(name string) {
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("add_blend_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMesh) get_blend_shape_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_blend_shape_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ImporterMesh) get_blend_shape_name(blend_shape_idx i32) string {
    mut object_out := String{}
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_blend_shape_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&blend_shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r ImporterMesh) set_blend_shape_mode(mode MeshBlendShapeMode) {
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("set_blend_shape_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 227983991)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMesh) get_blend_shape_mode() MeshBlendShapeMode {
    mut object_out := i64(MeshBlendShapeMode.blend_shape_mode_normalized)
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_blend_shape_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 836485024)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MeshBlendShapeMode(object_out)}
}
pub fn (mut r ImporterMesh) add_surface(primitive MeshPrimitiveType, arrays Array, blend_shapes Array, lods Dictionary, material Material, name string, flags u64) {
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("add_surface")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740448849)
    mut args := unsafe { [7]voidptr{} }
    i64_primitive := i64(primitive)
    args[0] = unsafe{voidptr(&i64_primitive)}
    args[1] = unsafe{voidptr(&arrays)}
    args[2] = unsafe{voidptr(&blend_shapes)}
    args[3] = unsafe{voidptr(&lods)}
    args[4] = material.ptr
    arg_sn5 := String.new(name)
    args[5] = unsafe{voidptr(&arg_sn5)}
    args[6] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn5.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMesh) get_surface_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMesh) get_surface_primitive_type(surface_idx i32) MeshPrimitiveType {
    mut object_out := i64(MeshPrimitiveType.primitive_points)
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_primitive_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3552571330)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MeshPrimitiveType(object_out)}
}
pub fn (r &ImporterMesh) get_surface_name(surface_idx i32) string {
    mut object_out := String{}
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &ImporterMesh) get_surface_arrays(surface_idx i32) Array {
    mut object_out := Array{}
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_arrays")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ImporterMesh) get_surface_blend_shape_arrays(surface_idx i32, blend_shape_idx i32) Array {
    mut object_out := Array{}
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_blend_shape_arrays")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2345056839)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = unsafe{voidptr(&blend_shape_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ImporterMesh) get_surface_lod_count(surface_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_lod_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ImporterMesh) get_surface_lod_size(surface_idx i32, lod_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_lod_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = unsafe{voidptr(&lod_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ImporterMesh) get_surface_lod_indices(surface_idx i32, lod_idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_lod_indices")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1265128013)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = unsafe{voidptr(&lod_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ImporterMesh) get_surface_material(surface_idx i32) Material {
    mut object_out := Material{}
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2897466400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ImporterMesh) get_surface_format(surface_idx i32) u64 {
    mut object_out := u64(0)
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_surface_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMesh) set_surface_name(surface_idx i32, name string) {
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("set_surface_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    arg_sn1 := String.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImporterMesh) set_surface_material(surface_idx i32, material Material) {
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("set_surface_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3671737478)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surface_idx)}
    args[1] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImporterMesh) generate_lods(normal_merge_angle f64, normal_split_angle f64, bone_transform_array Array) {
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("generate_lods")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2491878677)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&normal_merge_angle)}
    args[1] = unsafe{voidptr(&normal_split_angle)}
    args[2] = unsafe{voidptr(&bone_transform_array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImporterMesh) get_mesh(base_mesh ArrayMesh) ArrayMesh {
    mut object_out := ArrayMesh{}
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1457573577)
    mut args := unsafe { [1]voidptr{} }
    args[0] = base_mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ImporterMesh) clear() {
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImporterMesh) set_lightmap_size_hint(size Vector2i) {
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("set_lightmap_size_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ImporterMesh) get_lightmap_size_hint() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("ImporterMesh")
    fnname := StringName.new("get_lightmap_size_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
