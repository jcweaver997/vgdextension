module vgdextension

pub struct GLTFDocument {
    Resource
}

pub fn (mut r GLTFDocument) append_from_file(path String, state GLTFState, flags u32, base_path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocument")
    defer { classname.deinit() }
    fnname := StringName.new("append_from_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1862991421)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = state.ptr
    args[2] = unsafe{voidptr(&flags)}
    args[3] = unsafe{voidptr(&base_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocument) append_from_buffer(bytes PackedByteArray, base_path String, state GLTFState, flags u32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocument")
    defer { classname.deinit() }
    fnname := StringName.new("append_from_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2818062664)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    args[1] = unsafe{voidptr(&base_path)}
    args[2] = state.ptr
    args[3] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocument) append_from_scene(node Node, state GLTFState, flags u32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocument")
    defer { classname.deinit() }
    fnname := StringName.new("append_from_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 374125375)
    mut args := unsafe { [3]voidptr{} }
    args[0] = node.ptr
    args[1] = state.ptr
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocument) generate_scene(state GLTFState, bake_fps f64, trimming bool, remove_immutable_tracks bool) Node {
    mut object_out := Node{}
    classname := StringName.new("GLTFDocument")
    defer { classname.deinit() }
    fnname := StringName.new("generate_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2770277081)
    mut args := unsafe { [4]voidptr{} }
    args[0] = state.ptr
    args[1] = unsafe{voidptr(&bake_fps)}
    args[2] = unsafe{voidptr(&trimming)}
    args[3] = unsafe{voidptr(&remove_immutable_tracks)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocument) generate_buffer(state GLTFState) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("GLTFDocument")
    defer { classname.deinit() }
    fnname := StringName.new("generate_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 741783455)
    mut args := unsafe { [1]voidptr{} }
    args[0] = state.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFDocument) write_to_filesystem(state GLTFState, path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("GLTFDocument")
    defer { classname.deinit() }
    fnname := StringName.new("write_to_filesystem")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1784551478)
    mut args := unsafe { [2]voidptr{} }
    args[0] = state.ptr
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn GLTFDocument.register_gltf_document_extension(extension GLTFDocumentExtension, first_priority bool) {
    classname := StringName.new("GLTFDocument")
    defer { classname.deinit() }
    fnname := StringName.new("register_gltf_document_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3752678331)
    mut args := unsafe { [2]voidptr{} }
    args[0] = extension.ptr
    args[1] = unsafe{voidptr(&first_priority)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
}
pub fn GLTFDocument.unregister_gltf_document_extension(extension GLTFDocumentExtension) {
    classname := StringName.new("GLTFDocument")
    defer { classname.deinit() }
    fnname := StringName.new("unregister_gltf_document_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2684415758)
    mut args := unsafe { [1]voidptr{} }
    args[0] = extension.ptr
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
}
