module vgdextension

@[noinit]
pub struct AudioListener3D {
    Node3D
}

pub fn (mut r AudioListener3D) make_current() {
    classname := StringName.new("AudioListener3D")
    fnname := StringName.new("make_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AudioListener3D) clear_current() {
    classname := StringName.new("AudioListener3D")
    fnname := StringName.new("clear_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioListener3D) is_current() bool {
    mut object_out := false
    classname := StringName.new("AudioListener3D")
    fnname := StringName.new("is_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AudioListener3D) get_listener_transform() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("AudioListener3D")
    fnname := StringName.new("get_listener_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
