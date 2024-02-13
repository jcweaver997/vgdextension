module vgdextension

@[noinit]
pub struct JavaClassWrapper {
    Object
}

pub fn JavaClassWrapper.get_singleton() JavaClassWrapper {
    sn := StringName.new("JavaClassWrapper")
    defer {sn.deinit()}
    o := JavaClassWrapper{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r JavaClassWrapper) wrap(name String) JavaClass {
    mut object_out := JavaClass{}
    classname := StringName.new("JavaClassWrapper")
    defer { classname.deinit() }
    fnname := StringName.new("wrap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1124367868)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
