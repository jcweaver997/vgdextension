pub type EditorResourcePreview = voidptr

pub fn (mut r EditorResourcePreview) queue_resource_preview(path String, receiver Object, receiver_func StringName, userdata Variant) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("queue_resource_preview")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 233177534)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorResourcePreview) queue_edited_resource_preview(resource Resource, receiver Object, receiver_func StringName, userdata Variant) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("queue_edited_resource_preview")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1608376650)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorResourcePreview) add_preview_generator(generator EditorResourcePreviewGenerator) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("add_preview_generator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 332288124)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorResourcePreview) remove_preview_generator(generator EditorResourcePreviewGenerator) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("remove_preview_generator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 332288124)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorResourcePreview) check_for_invalidation(path String) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("check_for_invalidation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
