module vgdextension

pub enum VisibleOnScreenEnabler3DEnableMode as i64 {
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
    fnname := StringName.new("set_enable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 320303646)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r VisibleOnScreenEnabler3D) get_enable_mode() VisibleOnScreenEnabler3DEnableMode {
    mut object_out := i64(VisibleOnScreenEnabler3DEnableMode.enable_mode_inherit)
    classname := StringName.new("VisibleOnScreenEnabler3D")
    fnname := StringName.new("get_enable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3352990031)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisibleOnScreenEnabler3DEnableMode(object_out)}
}
pub fn (mut r VisibleOnScreenEnabler3D) set_enable_node_path(path NodePath) {
    classname := StringName.new("VisibleOnScreenEnabler3D")
    fnname := StringName.new("set_enable_node_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r VisibleOnScreenEnabler3D) get_enable_node_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("VisibleOnScreenEnabler3D")
    fnname := StringName.new("get_enable_node_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
