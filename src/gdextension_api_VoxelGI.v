module vgdextension

pub enum VoxelGISubdiv {
    subdiv_64 = 0
    subdiv_128 = 1
    subdiv_256 = 2
    subdiv_512 = 3
    subdiv_max = 4
}

@[noinit]
pub struct VoxelGI {
    VisualInstance3D
}

pub fn (mut r VoxelGI) set_probe_data(data VoxelGIData) {
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_probe_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1637849675)
    mut args := unsafe { [1]voidptr{} }
    args[0] = data.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VoxelGI) get_probe_data() VoxelGIData {
    mut object_out := VoxelGIData{}
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_probe_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1730645405)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGI) set_subdiv(subdiv VoxelGISubdiv) {
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdiv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240898472)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&subdiv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VoxelGI) get_subdiv() VoxelGISubdiv {
    mut object_out := VoxelGISubdiv.subdiv_64
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdiv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4261647950)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGI) set_size(size Vector3) {
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VoxelGI) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGI) set_camera_attributes(camera_attributes CameraAttributes) {
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("set_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
    mut args := unsafe { [1]voidptr{} }
    args[0] = camera_attributes.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VoxelGI) get_camera_attributes() CameraAttributes {
    mut object_out := CameraAttributes{}
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VoxelGI) bake(from_node Node, create_visual_debug bool) {
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("bake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2781551026)
    mut args := unsafe { [2]voidptr{} }
    args[0] = from_node.ptr
    args[1] = unsafe{voidptr(&create_visual_debug)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VoxelGI) debug_bake() {
    classname := StringName.new("VoxelGI")
    defer { classname.deinit() }
    fnname := StringName.new("debug_bake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
