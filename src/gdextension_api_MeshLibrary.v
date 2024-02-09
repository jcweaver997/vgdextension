module vgdextension

pub struct MeshLibrary {
    Resource
}

pub fn (mut r MeshLibrary) create_item(id i32) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("create_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MeshLibrary) set_item_name(id i32, name String) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MeshLibrary) set_item_mesh(id i32, mesh Mesh) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969122797)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MeshLibrary) set_item_mesh_transform(id i32, mesh_transform Transform3D) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_mesh_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&mesh_transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MeshLibrary) set_item_navigation_mesh(id i32, navigation_mesh NavigationMesh) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_navigation_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3483353960)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = navigation_mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MeshLibrary) set_item_navigation_mesh_transform(id i32, navigation_mesh Transform3D) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_navigation_mesh_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&navigation_mesh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MeshLibrary) set_item_navigation_layers(id i32, navigation_layers u32) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&navigation_layers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MeshLibrary) set_item_shapes(id i32, shapes Array) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 537221740)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = unsafe{voidptr(&shapes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r MeshLibrary) set_item_preview(id i32, texture Texture2D) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("set_item_preview")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 666127730)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshLibrary) get_item_name(id i32) String {
    mut object_out := String{}
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshLibrary) get_item_mesh(id i32) Mesh {
    mut object_out := Mesh{}
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1576363275)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshLibrary) get_item_mesh_transform(id i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_mesh_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshLibrary) get_item_navigation_mesh(id i32) NavigationMesh {
    mut object_out := NavigationMesh{}
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_navigation_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2729647406)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshLibrary) get_item_navigation_mesh_transform(id i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_navigation_mesh_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshLibrary) get_item_navigation_layers(id i32) u32 {
    mut object_out := u32(0)
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_navigation_layers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshLibrary) get_item_shapes(id i32) Array {
    mut object_out := Array{}
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_shapes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MeshLibrary) get_item_preview(id i32) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_preview")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536238170)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshLibrary) remove_item(id i32) {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("remove_item")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MeshLibrary) find_item_by_name(name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("find_item_by_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshLibrary) clear() {
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &MeshLibrary) get_item_list() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_item_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MeshLibrary) get_last_unused_item_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MeshLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_last_unused_item_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
