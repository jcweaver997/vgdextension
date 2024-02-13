module vgdextension

@[noinit]
pub struct EditorResourceConversionPlugin {
    RefCounted
}

pub interface IEditorResourceConversionPluginConvertsTo {
    mut:
    virt_converts_to() String
}

pub fn (r &EditorResourceConversionPlugin) uconverts_to() String {
    mut object_out := String{}
    classname := StringName.new("EditorResourceConversionPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_converts_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IEditorResourceConversionPluginHandles {
    mut:
    virt_handles(resource Resource) bool
}

pub fn (r &EditorResourceConversionPlugin) uhandles(resource Resource) bool {
    mut object_out := false
    classname := StringName.new("EditorResourceConversionPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_handles")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IEditorResourceConversionPluginConvert {
    mut:
    virt_convert(resource Resource) Resource
}

pub fn (r &EditorResourceConversionPlugin) uconvert(resource Resource) Resource {
    mut object_out := Resource{}
    classname := StringName.new("EditorResourceConversionPlugin")
    defer { classname.deinit() }
    fnname := StringName.new("_convert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
