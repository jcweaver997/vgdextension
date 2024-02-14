module vgdextension

@[noinit]
pub struct OggPacketSequence {
    Resource
}

pub fn (mut r OggPacketSequence) set_packet_data(packet_data Array) {
    classname := StringName.new("OggPacketSequence")
    fnname := StringName.new("set_packet_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&packet_data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OggPacketSequence) get_packet_data() Array {
    mut object_out := Array{}
    classname := StringName.new("OggPacketSequence")
    fnname := StringName.new("get_packet_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OggPacketSequence) set_packet_granule_positions(granule_positions PackedInt64Array) {
    classname := StringName.new("OggPacketSequence")
    fnname := StringName.new("set_packet_granule_positions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3709968205)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&granule_positions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OggPacketSequence) get_packet_granule_positions() PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("OggPacketSequence")
    fnname := StringName.new("get_packet_granule_positions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 235988956)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OggPacketSequence) set_sampling_rate(sampling_rate f64) {
    classname := StringName.new("OggPacketSequence")
    fnname := StringName.new("set_sampling_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sampling_rate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OggPacketSequence) get_sampling_rate() f64 {
    mut object_out := f64(0)
    classname := StringName.new("OggPacketSequence")
    fnname := StringName.new("get_sampling_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OggPacketSequence) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("OggPacketSequence")
    fnname := StringName.new("get_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
