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

pub fn (r &TranslationServer) set_locale(locale string) {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("set_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(locale)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TranslationServer) get_locale() string {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TranslationServer) get_tool_locale() string {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_tool_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TranslationServer) compare_locales(locale_a string, locale_b string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("compare_locales")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2878152881)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(locale_a)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(locale_b)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) standardize_locale(locale string) string {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("standardize_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(locale)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
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
pub fn (r &TranslationServer) get_language_name(language string) string {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_language_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(language)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
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
pub fn (r &TranslationServer) get_script_name(script string) string {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_script_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(script)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
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
pub fn (r &TranslationServer) get_country_name(country string) string {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_country_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(country)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TranslationServer) get_locale_name(locale string) string {
    mut object_out := String{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_locale_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(locale)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TranslationServer) translate(message string, context string) string {
    mut object_out := StringName{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("translate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1829228469)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(context)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TranslationServer) translate_plural(message string, plural_message string, n i32, context string) string {
    mut object_out := StringName{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("translate_plural")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229954002)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(plural_message)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&n)}
    arg_sn3 := StringName.new(context)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &TranslationServer) add_translation(translation Translation) {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("add_translation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&translation.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TranslationServer) remove_translation(translation Translation) {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("remove_translation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1466479800)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&translation.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TranslationServer) get_translation_object(locale string) Translation {
    mut object_out := Translation{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("get_translation_object")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2065240175)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(locale)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TranslationServer) clear() {
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
pub fn (r &TranslationServer) set_pseudolocalization_enabled(enabled bool) {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("set_pseudolocalization_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TranslationServer) reload_pseudolocalization() {
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("reload_pseudolocalization")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TranslationServer) pseudolocalize(message string) string {
    mut object_out := StringName{}
    classname := StringName.new("TranslationServer")
    fnname := StringName.new("pseudolocalize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
