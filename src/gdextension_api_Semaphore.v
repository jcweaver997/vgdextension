pub type Semaphore = voidptr

pub fn (mut r Semaphore) wait() {
    classname := StringName.new("Semaphore")
    defer { classname.deinit() }
    fnname := StringName.new("wait")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Semaphore) try_wait() bool {
    mut object_out := false
    classname := StringName.new("Semaphore")
    defer { classname.deinit() }
    fnname := StringName.new("try_wait")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Semaphore) post() {
    classname := StringName.new("Semaphore")
    defer { classname.deinit() }
    fnname := StringName.new("post")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
