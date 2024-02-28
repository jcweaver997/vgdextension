module vgdextension

@[noinit]
pub struct RichTextEffect {
    Resource
}

pub interface IRichTextEffectProcessCustomFx {
    mut:
    virt_process_custom_fx(char_fx CharFXTransform) bool
}

pub fn (r &RichTextEffect) uprocess_custom_fx(char_fx CharFXTransform) bool {
    mut object_out := false
    classname := StringName.new("RichTextEffect")
    fnname := StringName.new("_process_custom_fx")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&char_fx.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
