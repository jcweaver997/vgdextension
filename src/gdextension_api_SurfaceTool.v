module vgdextension

pub enum SurfaceToolCustomFormat {
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

pub enum SurfaceToolSkinWeightCount {
    skin_4_weights = 0
    skin_8_weights = 1
}

pub type SurfaceTool = voidptr

pub fn (mut r SurfaceTool) set_skin_weight_count(count SurfaceToolSkinWeightCount) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_skin_weight_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 618679515)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SurfaceTool) get_skin_weight_count() SurfaceToolSkinWeightCount {
    mut object_out := SurfaceToolSkinWeightCount.skin_4_weights
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("get_skin_weight_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1072401130)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SurfaceTool) set_custom_format(channel_index i32, format SurfaceToolCustomFormat) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4087759856)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SurfaceTool) get_custom_format(channel_index i32) SurfaceToolCustomFormat {
    mut object_out := SurfaceToolCustomFormat.custom_rgba8_unorm
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 839863283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&channel_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SurfaceTool) begin(primitive MeshPrimitiveType) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230304113)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) add_vertex(vertex Vector3) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("add_vertex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_color(color Color) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_normal(normal Vector3) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_tangent(tangent Plane) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_tangent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3505987427)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_uv(uv Vector2) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_uv2(uv2 Vector2) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_bones(bones PackedInt32Array) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_bones")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_weights(weights PackedFloat32Array) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_weights")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_custom(channel_index i32, custom_color Color) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) set_smooth_group(index i32) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_smooth_group")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) add_triangle_fan(vertices PackedVector3Array, uvs PackedVector2Array, colors PackedColorArray, uv2s PackedVector2Array, normals PackedVector3Array, tangents Array) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("add_triangle_fan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 297960074)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) add_index(index i32) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("add_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) index() {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) deindex() {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("deindex")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) generate_normals(flip bool) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("generate_normals")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) generate_tangents() {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("generate_tangents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) optimize_indices_for_cache() {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("optimize_indices_for_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SurfaceTool) get_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SurfaceTool) generate_lod(nd_threshold f32, target_index_count i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("generate_lod")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1894448909)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&nd_threshold)}
    args[1] = unsafe{voidptr(&target_index_count)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SurfaceTool) set_material(material Material) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SurfaceTool) get_primitive_type() MeshPrimitiveType {
    mut object_out := MeshPrimitiveType.primitive_points
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("get_primitive_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 768822145)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SurfaceTool) clear() {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) create_from(existing Mesh, surface i32) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("create_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1767024570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) create_from_blend_shape(existing Mesh, surface i32, blend_shape String) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("create_from_blend_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1306185582)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) append_from(existing Mesh, surface i32, transform Transform3D) {
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("append_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2217967155)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SurfaceTool) commit(existing ArrayMesh, flags i32) ArrayMesh {
    mut object_out := ArrayMesh(unsafe{nil})
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("commit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4107864055)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&existing)}
    args[1] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SurfaceTool) commit_to_arrays() Array {
    mut object_out := Array{}
    classname := StringName.new("SurfaceTool")
    defer { classname.deinit() }
    fnname := StringName.new("commit_to_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
