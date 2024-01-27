pub enum OmniLight3DShadowMode {
    shadow_dual_paraboloid = 0
    shadow_cube = 1
}

pub type OmniLight3D = voidptr

pub fn (mut r OmniLight3D) set_shadow_mode(mode OmniLight3DShadowMode) {
    classname := StringName.new("OmniLight3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shadow_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121862228)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OmniLight3D) get_shadow_mode() OmniLight3DShadowMode {
    mut object_out := OmniLight3DShadowMode.shadow_dual_paraboloid
    classname := StringName.new("OmniLight3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shadow_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4181586331)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
