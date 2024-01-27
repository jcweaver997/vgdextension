pub type AudioEffectInstance = voidptr

pub fn (mut r AudioEffectInstance) uprocess(src_buffer voidptr, dst_buffer &AudioFrame, frame_count i32) {
    classname := StringName.new("AudioEffectInstance")
    defer { classname.deinit() }
    fnname := StringName.new("_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectInstance) uprocess_silence() bool {
    mut object_out := false
    classname := StringName.new("AudioEffectInstance")
    defer { classname.deinit() }
    fnname := StringName.new("_process_silence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
