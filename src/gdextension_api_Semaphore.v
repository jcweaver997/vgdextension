module vgdextension

@[noinit]
pub struct Semaphore {
    RefCounted
}

pub fn (mut r Semaphore) wait() {
    classname := StringName.new("Semaphore")
    fnname := StringName.new("wait")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Semaphore) try_wait() bool {
    mut object_out := false
    classname := StringName.new("Semaphore")
    fnname := StringName.new("try_wait")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Semaphore) post() {
    classname := StringName.new("Semaphore")
    fnname := StringName.new("post")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
