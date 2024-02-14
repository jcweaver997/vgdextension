module vgdextension

@[noinit]
pub struct TranslationServer {
    Object
}

pub fn TranslationServer.get_singleton() TranslationServer {
    sn := StringName.new("TranslationServer")
    o := TranslationServer{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r TranslationServer) set_locale(locale String) {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("set_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&locale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TranslationServer) get_locale() String {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TranslationServer) get_tool_locale() String {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_tool_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) compare_locales(locale_a String, locale_b String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("compare_locales")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878152881)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&locale_a)}
    args[1] = unsafe{voidptr(&locale_b)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) standardize_locale(locale String) String {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("standardize_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&locale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) get_all_languages() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_all_languages")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) get_language_name(language String) String {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_language_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) get_all_scripts() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_all_scripts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) get_script_name(script String) String {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_script_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) get_all_countries() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_all_countries")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) get_country_name(country String) String {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_country_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&country)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) get_locale_name(locale String) String {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_locale_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&locale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) translate(message StringName, context StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("translate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1829228469)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) translate_plural(message StringName, plural_message StringName, n i32, context StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("translate_plural")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229954002)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&plural_message)}
    args[2] = unsafe{voidptr(&n)}
    args[3] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TranslationServer) add_translation(translation Translation) {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("add_translation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
    mut args := unsafe { [1]voidptr{} }
    args[0] = translation.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TranslationServer) remove_translation(translation Translation) {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("remove_translation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
    mut args := unsafe { [1]voidptr{} }
    args[0] = translation.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TranslationServer) get_translation_object(locale String) Translation {
    mut object_out := Translation{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_translation_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2065240175)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&locale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TranslationServer) clear() {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TranslationServer) get_loaded_locales() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_loaded_locales")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) is_pseudolocalization_enabled() bool {
    mut object_out := false
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("is_pseudolocalization_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r TranslationServer) set_pseudolocalization_enabled(enabled bool) {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("set_pseudolocalization_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r TranslationServer) reload_pseudolocalization() {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("reload_pseudolocalization")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TranslationServer) pseudolocalize(message StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("pseudolocalize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
