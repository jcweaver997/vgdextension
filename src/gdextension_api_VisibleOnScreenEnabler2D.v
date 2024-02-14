module vgdextension

pub enum VisibleOnScreenEnabler2DEnableMode as i64 {
    enable_mode_inherit = 0
    enable_mode_always = 1
    enable_mode_when_paused = 2
}

@[noinit]
pub struct VisibleOnScreenEnabler2D {
    VisibleOnScreenNotifier2D
}

pub fn (mut r VisibleOnScreenEnabler2D) set_enable_mode(mode VisibleOnScreenEnabler2DEnableMode) {
    classname := StringName.new("VisibleOnScreenEnabler2D")
    fnname := StringName.new("set_enable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961788752)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r VisibleOnScreenEnabler2D) get_enable_mode() VisibleOnScreenEnabler2DEnableMode {
    mut object_out := i64(VisibleOnScreenEnabler2DEnableMode.enable_mode_inherit)
    classname := StringName.new("VisibleOnScreenEnabler2D")
    fnname := StringName.new("get_enable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2650445576)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisibleOnScreenEnabler2DEnableMode(object_out)}
}
pub fn (mut r VisibleOnScreenEnabler2D) set_enable_node_path(path NodePath) {
    classname := StringName.new("VisibleOnScreenEnabler2D")
    fnname := StringName.new("set_enable_node_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r VisibleOnScreenEnabler2D) get_enable_node_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("VisibleOnScreenEnabler2D")
    fnname := StringName.new("get_enable_node_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
