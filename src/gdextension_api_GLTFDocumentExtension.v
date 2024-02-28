module vgdextension

@[noinit]
pub struct GLTFDocumentExtension {
    Resource
}

pub interface IGLTFDocumentExtensionImportPreflight {
    mut:
    virt_import_preflight(state GLTFState, extensions PackedStringArray) GDError
}

pub fn (r &GLTFDocumentExtension) uimport_preflight(state GLTFState, extensions PackedStringArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_import_preflight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = state.ptr
    args[1] = unsafe{voidptr(&extensions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionGetSupportedExtensions {
    mut:
    virt_get_supported_extensions() PackedStringArray
}

pub fn (r &GLTFDocumentExtension) uget_supported_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_get_supported_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IGLTFDocumentExtensionParseNodeExtensions {
    mut:
    virt_parse_node_extensions(state GLTFState, gltf_node GLTFNode, extensions Dictionary) GDError
}

pub fn (r &GLTFDocumentExtension) uparse_node_extensions(state GLTFState, gltf_node GLTFNode, extensions Dictionary) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_parse_node_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = state.ptr
    args[1] = gltf_node.ptr
    args[2] = unsafe{voidptr(&extensions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionParseImageData {
    mut:
    virt_parse_image_data(state GLTFState, image_data PackedByteArray, mime_type String, ret_image Image) GDError
}

pub fn (r &GLTFDocumentExtension) uparse_image_data(state GLTFState, image_data PackedByteArray, mime_type string, ret_image Image) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_parse_image_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = state.ptr
    args[1] = unsafe{voidptr(&image_data)}
    arg_sn2 := String.new(mime_type)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = ret_image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionGetImageFileExtension {
    mut:
    virt_get_image_file_extension() String
}

pub fn (r &GLTFDocumentExtension) uget_image_file_extension() string {
    mut object_out := String{}
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_get_image_file_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IGLTFDocumentExtensionParseTextureJson {
    mut:
    virt_parse_texture_json(state GLTFState, texture_json Dictionary, ret_gltf_texture GLTFTexture) GDError
}

pub fn (r &GLTFDocumentExtension) uparse_texture_json(state GLTFState, texture_json Dictionary, ret_gltf_texture GLTFTexture) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_parse_texture_json")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = state.ptr
    args[1] = unsafe{voidptr(&texture_json)}
    args[2] = ret_gltf_texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionGenerateSceneNode {
    mut:
    virt_generate_scene_node(state GLTFState, gltf_node GLTFNode, scene_parent Node) Node3D
}

pub fn (r &GLTFDocumentExtension) ugenerate_scene_node(state GLTFState, gltf_node GLTFNode, scene_parent Node) Node3D {
    mut object_out := Node3D{}
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_generate_scene_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = state.ptr
    args[1] = gltf_node.ptr
    args[2] = scene_parent.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IGLTFDocumentExtensionImportPostParse {
    mut:
    virt_import_post_parse(state GLTFState) GDError
}

pub fn (r &GLTFDocumentExtension) uimport_post_parse(state GLTFState) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_import_post_parse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionImportNode {
    mut:
    virt_import_node(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError
}

pub fn (r &GLTFDocumentExtension) uimport_node(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_import_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = state.ptr
    args[1] = gltf_node.ptr
    args[2] = unsafe{voidptr(&json)}
    args[3] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionImportPost {
    mut:
    virt_import_post(state GLTFState, root Node) GDError
}

pub fn (r &GLTFDocumentExtension) uimport_post(state GLTFState, root Node) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_import_post")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = state.ptr
    args[1] = root.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionExportPreflight {
    mut:
    virt_export_preflight(state GLTFState, root Node) GDError
}

pub fn (r &GLTFDocumentExtension) uexport_preflight(state GLTFState, root Node) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_export_preflight")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = state.ptr
    args[1] = root.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionConvertSceneNode {
    mut:
    virt_convert_scene_node(state GLTFState, gltf_node GLTFNode, scene_node Node)
}

pub fn (r &GLTFDocumentExtension) uconvert_scene_node(state GLTFState, gltf_node GLTFNode, scene_node Node) {
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_convert_scene_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = state.ptr
    args[1] = gltf_node.ptr
    args[2] = scene_node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IGLTFDocumentExtensionExportPreserialize {
    mut:
    virt_export_preserialize(state GLTFState) GDError
}

pub fn (r &GLTFDocumentExtension) uexport_preserialize(state GLTFState) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_export_preserialize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionGetSaveableImageFormats {
    mut:
    virt_get_saveable_image_formats() PackedStringArray
}

pub fn (r &GLTFDocumentExtension) uget_saveable_image_formats() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_get_saveable_image_formats")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IGLTFDocumentExtensionSerializeImageToBytes {
    mut:
    virt_serialize_image_to_bytes(state GLTFState, image Image, image_dict Dictionary, image_format String, lossy_quality f64) PackedByteArray
}

pub fn (r &GLTFDocumentExtension) userialize_image_to_bytes(state GLTFState, image Image, image_dict Dictionary, image_format string, lossy_quality f64) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_serialize_image_to_bytes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = state.ptr
    args[1] = image.ptr
    args[2] = unsafe{voidptr(&image_dict)}
    arg_sn3 := String.new(image_format)
    args[3] = unsafe{voidptr(&arg_sn3)}
    args[4] = unsafe{voidptr(&lossy_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IGLTFDocumentExtensionSaveImageAtPath {
    mut:
    virt_save_image_at_path(state GLTFState, image Image, file_path String, image_format String, lossy_quality f64) GDError
}

pub fn (r &GLTFDocumentExtension) usave_image_at_path(state GLTFState, image Image, file_path string, image_format string, lossy_quality f64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_save_image_at_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = state.ptr
    args[1] = image.ptr
    arg_sn2 := String.new(file_path)
    args[2] = unsafe{voidptr(&arg_sn2)}
    arg_sn3 := String.new(image_format)
    args[3] = unsafe{voidptr(&arg_sn3)}
    args[4] = unsafe{voidptr(&lossy_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn2.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionSerializeTextureJson {
    mut:
    virt_serialize_texture_json(state GLTFState, texture_json Dictionary, gltf_texture GLTFTexture, image_format String) GDError
}

pub fn (r &GLTFDocumentExtension) userialize_texture_json(state GLTFState, texture_json Dictionary, gltf_texture GLTFTexture, image_format string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_serialize_texture_json")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = state.ptr
    args[1] = unsafe{voidptr(&texture_json)}
    args[2] = gltf_texture.ptr
    arg_sn3 := String.new(image_format)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionExportNode {
    mut:
    virt_export_node(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError
}

pub fn (r &GLTFDocumentExtension) uexport_node(state GLTFState, gltf_node GLTFNode, json Dictionary, node Node) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_export_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = state.ptr
    args[1] = gltf_node.ptr
    args[2] = unsafe{voidptr(&json)}
    args[3] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IGLTFDocumentExtensionExportPost {
    mut:
    virt_export_post(state GLTFState) GDError
}

pub fn (r &GLTFDocumentExtension) uexport_post(state GLTFState) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocumentExtension")
    fnname := StringName.new("_export_post")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
