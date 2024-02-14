module vgdextension

@[noinit]
pub struct PackedDataContainer {
    Resource
}

pub fn (mut r PackedDataContainer) pack(value Variant) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PackedDataContainer")
    fnname := StringName.new("pack")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 966674026)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PackedDataContainer) size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PackedDataContainer")
    fnname := StringName.new("size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
