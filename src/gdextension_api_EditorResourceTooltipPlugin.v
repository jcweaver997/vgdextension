module vgdextension

pub type EditorResourceTooltipPlugin = voidptr

pub fn (r &EditorResourceTooltipPlugin) uhandles(type_name String) bool {
    mut object_out := false
    classname := StringName.new("EditorResourceTooltipPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_handles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourceTooltipPlugin) umake_tooltip_for_path(path String, metadata Dictionary, base Control) Control {
    mut object_out := Control(unsafe{nil})
    classname := StringName.new("EditorResourceTooltipPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_make_tooltip_for_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&metadata)}
    args[2] = unsafe{voidptr(&base)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourceTooltipPlugin) request_thumbnail(path String, control TextureRect) {
    classname := StringName.new("EditorResourceTooltipPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("request_thumbnail")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3245519720)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
