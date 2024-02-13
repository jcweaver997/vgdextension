module vgdextension

@[noinit]
pub struct RefCounted {
    Object
}

pub fn (mut r RefCounted) init_ref() bool {
    mut object_out := false
    classname := StringName.new("RefCounted")
    defer { classname.deinit() }
    fnname := StringName.new("init_ref")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RefCounted) reference() bool {
    mut object_out := false
    classname := StringName.new("RefCounted")
    defer { classname.deinit() }
    fnname := StringName.new("reference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RefCounted) unreference() bool {
    mut object_out := false
    classname := StringName.new("RefCounted")
    defer { classname.deinit() }
    fnname := StringName.new("unreference")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RefCounted) get_reference_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RefCounted")
    defer { classname.deinit() }
    fnname := StringName.new("get_reference_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
