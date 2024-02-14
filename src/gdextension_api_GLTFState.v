module vgdextension

@[noinit]
pub struct GLTFState {
    Resource
}

pub fn (mut r GLTFState) add_used_extension(extension_name String, required bool) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("add_used_extension")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&extension_name)}
    args[1] = unsafe{voidptr(&required)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_json() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_json")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_json(json Dictionary) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_json")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&json)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_major_version() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_major_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_major_version(major_version i32) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_major_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&major_version)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_minor_version() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_minor_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_minor_version(minor_version i32) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_minor_version")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&minor_version)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFState) get_copyright() String {
    mut object_out := String{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_copyright")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_copyright(copyright String) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_copyright")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&copyright)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_glb_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_glb_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_glb_data(glb_data PackedByteArray) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_glb_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&glb_data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_use_named_skin_binds() bool {
    mut object_out := false
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_use_named_skin_binds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_use_named_skin_binds(use_named_skin_binds bool) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_use_named_skin_binds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_named_skin_binds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_nodes() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_nodes(nodes Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&nodes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_buffers() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_buffers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_buffers(buffers Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_buffers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_buffer_views() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_buffer_views")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_buffer_views(buffer_views Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_buffer_views")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer_views)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_accessors() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_accessors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_accessors(accessors Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_accessors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&accessors)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_meshes() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_meshes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_meshes(meshes Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_meshes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&meshes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_animation_players_count(idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_animation_players_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) get_animation_player(idx i32) AnimationPlayer {
    mut object_out := AnimationPlayer{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_animation_player")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 925043400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) get_materials() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_materials")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_materials(materials Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_materials")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&materials)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_scene_name() String {
    mut object_out := String{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_scene_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_scene_name(scene_name String) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_scene_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scene_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_base_path() String {
    mut object_out := String{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_base_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_base_path(base_path String) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_base_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GLTFState) get_filename() String {
    mut object_out := String{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_filename")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_filename(filename String) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_filename")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filename)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_root_nodes() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_root_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_root_nodes(root_nodes PackedInt32Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_root_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&root_nodes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_textures() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_textures")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_textures(textures Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_textures")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&textures)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_texture_samplers() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_texture_samplers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_texture_samplers(texture_samplers Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_texture_samplers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_samplers)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_images() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_images")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_images(images Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_images")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&images)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_skins() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_skins")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_skins(skins Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_skins")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skins)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_cameras() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_cameras")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_cameras(cameras Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_cameras")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&cameras)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_lights() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_lights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_lights(lights Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_lights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&lights)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_unique_names() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_unique_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_unique_names(unique_names Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_unique_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unique_names)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_unique_animation_names() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_unique_animation_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_unique_animation_names(unique_animation_names Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_unique_animation_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unique_animation_names)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_skeletons() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_skeletons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_skeletons(skeletons Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_skeletons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeletons)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_create_animations() bool {
    mut object_out := false
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_create_animations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_create_animations(create_animations bool) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_create_animations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&create_animations)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_animations() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_animations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_animations(animations Array) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_animations")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&animations)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_scene_node(idx i32) Node {
    mut object_out := Node{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_scene_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4253421667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) get_node_index(scene_node Node) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_node_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1205807060)
    mut args := unsafe { [1]voidptr{} }
    args[0] = scene_node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) get_additional_data(extension_name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_additional_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&extension_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_additional_data(extension_name StringName, additional_data Variant) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_additional_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&extension_name)}
    args[1] = unsafe{voidptr(&additional_data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GLTFState) get_handle_binary_image() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    fnname := StringName.new("get_handle_binary_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GLTFState) set_handle_binary_image(method i32) {
    classname := StringName.new("GLTFState")
    fnname := StringName.new("set_handle_binary_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&method)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
