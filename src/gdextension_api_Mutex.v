module vgdextension

pub struct Mutex {
    RefCounted
}

pub fn (mut r Mutex) gdlock() {
    classname := StringName.new("Mutex")
    defer { classname.deinit() }
    fnname := StringName.new("lock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Mutex) try_lock() bool {
    mut object_out := false
    classname := StringName.new("Mutex")
    defer { classname.deinit() }
    fnname := StringName.new("try_lock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Mutex) unlock() {
    classname := StringName.new("Mutex")
    defer { classname.deinit() }
    fnname := StringName.new("unlock")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
