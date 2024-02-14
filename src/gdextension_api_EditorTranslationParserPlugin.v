module vgdextension

@[noinit]
pub struct EditorTranslationParserPlugin {
    RefCounted
}

pub interface IEditorTranslationParserPluginParseFile {
    mut:
    virt_parse_file(path String, msgids Array, msgids_context_plural Array)
}

pub fn (mut r EditorTranslationParserPlugin) uparse_file(path String, msgids Array, msgids_context_plural Array) {
    classname := StringName.new("EditorTranslationParserPlugin")
    fnname := StringName.new("_parse_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&msgids)}
    args[2] = unsafe{voidptr(&msgids_context_plural)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorTranslationParserPluginGetRecognizedExtensions {
    mut:
    virt_get_recognized_extensions() PackedStringArray
}

pub fn (r &EditorTranslationParserPlugin) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorTranslationParserPlugin")
    fnname := StringName.new("_get_recognized_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
