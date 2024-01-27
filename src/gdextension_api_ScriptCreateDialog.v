pub type ScriptCreateDialog = voidptr

pub fn (mut r ScriptCreateDialog) config(inherits String, path String, built_in_enabled bool, load_enabled bool) {
    classname := StringName.new("ScriptCreateDialog")
    defer { classname.deinit() }
    fnname := StringName.new("config")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4210001628)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
