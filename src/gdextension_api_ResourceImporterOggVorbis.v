module vgdextension

@[noinit]
pub struct ResourceImporterOggVorbis {
    ResourceImporter
}

pub fn ResourceImporterOggVorbis.load_from_buffer(buffer PackedByteArray) AudioStreamOggVorbis {
    mut object_out := AudioStreamOggVorbis{}
    classname := StringName.new("ResourceImporterOggVorbis")
    fnname := StringName.new("load_from_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 354904730)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn ResourceImporterOggVorbis.load_from_file(path string) AudioStreamOggVorbis {
    mut object_out := AudioStreamOggVorbis{}
    classname := StringName.new("ResourceImporterOggVorbis")
    fnname := StringName.new("load_from_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 797568536)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
