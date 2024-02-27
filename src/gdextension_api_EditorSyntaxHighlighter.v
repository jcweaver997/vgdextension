module vgdextension

@[noinit]
pub struct EditorSyntaxHighlighter {
    SyntaxHighlighter
}

pub interface IEditorSyntaxHighlighterGetName {
    mut:
    virt_get_name() String
}

pub fn (r &EditorSyntaxHighlighter) uget_name() string {
    mut object_out := String{}
    classname := StringName.new("EditorSyntaxHighlighter")
    fnname := StringName.new("_get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IEditorSyntaxHighlighterGetSupportedLanguages {
    mut:
    virt_get_supported_languages() PackedStringArray
}

pub fn (r &EditorSyntaxHighlighter) uget_supported_languages() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSyntaxHighlighter")
    fnname := StringName.new("_get_supported_languages")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
