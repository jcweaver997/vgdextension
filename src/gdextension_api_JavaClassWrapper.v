module vgdextension

@[noinit]
pub struct JavaClassWrapper {
    Object
}

pub fn JavaClassWrapper.get_singleton() JavaClassWrapper {
    sn := StringName.new("JavaClassWrapper")
    o := JavaClassWrapper{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &JavaClassWrapper) wrap(name string) JavaClass {
    mut object_out := JavaClass{}
    classname := StringName.new("JavaClassWrapper")
    fnname := StringName.new("wrap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1124367868)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
