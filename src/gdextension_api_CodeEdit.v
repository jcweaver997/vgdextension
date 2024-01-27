module vgdextension

pub enum CodeEditCodeCompletionKind {
    kind_class = 0
    kind_function = 1
    kind_signal = 2
    kind_variable = 3
    kind_member = 4
    kind_enum = 5
    kind_constant = 6
    kind_node_path = 7
    kind_file_path = 8
    kind_plain_text = 9
}

pub enum CodeEditCodeCompletionLocation {
    location_local = 0
    location_parent_mask = 256
    location_other_user_code = 512
    location_other = 1024
}

pub type CodeEdit = voidptr

pub fn (mut r CodeEdit) uconfirm_code_completion(replace bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("_confirm_code_completion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) urequest_code_completion(force bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("_request_code_completion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) ufilter_code_completion_candidates(candidates Array) Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("_filter_code_completion_candidates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&candidates)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_indent_size(size i32) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_indent_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_indent_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_indent_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_indent_using_spaces(use_spaces bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_indent_using_spaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_indent_using_spaces() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_indent_using_spaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_auto_indent_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_indent_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_auto_indent_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_auto_indent_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_auto_indent_prefixes(prefixes Array) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_indent_prefixes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_auto_indent_prefixes() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_auto_indent_prefixes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) do_indent() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("do_indent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) indent_lines() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("indent_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) unindent_lines() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("unindent_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) convert_indent(from_line i32, to_line i32) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("convert_indent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 423910286)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) set_auto_brace_completion_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_brace_completion_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_auto_brace_completion_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_auto_brace_completion_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_highlight_matching_braces_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_highlight_matching_braces_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_highlight_matching_braces_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_highlight_matching_braces_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) add_auto_brace_completion_pair(start_key String, end_key String) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("add_auto_brace_completion_pair")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) set_auto_brace_completion_pairs(pairs Dictionary) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_brace_completion_pairs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_auto_brace_completion_pairs() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_auto_brace_completion_pairs")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) has_auto_brace_completion_open_key(open_key String) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("has_auto_brace_completion_open_key")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&open_key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) has_auto_brace_completion_close_key(close_key String) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("has_auto_brace_completion_close_key")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&close_key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) get_auto_brace_completion_close_key(open_key String) String {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_auto_brace_completion_close_key")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&open_key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_draw_breakpoints_gutter(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_breakpoints_gutter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_drawing_breakpoints_gutter() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_drawing_breakpoints_gutter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_draw_bookmarks_gutter(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_bookmarks_gutter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_drawing_bookmarks_gutter() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_drawing_bookmarks_gutter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_draw_executing_lines_gutter(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_executing_lines_gutter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_drawing_executing_lines_gutter() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_drawing_executing_lines_gutter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_line_as_breakpoint(line i32, breakpointed bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_as_breakpoint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_line_breakpointed(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_line_breakpointed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) clear_breakpointed_lines() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("clear_breakpointed_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_breakpointed_lines() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_breakpointed_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_line_as_bookmarked(line i32, bookmarked bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_as_bookmarked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_line_bookmarked(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_line_bookmarked")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) clear_bookmarked_lines() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("clear_bookmarked_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_bookmarked_lines() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_bookmarked_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_line_as_executing(line i32, executing bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_as_executing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_line_executing(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_line_executing")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) clear_executing_lines() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("clear_executing_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_executing_lines() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_executing_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_draw_line_numbers(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_line_numbers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_draw_line_numbers_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_draw_line_numbers_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_line_numbers_zero_padded(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_numbers_zero_padded")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_line_numbers_zero_padded() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_line_numbers_zero_padded")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_draw_fold_gutter(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_fold_gutter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_drawing_fold_gutter() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_drawing_fold_gutter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_line_folding_enabled(enabled bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_folding_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_line_folding_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_line_folding_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) can_fold_line(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("can_fold_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) fold_line(line i32) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("fold_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) unfold_line(line i32) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("unfold_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) fold_all_lines() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("fold_all_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) unfold_all_lines() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("unfold_all_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) toggle_foldable_line(line i32) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("toggle_foldable_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_line_folded(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_line_folded")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) get_folded_lines() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_folded_lines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) add_string_delimiter(start_key String, end_key String, line_only bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("add_string_delimiter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3146098955)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) remove_string_delimiter(start_key String) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("remove_string_delimiter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) has_string_delimiter(start_key String) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("has_string_delimiter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&start_key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_string_delimiters(string_delimiters Array) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_string_delimiters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) clear_string_delimiters() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("clear_string_delimiters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_string_delimiters() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_string_delimiters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) is_in_string(line i32, column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3294126239)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) add_comment_delimiter(start_key String, end_key String, line_only bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("add_comment_delimiter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3146098955)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) remove_comment_delimiter(start_key String) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("remove_comment_delimiter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) has_comment_delimiter(start_key String) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("has_comment_delimiter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&start_key)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_comment_delimiters(comment_delimiters Array) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_comment_delimiters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) clear_comment_delimiters() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("clear_comment_delimiters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_comment_delimiters() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_comment_delimiters")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) is_in_comment(line i32, column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_comment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3294126239)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) get_delimiter_start_key(delimiter_index i32) String {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_delimiter_start_key")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delimiter_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) get_delimiter_end_key(delimiter_index i32) String {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_delimiter_end_key")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delimiter_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) get_delimiter_start_position(line i32, column i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_delimiter_start_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) get_delimiter_end_position(line i32, column i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_delimiter_end_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_code_hint(code_hint String) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_code_hint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) set_code_hint_draw_below(draw_below bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_code_hint_draw_below")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_text_for_code_completion() String {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_for_code_completion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) request_code_completion(force bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("request_code_completion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) add_code_completion_option(type_name CodeEditCodeCompletionKind, display_text String, insert_text String, text_color Color, icon Resource, value Variant, location i32) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("add_code_completion_option")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1629240608)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) update_code_completion_options(force bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("update_code_completion_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_code_completion_options() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_code_completion_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) get_code_completion_option(index i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_code_completion_option")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CodeEdit) get_code_completion_selected_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_code_completion_selected_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_code_completion_selected_index(index i32) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_code_completion_selected_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) confirm_code_completion(replace bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("confirm_code_completion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) cancel_code_completion() {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("cancel_code_completion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CodeEdit) set_code_completion_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_code_completion_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_code_completion_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_code_completion_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_code_completion_prefixes(prefixes Array) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_code_completion_prefixes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_code_completion_prefixes() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_code_completion_prefixes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_line_length_guidelines(guideline_columns Array) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_line_length_guidelines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) get_line_length_guidelines() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_line_length_guidelines")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_symbol_lookup_on_click_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_symbol_lookup_on_click_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CodeEdit) is_symbol_lookup_on_click_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("is_symbol_lookup_on_click_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) get_text_for_symbol_lookup() String {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("get_text_for_symbol_lookup")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CodeEdit) set_symbol_lookup_word_as_valid(valid bool) {
    classname := StringName.new("CodeEdit")
    defer { classname.deinit() }
    fnname := StringName.new("set_symbol_lookup_word_as_valid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
