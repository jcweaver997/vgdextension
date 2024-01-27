pub type AudioListener3D = voidptr

pub fn (mut r AudioListener3D) make_current() {
    classname := StringName.new("AudioListener3D")
    defer { classname.deinit() }
    fnname := StringName.new("make_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AudioListener3D) clear_current() {
    classname := StringName.new("AudioListener3D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AudioListener3D) is_current() bool {
    mut object_out := false
    classname := StringName.new("AudioListener3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &AudioListener3D) get_listener_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("AudioListener3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_listener_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
