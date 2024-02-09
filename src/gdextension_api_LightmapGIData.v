module vgdextension

pub struct LightmapGIData {
    Resource
}

pub fn (mut r LightmapGIData) set_light_texture(light_texture TextureLayered) {
    classname := StringName.new("LightmapGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_light_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1278366092)
    mut args := unsafe { [1]voidptr{} }
    args[0] = light_texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LightmapGIData) get_light_texture() TextureLayered {
    mut object_out := TextureLayered{}
    classname := StringName.new("LightmapGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_light_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3984243839)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGIData) set_uses_spherical_harmonics(uses_spherical_harmonics bool) {
    classname := StringName.new("LightmapGIData")
    defer { classname.deinit() }
    fnname := StringName.new("set_uses_spherical_harmonics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uses_spherical_harmonics)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LightmapGIData) is_using_spherical_harmonics() bool {
    mut object_out := false
    classname := StringName.new("LightmapGIData")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_spherical_harmonics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGIData) add_user(path NodePath, uv_scale Rect2, slice_index i32, sub_instance i32) {
    classname := StringName.new("LightmapGIData")
    defer { classname.deinit() }
    fnname := StringName.new("add_user")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4272570515)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&uv_scale)}
    args[2] = unsafe{voidptr(&slice_index)}
    args[3] = unsafe{voidptr(&sub_instance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &LightmapGIData) get_user_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("LightmapGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_user_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &LightmapGIData) get_user_path(user_idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("LightmapGIData")
    defer { classname.deinit() }
    fnname := StringName.new("get_user_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&user_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r LightmapGIData) clear_users() {
    classname := StringName.new("LightmapGIData")
    defer { classname.deinit() }
    fnname := StringName.new("clear_users")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
