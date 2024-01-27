pub type JavaClassWrapper = voidptr

pub fn (mut r JavaClassWrapper) wrap(name String) JavaClass {
    mut object_out := JavaClass(unsafe{nil})
    classname := StringName.new("JavaClassWrapper")
    defer { classname.deinit() }
    fnname := StringName.new("wrap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1124367868)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
