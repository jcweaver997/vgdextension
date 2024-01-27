module vgdextension

pub type ScriptEditor = voidptr

pub fn (r &ScriptEditor) get_current_editor() ScriptEditorBase {
    mut object_out := ScriptEditorBase(unsafe{nil})
    classname := StringName.new("ScriptEditor")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_editor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1906266726)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptEditor) get_open_script_editors() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptEditor")
    defer { classname.deinit() }
    fnname := StringName.new("get_open_script_editors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptEditor) register_syntax_highlighter(syntax_highlighter EditorSyntaxHighlighter) {
    classname := StringName.new("ScriptEditor")
    defer { classname.deinit() }
    fnname := StringName.new("register_syntax_highlighter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1092774468)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptEditor) unregister_syntax_highlighter(syntax_highlighter EditorSyntaxHighlighter) {
    classname := StringName.new("ScriptEditor")
    defer { classname.deinit() }
    fnname := StringName.new("unregister_syntax_highlighter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1092774468)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptEditor) goto_line(line_number i32) {
    classname := StringName.new("ScriptEditor")
    defer { classname.deinit() }
    fnname := StringName.new("goto_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ScriptEditor) get_current_script() Script {
    mut object_out := Script(unsafe{nil})
    classname := StringName.new("ScriptEditor")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2146468882)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ScriptEditor) get_open_scripts() Array {
    mut object_out := Array{}
    classname := StringName.new("ScriptEditor")
    defer { classname.deinit() }
    fnname := StringName.new("get_open_scripts")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ScriptEditor) open_script_create_dialog(base_name String, base_path String) {
    classname := StringName.new("ScriptEditor")
    defer { classname.deinit() }
    fnname := StringName.new("open_script_create_dialog")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
