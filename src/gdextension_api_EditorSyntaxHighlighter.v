module vgdextension

pub type EditorSyntaxHighlighter = voidptr

pub fn (r &EditorSyntaxHighlighter) uget_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorSyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorSyntaxHighlighter) uget_supported_languages() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_supported_languages")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
