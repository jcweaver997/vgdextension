module vgdextension

@[noinit]
pub struct RenderSceneBuffers {
    RefCounted
}

pub fn (r &RenderSceneBuffers) configure(config RenderSceneBuffersConfiguration) {
    classname := StringName.new("RenderSceneBuffers")
    fnname := StringName.new("configure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3072623270)
    mut args := unsafe { [1]voidptr{} }
    args[0] = config.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
