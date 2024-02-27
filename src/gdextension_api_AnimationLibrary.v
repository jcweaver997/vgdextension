module vgdextension

@[noinit]
pub struct AnimationLibrary {
    Resource
}

pub fn (mut r AnimationLibrary) add_animation(name string, animation Animation) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("AnimationLibrary")
    fnname := StringName.new("add_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1811855551)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = animation.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r AnimationLibrary) remove_animation(name string) {
    classname := StringName.new("AnimationLibrary")
    fnname := StringName.new("remove_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationLibrary) rename_animation(name string, newname string) {
    classname := StringName.new("AnimationLibrary")
    fnname := StringName.new("rename_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(newname)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationLibrary) has_animation(name string) bool {
    mut object_out := false
    classname := StringName.new("AnimationLibrary")
    fnname := StringName.new("has_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationLibrary) get_animation(name string) Animation {
    mut object_out := Animation{}
    classname := StringName.new("AnimationLibrary")
    fnname := StringName.new("get_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2933122410)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationLibrary) get_animation_list() Array {
    mut object_out := Array{}
    classname := StringName.new("AnimationLibrary")
    fnname := StringName.new("get_animation_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
