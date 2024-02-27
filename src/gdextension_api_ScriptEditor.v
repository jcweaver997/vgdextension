module vgdextension

@[noinit]
pub struct ScriptEditor {
    PanelContainer
}

pub fn (r &ScriptEditor) get_current_editor() ScriptEditorBase {
    mut object_out := ScriptEditorBase{}
    classname := StringName.new("ScriptEditor")
    fnname := StringName.new("get_current_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1906266726)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ScriptEditor) get_open_script_editors() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptEditor")
    fnname := StringName.new("get_open_script_editors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ScriptEditor) register_syntax_highlighter(syntax_highlighter EditorSyntaxHighlighter) {
    classname := StringName.new("ScriptEditor")
    fnname := StringName.new("register_syntax_highlighter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1092774468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = syntax_highlighter.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ScriptEditor) unregister_syntax_highlighter(syntax_highlighter EditorSyntaxHighlighter) {
    classname := StringName.new("ScriptEditor")
    fnname := StringName.new("unregister_syntax_highlighter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1092774468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = syntax_highlighter.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ScriptEditor) goto_line(line_number i32) {
    classname := StringName.new("ScriptEditor")
    fnname := StringName.new("goto_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ScriptEditor) get_current_script() Script {
    mut object_out := Script{}
    classname := StringName.new("ScriptEditor")
    fnname := StringName.new("get_current_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2146468882)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ScriptEditor) get_open_scripts() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptEditor")
    fnname := StringName.new("get_open_scripts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ScriptEditor) open_script_create_dialog(base_name string, base_path string) {
    classname := StringName.new("ScriptEditor")
    fnname := StringName.new("open_script_create_dialog")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(base_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(base_path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
