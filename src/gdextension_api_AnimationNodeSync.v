module vgdextension

pub type AnimationNodeSync = voidptr

pub fn (mut r AnimationNodeSync) set_use_sync(enable bool) {
    classname := StringName.new("AnimationNodeSync")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeSync) is_using_sync() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeSync")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
