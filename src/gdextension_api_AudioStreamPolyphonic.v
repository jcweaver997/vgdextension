pub type AudioStreamPolyphonic = voidptr

pub fn (mut r AudioStreamPolyphonic) set_polyphony(voices i32) {
    classname := StringName.new("AudioStreamPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("set_polyphony")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioStreamPolyphonic) get_polyphony() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AudioStreamPolyphonic")
    defer { classname.deinit() }
    fnname := StringName.new("get_polyphony")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
