module vgdextension

pub struct ScriptCreateDialog {
    ConfirmationDialog
}

pub fn (mut r ScriptCreateDialog) config(inherits String, path String, built_in_enabled bool, load_enabled bool) {
    classname := StringName.new("ScriptCreateDialog")
    defer { classname.deinit() }
    fnname := StringName.new("config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4210001628)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&inherits)}
    args[1] = unsafe{voidptr(&path)}
    args[2] = unsafe{voidptr(&built_in_enabled)}
    args[3] = unsafe{voidptr(&load_enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
