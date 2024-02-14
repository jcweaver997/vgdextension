module vgdextension

pub enum AudioEffectSpectrumAnalyzerInstanceMagnitudeMode as i64 {
    magnitude_average = 0
    magnitude_max = 1
}

@[noinit]
pub struct AudioEffectSpectrumAnalyzerInstance {
    AudioEffectInstance
}

pub fn (r &AudioEffectSpectrumAnalyzerInstance) get_magnitude_for_frequency_range(from_hz f64, to_hz f64, mode AudioEffectSpectrumAnalyzerInstanceMagnitudeMode) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AudioEffectSpectrumAnalyzerInstance")
    fnname := StringName.new("get_magnitude_for_frequency_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797993915)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from_hz)}
    args[1] = unsafe{voidptr(&to_hz)}
    i64_mode := i64(mode)
    args[2] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
