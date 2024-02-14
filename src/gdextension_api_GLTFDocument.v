module vgdextension

pub enum GLTFDocumentRootNodeMode as i64 {
    root_node_mode_single_root = 0
    root_node_mode_keep_root = 1
    root_node_mode_multi_root = 2
}

@[noinit]
pub struct GLTFDocument {
    Resource
}

pub fn (mut r GLTFDocument) append_from_file(path String, state GLTFState, flags u32, base_path String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("append_from_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 866380864)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = state.ptr
    args[2] = unsafe{voidptr(&flags)}
    args[3] = unsafe{voidptr(&base_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r GLTFDocument) append_from_buffer(bytes PackedByteArray, base_path String, state GLTFState, flags u32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("append_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1616081266)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    args[1] = unsafe{voidptr(&base_path)}
    args[2] = state.ptr
    args[3] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r GLTFDocument) append_from_scene(node Node, state GLTFState, flags u32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("append_from_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1622574258)
    mut args := unsafe { [3]voidptr{} }
    args[0] = node.ptr
    args[1] = state.ptr
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r GLTFDocument) generate_scene(state GLTFState, bake_fps f64, trimming bool, remove_immutable_tracks bool) Node {
    mut object_out := Node{}
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("generate_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 596118388)
    mut args := unsafe { [4]voidptr{} }
    args[0] = state.ptr
    args[1] = unsafe{voidptr(&bake_fps)}
    args[2] = unsafe{voidptr(&trimming)}
    args[3] = unsafe{voidptr(&remove_immutable_tracks)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFDocument) generate_buffer(state GLTFState) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("generate_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 741783455)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFDocument) write_to_filesystem(state GLTFState, path String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("write_to_filesystem")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784551478)
    mut args := unsafe { [2]voidptr{} }
    args[0] = state.ptr
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r GLTFDocument) set_image_format(image_format String) {
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("set_image_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&image_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFDocument) get_image_format() String {
    mut object_out := String{}
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("get_image_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFDocument) set_lossy_quality(lossy_quality f64) {
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("set_lossy_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lossy_quality)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFDocument) get_lossy_quality() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("get_lossy_quality")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFDocument) set_root_node_mode(root_node_mode GLTFDocumentRootNodeMode) {
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("set_root_node_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 463633402)
    mut args := unsafe { [1]voidptr{} }
    i64_root_node_mode := i64(root_node_mode)
    args[0] = unsafe{voidptr(&i64_root_node_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFDocument) get_root_node_mode() GLTFDocumentRootNodeMode {
    mut object_out := i64(GLTFDocumentRootNodeMode.root_node_mode_single_root)
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("get_root_node_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 948057992)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GLTFDocumentRootNodeMode(object_out)}
}
pub fn GLTFDocument.register_gltf_document_extension(extension GLTFDocumentExtension, first_priority bool) {
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("register_gltf_document_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3752678331)
    mut args := unsafe { [2]voidptr{} }
    args[0] = extension.ptr
    args[1] = unsafe{voidptr(&first_priority)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn GLTFDocument.unregister_gltf_document_extension(extension GLTFDocumentExtension) {
    classname := StringName.new("GLTFDocument")
    fnname := StringName.new("unregister_gltf_document_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684415758)
    mut args := unsafe { [1]voidptr{} }
    args[0] = extension.ptr
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
