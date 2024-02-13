module vgdextension

@[noinit]
pub struct PackedDataContainerRef {
    RefCounted
}

pub fn (r &PackedDataContainerRef) size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PackedDataContainerRef")
    defer { classname.deinit() }
    fnname := StringName.new("size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
