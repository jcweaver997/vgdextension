module vgdextension

pub enum DirectionalLight3DShadowMode {
    shadow_orthogonal = 0
    shadow_parallel_2_splits = 1
    shadow_parallel_4_splits = 2
}

pub enum DirectionalLight3DSkyMode {
    sky_mode_light_and_sky = 0
    sky_mode_light_only = 1
    sky_mode_sky_only = 2
}

@[noinit]
pub struct DirectionalLight3D {
    Light3D
}

pub fn (mut r DirectionalLight3D) set_shadow_mode(mode DirectionalLight3DShadowMode) {
    classname := StringName.new("DirectionalLight3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1261211726)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DirectionalLight3D) get_shadow_mode() DirectionalLight3DShadowMode {
    mut object_out := DirectionalLight3DShadowMode.shadow_orthogonal
    classname := StringName.new("DirectionalLight3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2765228544)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DirectionalLight3D) set_blend_splits(enabled bool) {
    classname := StringName.new("DirectionalLight3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_splits")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DirectionalLight3D) is_blend_splits_enabled() bool {
    mut object_out := false
    classname := StringName.new("DirectionalLight3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_blend_splits_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DirectionalLight3D) set_sky_mode(mode DirectionalLight3DSkyMode) {
    classname := StringName.new("DirectionalLight3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2691194817)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &DirectionalLight3D) get_sky_mode() DirectionalLight3DSkyMode {
    mut object_out := DirectionalLight3DSkyMode.sky_mode_light_and_sky
    classname := StringName.new("DirectionalLight3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3819982774)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
