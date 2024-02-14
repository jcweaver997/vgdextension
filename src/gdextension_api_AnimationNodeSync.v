module vgdextension

@[noinit]
pub struct AnimationNodeSync {
    AnimationNode
}

pub fn (mut r AnimationNodeSync) set_use_sync(enable bool) {
    classname := StringName.new("AnimationNodeSync")
    fnname := StringName.new("set_use_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeSync) is_using_sync() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeSync")
    fnname := StringName.new("is_using_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
