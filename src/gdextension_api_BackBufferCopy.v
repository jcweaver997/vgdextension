module vgdextension

pub enum BackBufferCopyCopyMode {
    copy_mode_disabled = 0
    copy_mode_rect = 1
    copy_mode_viewport = 2
}

pub type BackBufferCopy = voidptr

pub fn (mut r BackBufferCopy) set_rect(rect Rect2) {
    classname := StringName.new("BackBufferCopy")
    defer { classname.deinit() }
    fnname := StringName.new("set_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BackBufferCopy) get_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("BackBufferCopy")
    defer { classname.deinit() }
    fnname := StringName.new("get_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BackBufferCopy) set_copy_mode(copy_mode BackBufferCopyCopyMode) {
    classname := StringName.new("BackBufferCopy")
    defer { classname.deinit() }
    fnname := StringName.new("set_copy_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1713538590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BackBufferCopy) get_copy_mode() BackBufferCopyCopyMode {
    mut object_out := BackBufferCopyCopyMode.copy_mode_disabled
    classname := StringName.new("BackBufferCopy")
    defer { classname.deinit() }
    fnname := StringName.new("get_copy_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3271169440)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
