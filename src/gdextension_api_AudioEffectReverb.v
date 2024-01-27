pub type AudioEffectReverb = voidptr

pub fn (mut r AudioEffectReverb) set_predelay_msec(msec f32) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_predelay_msec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_predelay_msec() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_predelay_msec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_predelay_feedback(feedback f32) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_predelay_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_predelay_feedback() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_predelay_feedback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_room_size(size f32) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_room_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_room_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_room_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_damping(amount f32) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_damping() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_damping")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_spread(amount f32) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_spread() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_spread")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_dry(amount f32) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_dry")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_dry() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_dry")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_wet(amount f32) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_wet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_wet() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_wet")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AudioEffectReverb) set_hpf(amount f32) {
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("set_hpf")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioEffectReverb) get_hpf() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AudioEffectReverb")
    defer { classname.deinit() }
    fnname := StringName.new("get_hpf")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
