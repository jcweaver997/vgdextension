module vgdextension

@[noinit]
pub struct AudioStream {
    Resource
}

pub interface IAudioStreamInstantiatePlayback {
    mut:
    virt_instantiate_playback() AudioStreamPlayback
}

pub fn (r &AudioStream) uinstantiate_playback() AudioStreamPlayback {
    mut object_out := AudioStreamPlayback{}
    classname := StringName.new("AudioStream")
    fnname := StringName.new("_instantiate_playback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAudioStreamGetStreamName {
    mut:
    virt_get_stream_name() String
}

pub fn (r &AudioStream) uget_stream_name() string {
    mut object_out := String{}
    classname := StringName.new("AudioStream")
    fnname := StringName.new("_get_stream_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface IAudioStreamGetLength {
    mut:
    virt_get_length() f64
}

pub fn (r &AudioStream) uget_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStream")
    fnname := StringName.new("_get_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAudioStreamIsMonophonic {
    mut:
    virt_is_monophonic() bool
}

pub fn (r &AudioStream) uis_monophonic() bool {
    mut object_out := false
    classname := StringName.new("AudioStream")
    fnname := StringName.new("_is_monophonic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAudioStreamGetBpm {
    mut:
    virt_get_bpm() f64
}

pub fn (r &AudioStream) uget_bpm() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStream")
    fnname := StringName.new("_get_bpm")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IAudioStreamGetBeatCount {
    mut:
    virt_get_beat_count() i32
}

pub fn (r &AudioStream) uget_beat_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStream")
    fnname := StringName.new("_get_beat_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStream) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStream")
    fnname := StringName.new("get_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioStream) is_monophonic() bool {
    mut object_out := false
    classname := StringName.new("AudioStream")
    fnname := StringName.new("is_monophonic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioStream) instantiate_playback() AudioStreamPlayback {
    mut object_out := AudioStreamPlayback{}
    classname := StringName.new("AudioStream")
    fnname := StringName.new("instantiate_playback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 210135309)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
