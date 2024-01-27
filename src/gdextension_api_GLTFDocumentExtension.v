module vgdextension

pub type GLTFDocumentExtension = voidptr

pub fn (mut r GLTFDocumentExtension) uimport_preflight(state GLTFState, extensions PackedStringArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_import_preflight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&extensions)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uget_supported_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_supported_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uparse_node_extensions(state GLTFState, gltf_node GLTFNode, extensions Dictionary) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_node_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&gltf_node)}
    args[2] = unsafe{voidptr(&extensions)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uparse_image_data(state GLTFState, image_data PackedByteArray, mime_type String, ret_image Image) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_image_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&image_data)}
    args[2] = unsafe{voidptr(&mime_type)}
    args[3] = unsafe{voidptr(&ret_image)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uparse_texture_json(state GLTFState, texture_json Dictionary, ret_gltf_texture GLTFTexture) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_texture_json")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&texture_json)}
    args[2] = unsafe{voidptr(&ret_gltf_texture)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) ugenerate_scene_node(state GLTFState, gltf_node GLTFNode, scene_parent Node) Node3D {
    mut object_out := Node3D(unsafe{nil})
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_generate_scene_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&gltf_node)}
    args[2] = unsafe{voidptr(&scene_parent)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uimport_post_parse(state GLTFState) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_import_post_parse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uimport_node(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_import_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&gltf_node)}
    args[2] = unsafe{voidptr(&json)}
    args[3] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uimport_post(state GLTFState, root Node) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_import_post")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&root)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uexport_preflight(state GLTFState, root Node) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_export_preflight")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&root)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uconvert_scene_node(state GLTFState, gltf_node GLTFNode, scene_node Node) {
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_convert_scene_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFDocumentExtension) uexport_node(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_export_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    args[1] = unsafe{voidptr(&gltf_node)}
    args[2] = unsafe{voidptr(&json)}
    args[3] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocumentExtension) uexport_post(state GLTFState) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocumentExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_export_post")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&state)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
