module vgdextension

@[noinit]
pub struct ArrayMesh {
    Mesh
}

pub fn (mut r ArrayMesh) add_blend_shape(name StringName) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("add_blend_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ArrayMesh) get_blend_shape_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_shape_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ArrayMesh) get_blend_shape_name(index i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_shape_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ArrayMesh) set_blend_shape_name(index i32, name StringName) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_shape_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ArrayMesh) clear_blend_shapes() {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("clear_blend_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ArrayMesh) set_blend_shape_mode(mode MeshBlendShapeMode) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_shape_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 227983991)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ArrayMesh) get_blend_shape_mode() MeshBlendShapeMode {
    mut object_out := MeshBlendShapeMode.blend_shape_mode_normalized
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_shape_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 836485024)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ArrayMesh) add_surface_from_arrays(primitive MeshPrimitiveType, arrays Array, blend_shapes Array, lods Dictionary, flags MeshArrayFormat) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("add_surface_from_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 172284304)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&primitive)}
    args[1] = unsafe{voidptr(&arrays)}
    args[2] = unsafe{voidptr(&blend_shapes)}
    args[3] = unsafe{voidptr(&lods)}
    args[4] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ArrayMesh) clear_surfaces() {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("clear_surfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ArrayMesh) surface_update_vertex_region(surf_idx i32, offset i32, data PackedByteArray) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_update_vertex_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837166854)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ArrayMesh) surface_update_attribute_region(surf_idx i32, offset i32, data PackedByteArray) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_update_attribute_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837166854)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ArrayMesh) surface_update_skin_region(surf_idx i32, offset i32, data PackedByteArray) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_update_skin_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837166854)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ArrayMesh) surface_get_array_len(surf_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_get_array_len")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ArrayMesh) surface_get_array_index_len(surf_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_get_array_index_len")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ArrayMesh) surface_get_format(surf_idx i32) MeshArrayFormat {
    mut object_out := MeshArrayFormat.array_format_vertex
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3718287884)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ArrayMesh) surface_get_primitive_type(surf_idx i32) MeshPrimitiveType {
    mut object_out := MeshPrimitiveType.primitive_points
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_get_primitive_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4141943888)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ArrayMesh) surface_find_by_name(name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_find_by_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ArrayMesh) surface_set_name(surf_idx i32, name String) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_set_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ArrayMesh) surface_get_name(surf_idx i32) String {
    mut object_out := String{}
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("surface_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&surf_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ArrayMesh) regen_normal_maps() {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("regen_normal_maps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ArrayMesh) lightmap_unwrap(transform Transform3D, texel_size f64) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("lightmap_unwrap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1476641071)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    args[1] = unsafe{voidptr(&texel_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ArrayMesh) set_custom_aabb(aabb AABB) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ArrayMesh) get_custom_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ArrayMesh) set_shadow_mesh(mesh ArrayMesh) {
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3377897901)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ArrayMesh) get_shadow_mesh() ArrayMesh {
    mut object_out := ArrayMesh{}
    classname := StringName.new("ArrayMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3206942465)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
