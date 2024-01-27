module vgdextension

pub type AudioEffectEQ = voidptr

pub fn (mut r AudioEffectEQ) set_band_gain_db(band_idx i32, volume_db f32) {
    classname := StringName.new("AudioEffectEQ")
    defer { classname.deinit() }
    fnname := StringName.new("set_band_gain_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectEQ) get_band_gain_db(band_idx i32) f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectEQ")
    defer { classname.deinit() }
    fnname := StringName.new("get_band_gain_db")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&band_idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AudioEffectEQ) get_band_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioEffectEQ")
    defer { classname.deinit() }
    fnname := StringName.new("get_band_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
