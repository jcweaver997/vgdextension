pub type AudioEffectAmplify = voidptr

pub fn (mut r AudioEffectAmplify) set_volume_db(volume f32) {
    classname := StringName.new("AudioEffectAmplify")
    defer { classname.deinit() }
    fnname := StringName.new("set_volume_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectAmplify) get_volume_db() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectAmplify")
    defer { classname.deinit() }
    fnname := StringName.new("get_volume_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
