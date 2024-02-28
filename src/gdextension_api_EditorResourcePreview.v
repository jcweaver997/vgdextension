module vgdextension

@[noinit]
pub struct EditorResourcePreview {
    Node
}

pub fn (r &EditorResourcePreview) queue_resource_preview(path string, receiver Object, receiver_func string, userdata Variant) {
    classname := StringName.new("EditorResourcePreview")
    fnname := StringName.new("queue_resource_preview")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 233177534)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = receiver.ptr
    arg_sn2 := StringName.new(receiver_func)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&userdata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorResourcePreview) queue_edited_resource_preview(resource Resource, receiver Object, receiver_func string, userdata Variant) {
    classname := StringName.new("EditorResourcePreview")
    fnname := StringName.new("queue_edited_resource_preview")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1608376650)
    mut args := unsafe { [4]voidptr{} }
    args[0] = resource.ptr
    args[1] = receiver.ptr
    arg_sn2 := StringName.new(receiver_func)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&userdata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorResourcePreview) add_preview_generator(generator EditorResourcePreviewGenerator) {
    classname := StringName.new("EditorResourcePreview")
    fnname := StringName.new("add_preview_generator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 332288124)
    mut args := unsafe { [1]voidptr{} }
    args[0] = generator.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorResourcePreview) remove_preview_generator(generator EditorResourcePreviewGenerator) {
    classname := StringName.new("EditorResourcePreview")
    fnname := StringName.new("remove_preview_generator")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 332288124)
    mut args := unsafe { [1]voidptr{} }
    args[0] = generator.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorResourcePreview) check_for_invalidation(path string) {
    classname := StringName.new("EditorResourcePreview")
    fnname := StringName.new("check_for_invalidation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
