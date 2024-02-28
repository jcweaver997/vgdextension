module vgdextension

pub enum SurfaceToolCustomFormat as i64 {
    custom_rgba8_unorm = 0
    custom_rgba8_snorm = 1
    custom_rg_half = 2
    custom_rgba_half = 3
    custom_r_float = 4
    custom_rg_float = 5
    custom_rgb_float = 6
    custom_rgba_float = 7
    custom_max = 8
}

pub enum SurfaceToolSkinWeightCount as i64 {
    skin_4_weights = 0
    skin_8_weights = 1
}

@[noinit]
pub struct SurfaceTool {
    RefCounted
}

pub fn (r &SurfaceTool) set_skin_weight_count(count SurfaceToolSkinWeightCount) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_skin_weight_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 618679515)
    mut args := unsafe { [1]voidptr{} }
    i64_count := i64(count)
    args[0] = unsafe{voidptr(&i64_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) get_skin_weight_count() SurfaceToolSkinWeightCount {
    mut object_out := i64(SurfaceToolSkinWeightCount.skin_4_weights)
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("get_skin_weight_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1072401130)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{SurfaceToolSkinWeightCount(object_out)}
}
pub fn (r &SurfaceTool) set_custom_format(channel_index i32, format SurfaceToolCustomFormat) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_custom_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4087759856)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&channel_index)}
    i64_format := i64(format)
    args[1] = unsafe{voidptr(&i64_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) get_custom_format(channel_index i32) SurfaceToolCustomFormat {
    mut object_out := i64(SurfaceToolCustomFormat.custom_rgba8_unorm)
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("get_custom_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 839863283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&channel_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{SurfaceToolCustomFormat(object_out)}
}
pub fn (r &SurfaceTool) begin(primitive MeshPrimitiveType) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230304113)
    mut args := unsafe { [1]voidptr{} }
    i64_primitive := i64(primitive)
    args[0] = unsafe{voidptr(&i64_primitive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) add_vertex(vertex Vector3) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("add_vertex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_color(color Color) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_normal(normal Vector3) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_tangent(tangent Plane) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_tangent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&tangent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_uv(uv Vector2) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_uv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_uv2(uv2 Vector2) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_uv2")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uv2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_bones(bones PackedInt32Array) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bones)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_weights(weights PackedFloat32Array) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_weights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&weights)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_custom(channel_index i32, custom_color Color) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_custom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&channel_index)}
    args[1] = unsafe{voidptr(&custom_color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) set_smooth_group(index u32) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_smooth_group")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) add_triangle_fan(vertices PackedVector3Array, uvs PackedVector2Array, colors PackedColorArray, uv2s PackedVector2Array, normals PackedVector3Array, tangents Array) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("add_triangle_fan")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2235017613)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&vertices)}
    args[1] = unsafe{voidptr(&uvs)}
    args[2] = unsafe{voidptr(&colors)}
    args[3] = unsafe{voidptr(&uv2s)}
    args[4] = unsafe{voidptr(&normals)}
    args[5] = unsafe{voidptr(&tangents)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) add_index(index i32) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("add_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) index() {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) deindex() {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("deindex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) generate_normals(flip bool) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("generate_normals")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flip)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) generate_tangents() {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("generate_tangents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) optimize_indices_for_cache() {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("optimize_indices_for_cache")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) get_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("get_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SurfaceTool) generate_lod(nd_threshold f64, target_index_count i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("generate_lod")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1938056459)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&nd_threshold)}
    args[1] = unsafe{voidptr(&target_index_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SurfaceTool) set_material(material Material) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&material.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) get_primitive_type() MeshPrimitiveType {
    mut object_out := i64(MeshPrimitiveType.primitive_points)
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("get_primitive_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 768822145)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MeshPrimitiveType(object_out)}
}
pub fn (r &SurfaceTool) clear() {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) create_from(existing Mesh, surface i32) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("create_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1767024570)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&existing.ptr)
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) create_from_blend_shape(existing Mesh, surface i32, blend_shape string) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("create_from_blend_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1306185582)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&existing.ptr)
    args[1] = unsafe{voidptr(&surface)}
    arg_sn2 := String.new(blend_shape)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) append_from(existing Mesh, surface i32, transform Transform3D) {
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("append_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2217967155)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&existing.ptr)
    args[1] = unsafe{voidptr(&surface)}
    args[2] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SurfaceTool) commit(existing ArrayMesh, flags u64) ArrayMesh {
    mut object_out := ArrayMesh{}
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("commit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4107864055)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&existing.ptr)
    args[1] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SurfaceTool) commit_to_arrays() Array {
    mut object_out := Array{}
    classname := StringName.new("SurfaceTool")
    fnname := StringName.new("commit_to_arrays")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
