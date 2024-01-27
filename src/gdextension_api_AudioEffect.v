pub type AudioEffect = voidptr

pub fn (mut r AudioEffect) uinstantiate() AudioEffectInstance {
    mut object_out := AudioEffectInstance(unsafe{nil})
    classname := StringName.new("AudioEffect")
    defer { classname.deinit() }
    fnname := StringName.new("_instantiate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
