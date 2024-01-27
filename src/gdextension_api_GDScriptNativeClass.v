pub type GDScriptNativeClass = voidptr

pub fn (mut r GDScriptNativeClass) new() Variant {
    mut object_out := Variant{}
    classname := StringName.new("GDScriptNativeClass")
    defer { classname.deinit() }
    fnname := StringName.new("new")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1460262497)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
