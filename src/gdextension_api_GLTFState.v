pub type GLTFState = voidptr

pub fn (mut r GLTFState) add_used_extension(extension_name String, required bool) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("add_used_extension")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_json() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_json")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_json(json Dictionary) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_json")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_major_version() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_major_version")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_major_version(major_version i32) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_major_version")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_minor_version() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_minor_version")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_minor_version(minor_version i32) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_minor_version")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_glb_data() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_glb_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_glb_data(glb_data PackedByteArray) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_glb_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_use_named_skin_binds() bool {
    mut object_out := false
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_named_skin_binds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_use_named_skin_binds(use_named_skin_binds bool) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_named_skin_binds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_nodes() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_nodes(nodes Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_buffers() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_buffers(buffers Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_buffer_views() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffer_views")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_buffer_views(buffer_views Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffer_views")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_accessors() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_accessors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_accessors(accessors Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_accessors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_meshes() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_meshes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_meshes(meshes Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_meshes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_animation_players_count(idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_players_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3744713108)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) get_animation_player(idx i32) AnimationPlayer {
    mut object_out := AnimationPlayer(unsafe{nil})
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_player")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 925043400)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) get_materials() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_materials")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_materials(materials Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_materials")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_scene_name() String {
    mut object_out := String{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_scene_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_scene_name(scene_name String) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_scene_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_base_path() String {
    mut object_out := String{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_base_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_base_path(base_path String) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_base_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_root_nodes() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_root_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 969006518)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_root_nodes(root_nodes PackedInt32Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_root_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_textures() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_textures")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_textures(textures Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_textures")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_texture_samplers() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_samplers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_texture_samplers(texture_samplers Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_samplers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_images() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_images")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_images(images Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_images")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_skins() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_skins")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_skins(skins Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_skins")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_cameras() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_cameras")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_cameras(cameras Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_cameras")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_lights() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_lights")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_lights(lights Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_lights")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_unique_names() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_unique_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_unique_names(unique_names Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_unique_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_unique_animation_names() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_unique_animation_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_unique_animation_names(unique_animation_names Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_unique_animation_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_skeletons() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeletons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_skeletons(skeletons Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_skeletons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_create_animations() bool {
    mut object_out := false
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_create_animations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_create_animations(create_animations bool) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_create_animations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_animations() Array {
    mut object_out := Array{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_animations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_animations(animations Array) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_animations")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_scene_node(idx i32) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_scene_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4253421667)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) get_node_index(scene_node Node) i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1205807060)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scene_node)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) get_additional_data(extension_name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_additional_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&extension_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_additional_data(extension_name StringName, additional_data Variant) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_additional_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFState) get_handle_binary_image() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("get_handle_binary_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFState) set_handle_binary_image(method i32) {
    classname := StringName.new("GLTFState")
    defer { classname.deinit() }
    fnname := StringName.new("set_handle_binary_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
