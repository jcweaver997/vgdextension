pub type WeakRef = voidptr

pub fn (r &WeakRef) get_ref() Variant {
    mut object_out := Variant{}
    classname := StringName.new("WeakRef")
    defer { classname.deinit() }
    fnname := StringName.new("get_ref")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
