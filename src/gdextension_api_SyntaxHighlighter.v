module vgdextension

pub struct SyntaxHighlighter {
    Resource
}

pub interface ISyntaxHighlighterGetLineSyntaxHighlighting {
    mut:
    virt_get_line_syntax_highlighting(line i32) Dictionary
}

pub fn (r &SyntaxHighlighter) uget_line_syntax_highlighting(line i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("SyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("_get_line_syntax_highlighting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface ISyntaxHighlighterClearHighlightingCache {
    mut:
    virt_clear_highlighting_cache()
}

pub fn (mut r SyntaxHighlighter) uclear_highlighting_cache() {
    classname := StringName.new("SyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("_clear_highlighting_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface ISyntaxHighlighterUpdateCache {
    mut:
    virt_update_cache()
}

pub fn (mut r SyntaxHighlighter) uupdate_cache() {
    classname := StringName.new("SyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("_update_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r SyntaxHighlighter) get_line_syntax_highlighting(line i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("SyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_syntax_highlighting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3554694381)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SyntaxHighlighter) update_cache() {
    classname := StringName.new("SyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("update_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r SyntaxHighlighter) clear_highlighting_cache() {
    classname := StringName.new("SyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("clear_highlighting_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &SyntaxHighlighter) get_text_edit() TextEdit {
    mut object_out := TextEdit{}
    classname := StringName.new("SyntaxHighlighter")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_edit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1893027089)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
