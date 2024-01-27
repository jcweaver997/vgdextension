module vgdextension

pub type AudioEffectPanner = voidptr

pub fn (mut r AudioEffectPanner) set_pan(cpanume f32) {
    classname := StringName.new("AudioEffectPanner")
    defer { classname.deinit() }
    fnname := StringName.new("set_pan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectPanner) get_pan() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectPanner")
    defer { classname.deinit() }
    fnname := StringName.new("get_pan")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
