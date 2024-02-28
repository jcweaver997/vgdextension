module vgdextension

@[noinit]
pub struct AudioListener2D {
    Node2D
}

pub fn (r &AudioListener2D) make_current() {
    classname := StringName.new("AudioListener2D")
    fnname := StringName.new("make_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioListener2D) clear_current() {
    classname := StringName.new("AudioListener2D")
    fnname := StringName.new("clear_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AudioListener2D) is_current() bool {
    mut object_out := false
    classname := StringName.new("AudioListener2D")
    fnname := StringName.new("is_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
