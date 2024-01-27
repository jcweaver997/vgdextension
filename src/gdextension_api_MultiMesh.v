module vgdextension

pub enum MultiMeshTransformFormat {
    transform_2d = 0
    transform_3d = 1
}

pub type MultiMesh = voidptr

pub fn (mut r MultiMesh) set_mesh(mesh Mesh) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) get_mesh() Mesh {
    mut object_out := Mesh(unsafe{nil})
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_use_colors(enable bool) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) is_using_colors() bool {
    mut object_out := false
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_use_custom_data(enable bool) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_custom_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) is_using_custom_data() bool {
    mut object_out := false
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_custom_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_transform_format(format MultiMeshTransformFormat) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2404750322)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) get_transform_format() MultiMeshTransformFormat {
    mut object_out := MultiMeshTransformFormat.transform_2d
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2444156481)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_instance_count(count i32) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_instance_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) get_instance_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_visible_instance_count(count i32) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_visible_instance_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) get_visible_instance_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_visible_instance_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_instance_transform(instance i32, transform Transform3D) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_instance_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiMesh) set_instance_transform_2d(instance i32, transform Transform2D) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_instance_transform_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 30160968)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) get_instance_transform(instance i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MultiMesh) get_instance_transform_2d(instance i32) Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_transform_2d")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3836996910)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_instance_color(instance i32, color Color) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_instance_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) get_instance_color(instance i32) Color {
    mut object_out := Color{}
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_instance_custom_data(instance i32, custom_data Color) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_instance_custom_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878471219)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MultiMesh) get_instance_custom_data(instance i32) Color {
    mut object_out := Color{}
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_custom_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3457211756)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MultiMesh) get_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiMesh) get_buffer() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiMesh) set_buffer(buffer PackedFloat32Array) {
    classname := StringName.new("MultiMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
