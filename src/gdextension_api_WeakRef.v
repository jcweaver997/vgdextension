module vgdextension

@[noinit]
pub struct WeakRef {
    RefCounted
}

pub fn (r &WeakRef) get_ref() Variant {
    mut object_out := Variant{}
    classname := StringName.new("WeakRef")
    fnname := StringName.new("get_ref")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
