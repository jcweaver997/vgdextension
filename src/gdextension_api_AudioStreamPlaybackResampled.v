module vgdextension

@[noinit]
pub struct AudioStreamPlaybackResampled {
    AudioStreamPlayback
}

pub interface IAudioStreamPlaybackResampledMixResampled {
    mut:
    virt_mix_resampled(dst_buffer &AudioFrame, frame_count i32) i32
}

pub fn (mut r AudioStreamPlaybackResampled) umix_resampled(dst_buffer &AudioFrame, frame_count i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPlaybackResampled")
    defer { classname.deinit() }
    fnname := StringName.new("_mix_resampled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&dst_buffer)}
    args[1] = unsafe{voidptr(&frame_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamPlaybackResampledGetStreamSamplingRate {
    mut:
    virt_get_stream_sampling_rate() f64
}

pub fn (r &AudioStreamPlaybackResampled) uget_stream_sampling_rate() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStreamPlaybackResampled")
    defer { classname.deinit() }
    fnname := StringName.new("_get_stream_sampling_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStreamPlaybackResampled) begin_resample() {
    classname := StringName.new("AudioStreamPlaybackResampled")
    defer { classname.deinit() }
    fnname := StringName.new("begin_resample")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
