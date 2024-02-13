module vgdextension

@[noinit]
pub struct VideoStream {
    Resource
}

pub interface IVideoStreamInstantiatePlayback {
    mut:
    virt_instantiate_playback() VideoStreamPlayback
}

pub fn (mut r VideoStream) uinstantiate_playback() VideoStreamPlayback {
    mut object_out := VideoStreamPlayback{}
    classname := StringName.new("VideoStream")
    defer { classname.deinit() }
    fnname := StringName.new("_instantiate_playback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VideoStream) set_file(file String) {
    classname := StringName.new("VideoStream")
    defer { classname.deinit() }
    fnname := StringName.new("set_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r VideoStream) get_file() String {
    mut object_out := String{}
    classname := StringName.new("VideoStream")
    defer { classname.deinit() }
    fnname := StringName.new("get_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
