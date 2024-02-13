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
    defer { classname.deinit() }
    fnname := StringName.new("_instantiate_playback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamGetStreamName {
    mut:
    virt_get_stream_name() String
}

pub fn (r &AudioStream) uget_stream_name() String {
    mut object_out := String{}
    classname := StringName.new("AudioStream")
    defer { classname.deinit() }
    fnname := StringName.new("_get_stream_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamGetLength {
    mut:
    virt_get_length() f64
}

pub fn (r &AudioStream) uget_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStream")
    defer { classname.deinit() }
    fnname := StringName.new("_get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamIsMonophonic {
    mut:
    virt_is_monophonic() bool
}

pub fn (r &AudioStream) uis_monophonic() bool {
    mut object_out := false
    classname := StringName.new("AudioStream")
    defer { classname.deinit() }
    fnname := StringName.new("_is_monophonic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamGetBpm {
    mut:
    virt_get_bpm() f64
}

pub fn (r &AudioStream) uget_bpm() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStream")
    defer { classname.deinit() }
    fnname := StringName.new("_get_bpm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IAudioStreamGetBeatCount {
    mut:
    virt_get_beat_count() i32
}

pub fn (r &AudioStream) uget_beat_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStream")
    defer { classname.deinit() }
    fnname := StringName.new("_get_beat_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioStream) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioStream")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioStream) is_monophonic() bool {
    mut object_out := false
    classname := StringName.new("AudioStream")
    defer { classname.deinit() }
    fnname := StringName.new("is_monophonic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioStream) instantiate_playback() AudioStreamPlayback {
    mut object_out := AudioStreamPlayback{}
    classname := StringName.new("AudioStream")
    defer { classname.deinit() }
    fnname := StringName.new("instantiate_playback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 210135309)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
