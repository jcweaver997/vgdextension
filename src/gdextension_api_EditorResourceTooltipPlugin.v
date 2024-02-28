module vgdextension

@[noinit]
pub struct EditorResourceTooltipPlugin {
    RefCounted
}

pub interface IEditorResourceTooltipPluginHandles {
    mut:
    virt_handles(type_name String) bool
}

pub fn (r &EditorResourceTooltipPlugin) uhandles(type_name string) bool {
    mut object_out := false
    classname := StringName.new("EditorResourceTooltipPlugin")
    fnname := StringName.new("_handles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorResourceTooltipPluginMakeTooltipForPath {
    mut:
    virt_make_tooltip_for_path(path String, metadata Dictionary, base Control) Control
}

pub fn (r &EditorResourceTooltipPlugin) umake_tooltip_for_path(path string, metadata Dictionary, base Control) Control {
    mut object_out := Control{}
    classname := StringName.new("EditorResourceTooltipPlugin")
    fnname := StringName.new("_make_tooltip_for_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&metadata)}
    args[2] = voidptr(&base.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorResourceTooltipPlugin) request_thumbnail(path string, control TextureRect) {
    classname := StringName.new("EditorResourceTooltipPlugin")
    fnname := StringName.new("request_thumbnail")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3245519720)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = voidptr(&control.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
