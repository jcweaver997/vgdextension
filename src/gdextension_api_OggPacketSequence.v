module vgdextension

pub type OggPacketSequence = voidptr

pub fn (mut r OggPacketSequence) set_packet_data(packet_data Array) {
    classname := StringName.new("OggPacketSequence")
    defer { classname.deinit() }
    fnname := StringName.new("set_packet_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OggPacketSequence) get_packet_data() Array {
    mut object_out := Array{}
    classname := StringName.new("OggPacketSequence")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OggPacketSequence) set_packet_granule_positions(granule_positions PackedInt64Array) {
    classname := StringName.new("OggPacketSequence")
    defer { classname.deinit() }
    fnname := StringName.new("set_packet_granule_positions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3709968205)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OggPacketSequence) get_packet_granule_positions() PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("OggPacketSequence")
    defer { classname.deinit() }
    fnname := StringName.new("get_packet_granule_positions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 235988956)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OggPacketSequence) set_sampling_rate(sampling_rate f32) {
    classname := StringName.new("OggPacketSequence")
    defer { classname.deinit() }
    fnname := StringName.new("set_sampling_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OggPacketSequence) get_sampling_rate() f32 {
    mut object_out := f32(0)
    classname := StringName.new("OggPacketSequence")
    defer { classname.deinit() }
    fnname := StringName.new("get_sampling_rate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OggPacketSequence) get_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("OggPacketSequence")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
