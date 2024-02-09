module vgdextension

pub enum VisibleOnScreenEnabler2DEnableMode {
    enable_mode_inherit = 0
    enable_mode_always = 1
    enable_mode_when_paused = 2
}

pub struct VisibleOnScreenEnabler2D {
    VisibleOnScreenNotifier2D
}

pub fn (mut r VisibleOnScreenEnabler2D) set_enable_mode(mode VisibleOnScreenEnabler2DEnableMode) {
    classname := StringName.new("VisibleOnScreenEnabler2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961788752)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisibleOnScreenEnabler2D) get_enable_mode() VisibleOnScreenEnabler2DEnableMode {
    mut object_out := VisibleOnScreenEnabler2DEnableMode.enable_mode_inherit
    classname := StringName.new("VisibleOnScreenEnabler2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2650445576)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisibleOnScreenEnabler2D) set_enable_node_path(path NodePath) {
    classname := StringName.new("VisibleOnScreenEnabler2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_node_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VisibleOnScreenEnabler2D) get_enable_node_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("VisibleOnScreenEnabler2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_node_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 277076166)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
