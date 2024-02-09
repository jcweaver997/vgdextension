module vgdextension

pub enum AudioEffectSpectrumAnalyzerFFTSize {
    fft_size_256 = 0
    fft_size_512 = 1
    fft_size_1024 = 2
    fft_size_2048 = 3
    fft_size_4096 = 4
    fft_size_max = 5
}

pub struct AudioEffectSpectrumAnalyzer {
    AudioEffect
}

pub fn (mut r AudioEffectSpectrumAnalyzer) set_buffer_length(seconds f64) {
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffer_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectSpectrumAnalyzer) get_buffer_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffer_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectSpectrumAnalyzer) set_tap_back_pos(seconds f64) {
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    defer { classname.deinit() }
    fnname := StringName.new("set_tap_back_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&seconds)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectSpectrumAnalyzer) get_tap_back_pos() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    defer { classname.deinit() }
    fnname := StringName.new("get_tap_back_pos")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectSpectrumAnalyzer) set_fft_size(size AudioEffectSpectrumAnalyzerFFTSize) {
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    defer { classname.deinit() }
    fnname := StringName.new("set_fft_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1202879215)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectSpectrumAnalyzer) get_fft_size() AudioEffectSpectrumAnalyzerFFTSize {
    mut object_out := AudioEffectSpectrumAnalyzerFFTSize.fft_size_256
    classname := StringName.new("AudioEffectSpectrumAnalyzer")
    defer { classname.deinit() }
    fnname := StringName.new("get_fft_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3925405343)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
