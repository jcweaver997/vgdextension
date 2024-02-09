module vgdextension

pub struct AudioEffectInstance {
    RefCounted
}

pub interface IAudioEffectInstanceProcess {
    mut:
    virt_process(src_buffer voidptr, dst_buffer &AudioFrame, frame_count i32)
}

pub fn (mut r AudioEffectInstance) uprocess(src_buffer voidptr, dst_buffer &AudioFrame, frame_count i32) {
    classname := StringName.new("AudioEffectInstance")
    defer { classname.deinit() }
    fnname := StringName.new("_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&src_buffer)}
    args[1] = unsafe{voidptr(&dst_buffer)}
    args[2] = unsafe{voidptr(&frame_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IAudioEffectInstanceProcessSilence {
    mut:
    virt_process_silence() bool
}

pub fn (r &AudioEffectInstance) uprocess_silence() bool {
    mut object_out := false
    classname := StringName.new("AudioEffectInstance")
    defer { classname.deinit() }
    fnname := StringName.new("_process_silence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
