module vgdextension

pub struct AnimationLibrary {
    Resource
}

pub fn (mut r AnimationLibrary) add_animation(name StringName, animation Animation) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("AnimationLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("add_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1811855551)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = animation.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationLibrary) remove_animation(name StringName) {
    classname := StringName.new("AnimationLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("remove_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AnimationLibrary) rename_animation(name StringName, newname StringName) {
    classname := StringName.new("AnimationLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("rename_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&newname)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationLibrary) has_animation(name StringName) bool {
    mut object_out := false
    classname := StringName.new("AnimationLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("has_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationLibrary) get_animation(name StringName) Animation {
    mut object_out := Animation{}
    classname := StringName.new("AnimationLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2933122410)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &AnimationLibrary) get_animation_list() Array {
    mut object_out := Array{}
    classname := StringName.new("AnimationLibrary")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
