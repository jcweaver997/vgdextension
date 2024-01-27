pub type EditorTranslationParserPlugin = voidptr

pub fn (mut r EditorTranslationParserPlugin) uparse_file(path String, msgids Array, msgids_context_plural Array) {
    classname := StringName.new("EditorTranslationParserPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_parse_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorTranslationParserPlugin) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorTranslationParserPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_get_recognized_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
