module vgdextension

pub struct EditorResourcePreview {
    Node
}

pub fn (mut r EditorResourcePreview) queue_resource_preview(path String, receiver Object, receiver_func StringName, userdata Variant) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("queue_resource_preview")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 233177534)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = receiver.ptr
    args[2] = unsafe{voidptr(&receiver_func)}
    args[3] = unsafe{voidptr(&userdata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorResourcePreview) queue_edited_resource_preview(resource Resource, receiver Object, receiver_func StringName, userdata Variant) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("queue_edited_resource_preview")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1608376650)
    mut args := unsafe { [4]voidptr{} }
    args[0] = resource.ptr
    args[1] = receiver.ptr
    args[2] = unsafe{voidptr(&receiver_func)}
    args[3] = unsafe{voidptr(&userdata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorResourcePreview) add_preview_generator(generator EditorResourcePreviewGenerator) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("add_preview_generator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 332288124)
    mut args := unsafe { [1]voidptr{} }
    args[0] = generator.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorResourcePreview) remove_preview_generator(generator EditorResourcePreviewGenerator) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("remove_preview_generator")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 332288124)
    mut args := unsafe { [1]voidptr{} }
    args[0] = generator.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorResourcePreview) check_for_invalidation(path String) {
    classname := StringName.new("EditorResourcePreview")
    defer { classname.deinit() }
    fnname := StringName.new("check_for_invalidation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
