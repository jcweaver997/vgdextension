module vgdextension

@[noinit]
pub struct SkeletonModification2DStackHolder {
    SkeletonModification2D
}

pub fn (r &SkeletonModification2DStackHolder) set_held_modification_stack(held_modification_stack SkeletonModificationStack2D) {
    classname := StringName.new("SkeletonModification2DStackHolder")
    fnname := StringName.new("set_held_modification_stack")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3907307132)
    mut args := unsafe { [1]voidptr{} }
    args[0] = held_modification_stack.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SkeletonModification2DStackHolder) get_held_modification_stack() SkeletonModificationStack2D {
    mut object_out := SkeletonModificationStack2D{}
    classname := StringName.new("SkeletonModification2DStackHolder")
    fnname := StringName.new("get_held_modification_stack")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2107508396)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
