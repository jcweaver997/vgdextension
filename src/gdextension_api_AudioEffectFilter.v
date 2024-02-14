module vgdextension

pub enum AudioEffectFilterFilterDB as i64 {
    filter_6db = 0
    filter_12db = 1
    filter_18db = 2
    filter_24db = 3
}

@[noinit]
pub struct AudioEffectFilter {
    AudioEffect
}

pub fn (mut r AudioEffectFilter) set_cutoff(freq f64) {
    classname := StringName.new("AudioEffectFilter")
    fnname := StringName.new("set_cutoff")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&freq)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectFilter) get_cutoff() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectFilter")
    fnname := StringName.new("get_cutoff")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectFilter) set_resonance(amount f64) {
    classname := StringName.new("AudioEffectFilter")
    fnname := StringName.new("set_resonance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectFilter) get_resonance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectFilter")
    fnname := StringName.new("get_resonance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectFilter) set_gain(amount f64) {
    classname := StringName.new("AudioEffectFilter")
    fnname := StringName.new("set_gain")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectFilter) get_gain() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AudioEffectFilter")
    fnname := StringName.new("get_gain")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AudioEffectFilter) set_db(amount AudioEffectFilterFilterDB) {
    classname := StringName.new("AudioEffectFilter")
    fnname := StringName.new("set_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 771740901)
    mut args := unsafe { [1]voidptr{} }
    i64_amount := i64(amount)
    args[0] = unsafe{voidptr(&i64_amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioEffectFilter) get_db() AudioEffectFilterFilterDB {
    mut object_out := i64(AudioEffectFilterFilterDB.filter_6db)
    classname := StringName.new("AudioEffectFilter")
    fnname := StringName.new("get_db")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3981721890)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AudioEffectFilterFilterDB(object_out)}
}
