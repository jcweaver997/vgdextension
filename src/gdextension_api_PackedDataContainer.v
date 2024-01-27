module vgdextension

pub type PackedDataContainer = voidptr

pub fn (mut r PackedDataContainer) pack(value Variant) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PackedDataContainer")
    defer { classname.deinit() }
    fnname := StringName.new("pack")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 966674026)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PackedDataContainer) size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PackedDataContainer")
    defer { classname.deinit() }
    fnname := StringName.new("size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
