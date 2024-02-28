module vgdextension

@[noinit]
pub struct ScriptEditorBase {
    VBoxContainer
}

pub fn (r &ScriptEditorBase) get_base_editor() Control {
    mut object_out := Control{}
    classname := StringName.new("ScriptEditorBase")
    fnname := StringName.new("get_base_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2783021301)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ScriptEditorBase) add_syntax_highlighter(highlighter EditorSyntaxHighlighter) {
    classname := StringName.new("ScriptEditorBase")
    fnname := StringName.new("add_syntax_highlighter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1092774468)
    mut args := unsafe { [1]voidptr{} }
    args[0] = highlighter.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
