module vgdextension

pub struct OptimizedTranslation {
    Translation
}

pub fn (mut r OptimizedTranslation) generate(from Translation) {
    classname := StringName.new("OptimizedTranslation")
    defer { classname.deinit() }
    fnname := StringName.new("generate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
