module vgdextension

pub enum BackBufferCopyCopyMode as i64 {
    copy_mode_disabled = 0
    copy_mode_rect = 1
    copy_mode_viewport = 2
}

@[noinit]
pub struct BackBufferCopy {
    Node2D
}

pub fn (r &BackBufferCopy) set_rect(rect Rect2) {
    classname := StringName.new("BackBufferCopy")
    fnname := StringName.new("set_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BackBufferCopy) get_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("BackBufferCopy")
    fnname := StringName.new("get_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &BackBufferCopy) set_copy_mode(copy_mode BackBufferCopyCopyMode) {
    classname := StringName.new("BackBufferCopy")
    fnname := StringName.new("set_copy_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1713538590)
    mut args := unsafe { [1]voidptr{} }
    i64_copy_mode := i64(copy_mode)
    args[0] = unsafe{voidptr(&i64_copy_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BackBufferCopy) get_copy_mode() BackBufferCopyCopyMode {
    mut object_out := i64(BackBufferCopyCopyMode.copy_mode_disabled)
    classname := StringName.new("BackBufferCopy")
    fnname := StringName.new("get_copy_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3271169440)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{BackBufferCopyCopyMode(object_out)}
}
