module vgdextension

pub type RichTextEffect = voidptr

pub fn (r &RichTextEffect) uprocess_custom_fx(char_fx CharFXTransform) bool {
    mut object_out := false
    classname := StringName.new("RichTextEffect")
    defer { classname.deinit() }
    fnname := StringName.new("_process_custom_fx")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&char_fx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
