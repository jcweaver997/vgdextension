module vgdextension

pub enum AudioEffectPitchShiftFFTSize {
    fft_size_256 = 0
    fft_size_512 = 1
    fft_size_1024 = 2
    fft_size_2048 = 3
    fft_size_4096 = 4
    fft_size_max = 5
}

@[noinit]
pub struct AudioEffectPitchShift {
    AudioEffect
}

pub fn (mut r AudioEffectPitchShift) set_pitch_scale(rate f64) {
    classname := StringName.new("AudioEffectPitchShift")
    defer { classname.deinit() }
    fnname := StringName.new("set_pitch_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectPitchShift) get_pitch_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectPitchShift")
    defer { classname.deinit() }
    fnname := StringName.new("get_pitch_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectPitchShift) set_oversampling(amount i32) {
    classname := StringName.new("AudioEffectPitchShift")
    defer { classname.deinit() }
    fnname := StringName.new("set_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectPitchShift) get_oversampling() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioEffectPitchShift")
    defer { classname.deinit() }
    fnname := StringName.new("get_oversampling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectPitchShift) set_fft_size(size AudioEffectPitchShiftFFTSize) {
    classname := StringName.new("AudioEffectPitchShift")
    defer { classname.deinit() }
    fnname := StringName.new("set_fft_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323518741)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AudioEffectPitchShift) get_fft_size() AudioEffectPitchShiftFFTSize {
    mut object_out := AudioEffectPitchShiftFFTSize.fft_size_256
    classname := StringName.new("AudioEffectPitchShift")
    defer { classname.deinit() }
    fnname := StringName.new("get_fft_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2361246789)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
