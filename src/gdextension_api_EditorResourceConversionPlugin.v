pub type EditorResourceConversionPlugin = voidptr

pub fn (r &EditorResourceConversionPlugin) uconverts_to() String {
    mut object_out := String{}
    classname := StringName.new("EditorResourceConversionPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_converts_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourceConversionPlugin) uhandles(resource Resource) bool {
    mut object_out := false
    classname := StringName.new("EditorResourceConversionPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_handles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourceConversionPlugin) uconvert(resource Resource) Resource {
    mut object_out := Resource(unsafe{nil})
    classname := StringName.new("EditorResourceConversionPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_convert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
