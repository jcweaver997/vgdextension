module vgdextension

@[noinit]
pub struct Mutex {
    RefCounted
}

pub fn (mut r Mutex) gdlock() {
    classname := StringName.new("Mutex")
    fnname := StringName.new("lock")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Mutex) try_lock() bool {
    mut object_out := false
    classname := StringName.new("Mutex")
    fnname := StringName.new("try_lock")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Mutex) unlock() {
    classname := StringName.new("Mutex")
    fnname := StringName.new("unlock")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
