module vgdextension

pub enum AudioEffectSpectrumAnalyzerFFTSize as i64 {
    fft_size_256 = 0
    fft_size_512 = 1
    fft_size_1024 = 2
    fft_size_2048 = 3
    fft_size_4096 = 4
    fft_size_max = 5
}

@[noinit]
pub struct AudioEffectSpectrumAnalyzer {
    AudioEffect
}

pub fn (mut r AudioEffectSpectrumAnalyzer) set_buffer_length(seconds f64) {
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    fnname := StringName.new("set_buffer_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectSpectrumAnalyzer) get_buffer_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    fnname := StringName.new("get_buffer_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectSpectrumAnalyzer) set_tap_back_pos(seconds f64) {
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    fnname := StringName.new("set_tap_back_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectSpectrumAnalyzer) get_tap_back_pos() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    fnname := StringName.new("get_tap_back_pos")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectSpectrumAnalyzer) set_fft_size(size AudioEffectSpectrumAnalyzerFFTSize) {
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    fnname := StringName.new("set_fft_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1202879215)
    mut args := unsafe { [1]voidptr{} }
    i64_size := i64(size)
    args[0] = unsafe{voidptr(&i64_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectSpectrumAnalyzer) get_fft_size() AudioEffectSpectrumAnalyzerFFTSize {
    mut object_out := i64(AudioEffectSpectrumAnalyzerFFTSize.fft_size_256)
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    fnname := StringName.new("get_fft_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3925405343)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AudioEffectSpectrumAnalyzerFFTSize(object_out)}
}
