module vgdextension

@[noinit]
pub struct PackedDataContainerRef {
    RefCounted
}

pub fn (r &PackedDataContainerRef) size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PackedDataContainerRef")
    fnname := StringName.new("size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
