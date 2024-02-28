module vgdextension

pub enum CodeEditCodeCompletionKind as i64 {
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

pub enum CodeEditCodeCompletionLocation as i64 {
    location_local = 0
    location_parent_mask = 256
    location_other_user_code = 512
    location_other = 1024
}

@[noinit]
pub struct CodeEdit {
    TextEdit
}

pub interface ICodeEditConfirmCodeCompletion {
    mut:
    virt_confirm_code_completion(replace bool)
}

pub fn (r &CodeEdit) uconfirm_code_completion(replace bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("_confirm_code_completion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&replace)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ICodeEditRequestCodeCompletion {
    mut:
    virt_request_code_completion(force bool)
}

pub fn (r &CodeEdit) urequest_code_completion(force bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("_request_code_completion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ICodeEditFilterCodeCompletionCandidates {
    mut:
    virt_filter_code_completion_candidates(candidates Array) Array
}

pub fn (r &CodeEdit) ufilter_code_completion_candidates(candidates Array) Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("_filter_code_completion_candidates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&candidates)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_indent_size(size i32) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_indent_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_indent_size() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_indent_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_indent_using_spaces(use_spaces bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_indent_using_spaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_spaces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_indent_using_spaces() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_indent_using_spaces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_auto_indent_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_auto_indent_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_auto_indent_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_auto_indent_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_auto_indent_prefixes(prefixes Array) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_auto_indent_prefixes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&prefixes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_auto_indent_prefixes() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_auto_indent_prefixes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) do_indent() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("do_indent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) indent_lines() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("indent_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) unindent_lines() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("unindent_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) convert_indent(from_line i32, to_line i32) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("convert_indent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 423910286)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from_line)}
    args[1] = unsafe{voidptr(&to_line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) set_auto_brace_completion_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_auto_brace_completion_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_auto_brace_completion_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_auto_brace_completion_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_highlight_matching_braces_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_highlight_matching_braces_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_highlight_matching_braces_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_highlight_matching_braces_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) add_auto_brace_completion_pair(start_key string, end_key string) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("add_auto_brace_completion_pair")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(start_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(end_key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) set_auto_brace_completion_pairs(pairs Dictionary) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_auto_brace_completion_pairs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pairs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_auto_brace_completion_pairs() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_auto_brace_completion_pairs")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) has_auto_brace_completion_open_key(open_key string) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("has_auto_brace_completion_open_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(open_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) has_auto_brace_completion_close_key(close_key string) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("has_auto_brace_completion_close_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(close_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) get_auto_brace_completion_close_key(open_key string) string {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_auto_brace_completion_close_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(open_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &CodeEdit) set_draw_breakpoints_gutter(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_draw_breakpoints_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_drawing_breakpoints_gutter() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_drawing_breakpoints_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_draw_bookmarks_gutter(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_draw_bookmarks_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_drawing_bookmarks_gutter() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_drawing_bookmarks_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_draw_executing_lines_gutter(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_draw_executing_lines_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_drawing_executing_lines_gutter() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_drawing_executing_lines_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_line_as_breakpoint(line i32, breakpointed bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_line_as_breakpoint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&breakpointed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_line_breakpointed(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_line_breakpointed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) clear_breakpointed_lines() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("clear_breakpointed_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_breakpointed_lines() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_breakpointed_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_line_as_bookmarked(line i32, bookmarked bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_line_as_bookmarked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&bookmarked)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_line_bookmarked(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_line_bookmarked")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) clear_bookmarked_lines() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("clear_bookmarked_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_bookmarked_lines() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_bookmarked_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_line_as_executing(line i32, executing bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_line_as_executing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&executing)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_line_executing(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_line_executing")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) clear_executing_lines() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("clear_executing_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_executing_lines() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_executing_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_draw_line_numbers(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_draw_line_numbers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_draw_line_numbers_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_draw_line_numbers_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_line_numbers_zero_padded(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_line_numbers_zero_padded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_line_numbers_zero_padded() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_line_numbers_zero_padded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_draw_fold_gutter(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_draw_fold_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_drawing_fold_gutter() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_drawing_fold_gutter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_line_folding_enabled(enabled bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_line_folding_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_line_folding_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_line_folding_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) can_fold_line(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("can_fold_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) fold_line(line i32) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("fold_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) unfold_line(line i32) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("unfold_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) fold_all_lines() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("fold_all_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) unfold_all_lines() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("unfold_all_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) toggle_foldable_line(line i32) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("toggle_foldable_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_line_folded(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_line_folded")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) get_folded_lines() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_folded_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) create_code_region() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("create_code_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_code_region_start_tag() string {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_code_region_start_tag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &CodeEdit) get_code_region_end_tag() string {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_code_region_end_tag")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &CodeEdit) set_code_region_tags(start string, end string) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_code_region_tags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 708800718)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(start)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(end)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_line_code_region_start(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_line_code_region_start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) is_line_code_region_end(line i32) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_line_code_region_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) add_string_delimiter(start_key string, end_key string, line_only bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("add_string_delimiter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3146098955)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(start_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(end_key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&line_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) remove_string_delimiter(start_key string) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("remove_string_delimiter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(start_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) has_string_delimiter(start_key string) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("has_string_delimiter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(start_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_string_delimiters(string_delimiters Array) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_string_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&string_delimiters)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) clear_string_delimiters() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("clear_string_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_string_delimiters() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_string_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) is_in_string(line i32, column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_in_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 688195400)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) add_comment_delimiter(start_key string, end_key string, line_only bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("add_comment_delimiter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3146098955)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(start_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(end_key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&line_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) remove_comment_delimiter(start_key string) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("remove_comment_delimiter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(start_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) has_comment_delimiter(start_key string) bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("has_comment_delimiter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(start_key)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_comment_delimiters(comment_delimiters Array) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_comment_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&comment_delimiters)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) clear_comment_delimiters() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("clear_comment_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_comment_delimiters() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_comment_delimiters")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) is_in_comment(line i32, column i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_in_comment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 688195400)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) get_delimiter_start_key(delimiter_index i32) string {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_delimiter_start_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delimiter_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &CodeEdit) get_delimiter_end_key(delimiter_index i32) string {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_delimiter_end_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delimiter_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &CodeEdit) get_delimiter_start_position(line i32, column i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_delimiter_start_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) get_delimiter_end_position(line i32, column i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_delimiter_end_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_code_hint(code_hint string) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_code_hint")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(code_hint)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) set_code_hint_draw_below(draw_below bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_code_hint_draw_below")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&draw_below)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_text_for_code_completion() string {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_text_for_code_completion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &CodeEdit) request_code_completion(force bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("request_code_completion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) add_code_completion_option(type_name CodeEditCodeCompletionKind, display_text string, insert_text string, text_color Color, icon Resource, value Variant, location i32) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("add_code_completion_option")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 947964390)
    mut args := unsafe { [7]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    arg_sn1 := String.new(display_text)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(insert_text)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&text_color)}
    args[4] = icon.ptr
    args[5] = unsafe{voidptr(&value)}
    args[6] = unsafe{voidptr(&location)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) update_code_completion_options(force bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("update_code_completion_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_code_completion_options() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_code_completion_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) get_code_completion_option(index i32) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_code_completion_option")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) get_code_completion_selected_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_code_completion_selected_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_code_completion_selected_index(index i32) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_code_completion_selected_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) confirm_code_completion(replace bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("confirm_code_completion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 107499316)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&replace)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) cancel_code_completion() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("cancel_code_completion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) set_code_completion_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_code_completion_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_code_completion_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_code_completion_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_code_completion_prefixes(prefixes Array) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_code_completion_prefixes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&prefixes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_code_completion_prefixes() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_code_completion_prefixes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_line_length_guidelines(guideline_columns Array) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_line_length_guidelines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&guideline_columns)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) get_line_length_guidelines() Array {
    mut object_out := Array{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_line_length_guidelines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) set_symbol_lookup_on_click_enabled(enable bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_symbol_lookup_on_click_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) is_symbol_lookup_on_click_enabled() bool {
    mut object_out := false
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("is_symbol_lookup_on_click_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CodeEdit) get_text_for_symbol_lookup() string {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_text_for_symbol_lookup")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &CodeEdit) get_text_with_cursor_char(line i32, column i32) string {
    mut object_out := String{}
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("get_text_with_cursor_char")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1391810591)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    args[1] = unsafe{voidptr(&column)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &CodeEdit) set_symbol_lookup_word_as_valid(valid bool) {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("set_symbol_lookup_word_as_valid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&valid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CodeEdit) duplicate_lines() {
    classname := StringName.new("CodeEdit")
    fnname := StringName.new("duplicate_lines")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
