module vgdextension

pub struct FileSystemDock {
    VBoxContainer
}

pub fn (mut r FileSystemDock) navigate_to_path(path String) {
    classname := StringName.new("FileSystemDock")
    defer { classname.deinit() }
    fnname := StringName.new("navigate_to_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r FileSystemDock) add_resource_tooltip_plugin(plugin EditorResourceTooltipPlugin) {
    classname := StringName.new("FileSystemDock")
    defer { classname.deinit() }
    fnname := StringName.new("add_resource_tooltip_plugin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2258356838)
    mut args := unsafe { [1]voidptr{} }
    args[0] = plugin.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r FileSystemDock) remove_resource_tooltip_plugin(plugin EditorResourceTooltipPlugin) {
    classname := StringName.new("FileSystemDock")
    defer { classname.deinit() }
    fnname := StringName.new("remove_resource_tooltip_plugin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2258356838)
    mut args := unsafe { [1]voidptr{} }
    args[0] = plugin.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
