pub type OptimizedTranslation = voidptr

pub fn (mut r OptimizedTranslation) generate(from Translation) {
    classname := StringName.new("OptimizedTranslation")
    defer { classname.deinit() }
    fnname := StringName.new("generate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
