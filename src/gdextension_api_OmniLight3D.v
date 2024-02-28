module vgdextension

pub enum OmniLight3DShadowMode as i64 {
    shadow_dual_paraboloid = 0
    shadow_cube = 1
}

@[noinit]
pub struct OmniLight3D {
    Light3D
}

pub fn (r &OmniLight3D) set_shadow_mode(mode OmniLight3DShadowMode) {
    classname := StringName.new("OmniLight3D")
    fnname := StringName.new("set_shadow_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121862228)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OmniLight3D) get_shadow_mode() OmniLight3DShadowMode {
    mut object_out := i64(OmniLight3DShadowMode.shadow_dual_paraboloid)
    classname := StringName.new("OmniLight3D")
    fnname := StringName.new("get_shadow_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4181586331)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{OmniLight3DShadowMode(object_out)}
}
