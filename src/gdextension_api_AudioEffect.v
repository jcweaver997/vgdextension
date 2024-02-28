module vgdextension

@[noinit]
pub struct AudioEffect {
    Resource
}

pub interface IAudioEffectInstantiate {
    mut:
    virt_instantiate() AudioEffectInstance
}

pub fn (r &AudioEffect) uinstantiate() AudioEffectInstance {
    mut object_out := AudioEffectInstance{}
    classname := StringName.new("AudioEffect")
    fnname := StringName.new("_instantiate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
