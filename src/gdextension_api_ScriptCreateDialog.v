module vgdextension

@[noinit]
pub struct ScriptCreateDialog {
    ConfirmationDialog
}

pub fn (r &ScriptCreateDialog) config(inherits string, path string, built_in_enabled bool, load_enabled bool) {
    classname := StringName.new("ScriptCreateDialog")
    fnname := StringName.new("config")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 869314288)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(inherits)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&built_in_enabled)}
    args[3] = unsafe{voidptr(&load_enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
