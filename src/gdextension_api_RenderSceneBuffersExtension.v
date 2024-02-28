module vgdextension

@[noinit]
pub struct RenderSceneBuffersExtension {
    RenderSceneBuffers
}

pub interface IRenderSceneBuffersExtensionConfigure {
    mut:
    virt_configure(config RenderSceneBuffersConfiguration)
}

pub fn (r &RenderSceneBuffersExtension) uconfigure(config RenderSceneBuffersConfiguration) {
    classname := StringName.new("RenderSceneBuffersExtension")
    fnname := StringName.new("_configure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&config.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IRenderSceneBuffersExtensionSetFsrSharpness {
    mut:
    virt_set_fsr_sharpness(fsr_sharpness f64)
}

pub fn (r &RenderSceneBuffersExtension) uset_fsr_sharpness(fsr_sharpness f64) {
    classname := StringName.new("RenderSceneBuffersExtension")
    fnname := StringName.new("_set_fsr_sharpness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fsr_sharpness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IRenderSceneBuffersExtensionSetTextureMipmapBias {
    mut:
    virt_set_texture_mipmap_bias(texture_mipmap_bias f64)
}

pub fn (r &RenderSceneBuffersExtension) uset_texture_mipmap_bias(texture_mipmap_bias f64) {
    classname := StringName.new("RenderSceneBuffersExtension")
    fnname := StringName.new("_set_texture_mipmap_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_mipmap_bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IRenderSceneBuffersExtensionSetUseDebanding {
    mut:
    virt_set_use_debanding(use_debanding bool)
}

pub fn (r &RenderSceneBuffersExtension) uset_use_debanding(use_debanding bool) {
    classname := StringName.new("RenderSceneBuffersExtension")
    fnname := StringName.new("_set_use_debanding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_debanding)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
