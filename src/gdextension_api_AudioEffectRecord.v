module vgdextension

@[noinit]
pub struct AudioEffectRecord {
    AudioEffect
}

pub fn (mut r AudioEffectRecord) set_recording_active(record bool) {
    classname := StringName.new("AudioEffectRecord")
    fnname := StringName.new("set_recording_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&record)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectRecord) is_recording_active() bool {
    mut object_out := false
    classname := StringName.new("AudioEffectRecord")
    fnname := StringName.new("is_recording_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectRecord) set_format(format AudioStreamWAVFormat) {
    classname := StringName.new("AudioEffectRecord")
    fnname := StringName.new("set_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 60648488)
    mut args := unsafe { [1]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectRecord) get_format() AudioStreamWAVFormat {
    mut object_out := i64(AudioStreamWAVFormat.format_8_bits)
    classname := StringName.new("AudioEffectRecord")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3151724922)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AudioStreamWAVFormat(object_out)}
}
pub fn (r &AudioEffectRecord) get_recording() AudioStreamWAV {
    mut object_out := AudioStreamWAV{}
    classname := StringName.new("AudioEffectRecord")
    fnname := StringName.new("get_recording")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2964110865)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
