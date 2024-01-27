module vgdextension

pub type SkeletonModification2DStackHolder = voidptr

pub fn (mut r SkeletonModification2DStackHolder) set_held_modification_stack(held_modification_stack SkeletonModificationStack2D) {
    classname := StringName.new("SkeletonModification2DStackHolder")
    defer { classname.deinit() }
    fnname := StringName.new("set_held_modification_stack")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3907307132)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SkeletonModification2DStackHolder) get_held_modification_stack() SkeletonModificationStack2D {
    mut object_out := SkeletonModificationStack2D(unsafe{nil})
    classname := StringName.new("SkeletonModification2DStackHolder")
    defer { classname.deinit() }
    fnname := StringName.new("get_held_modification_stack")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2107508396)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
