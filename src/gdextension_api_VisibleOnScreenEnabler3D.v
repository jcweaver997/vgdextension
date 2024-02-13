module vgdextension

pub enum VisibleOnScreenEnabler3DEnableMode {
    enable_mode_inherit = 0
    enable_mode_always = 1
    enable_mode_when_paused = 2
}

@[noinit]
pub struct VisibleOnScreenEnabler3D {
    VisibleOnScreenNotifier3D
}

pub fn (mut r VisibleOnScreenEnabler3D) set_enable_mode(mode VisibleOnScreenEnabler3DEnableMode) {
    classname := StringName.new("VisibleOnScreenEnabler3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 320303646)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisibleOnScreenEnabler3D) get_enable_mode() VisibleOnScreenEnabler3DEnableMode {
    mut object_out := VisibleOnScreenEnabler3DEnableMode.enable_mode_inherit
    classname := StringName.new("VisibleOnScreenEnabler3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3352990031)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisibleOnScreenEnabler3D) set_enable_node_path(path NodePath) {
    classname := StringName.new("VisibleOnScreenEnabler3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_node_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisibleOnScreenEnabler3D) get_enable_node_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("VisibleOnScreenEnabler3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_node_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
