pub enum AudioEffectSpectrumAnalyzerInstanceMagnitudeMode {
    magnitude_average = 0
    magnitude_max = 1
}

pub type AudioEffectSpectrumAnalyzerInstance = voidptr

pub fn (r &AudioEffectSpectrumAnalyzerInstance) get_magnitude_for_frequency_range(from_hz f32, to_hz f32, mode AudioEffectSpectrumAnalyzerInstanceMagnitudeMode) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AudioEffectSpectrumAnalyzerInstance")
    defer { classname.deinit() }
    fnname := StringName.new("get_magnitude_for_frequency_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2693213071)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from_hz)}
    args[1] = unsafe{voidptr(&to_hz)}
    args[2] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
