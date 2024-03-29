module vgdextension

@[noinit]
pub struct OptimizedTranslation {
    Translation
}

pub fn (r &OptimizedTranslation) generate(from Translation) {
    classname := StringName.new("OptimizedTranslation")
    fnname := StringName.new("generate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&from.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
