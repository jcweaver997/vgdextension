module vgdextension

@[noinit]
pub struct MeshDataTool {
    RefCounted
}

pub fn (r &MeshDataTool) clear() {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) create_from_surface(mesh ArrayMesh, surface i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("create_from_surface")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2727020678)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&mesh.ptr)
    args[1] = unsafe{voidptr(&surface)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &MeshDataTool) commit_to_surface(mesh ArrayMesh, compression_flags u64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("commit_to_surface")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2021686445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&mesh.ptr)
    args[1] = unsafe{voidptr(&compression_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &MeshDataTool) get_format() u64 {
    mut object_out := u64(0)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_vertex_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_edge_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_edge_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_face_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_face_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex(idx i32, vertex Vector3) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex(idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex_normal(idx i32, normal Vector3) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530502735)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&normal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex_normal(idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex_tangent(idx i32, tangent Plane) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex_tangent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1104099133)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&tangent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex_tangent(idx i32) Plane {
    mut object_out := Plane{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_tangent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1372055458)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex_uv(idx i32, uv Vector2) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex_uv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex_uv(idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_uv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex_uv2(idx i32, uv2 Vector2) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex_uv2")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&uv2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex_uv2(idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_uv2")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex_color(idx i32, color Color) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex_color(idx i32) Color {
    mut object_out := Color{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex_bones(idx i32, bones PackedInt32Array) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3500328261)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&bones)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex_bones(idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex_weights(idx i32, weights PackedFloat32Array) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex_weights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1345852415)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&weights)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex_weights(idx i32) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_weights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1542882410)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_vertex_meta(idx i32, meta Variant) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_vertex_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_vertex_meta(idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_vertex_edges(idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_edges")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_vertex_faces(idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_vertex_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_edge_vertex(idx i32, vertex i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_edge_vertex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_edge_faces(idx i32) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_edge_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1706082319)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_edge_meta(idx i32, meta Variant) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_edge_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_edge_meta(idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_edge_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_face_vertex(idx i32, vertex i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_face_vertex")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&vertex)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_face_edge(idx i32, edge i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_face_edge")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3175239445)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&edge)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_face_meta(idx i32, meta Variant) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_face_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2152698145)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&meta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_face_meta(idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_face_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4227898402)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) get_face_normal(idx i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_face_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 711720468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshDataTool) set_material(material Material) {
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&material.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshDataTool) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("MeshDataTool")
    fnname := StringName.new("get_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
