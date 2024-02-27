module vgdextension

@[noinit]
pub struct EditorResourcePreviewGenerator {
    RefCounted
}

pub interface IEditorResourcePreviewGeneratorHandles {
    mut:
    virt_handles(type_name String) bool
}

pub fn (r &EditorResourcePreviewGenerator) uhandles(type_name string) bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePreviewGenerator")
    fnname := StringName.new("_handles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(type_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorResourcePreviewGeneratorGenerate {
    mut:
    virt_generate(resource Resource, size Vector2i, metadata Dictionary) Texture2D
}

pub fn (r &EditorResourcePreviewGenerator) ugenerate(resource Resource, size Vector2i, metadata Dictionary) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("EditorResourcePreviewGenerator")
    fnname := StringName.new("_generate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = resource.ptr
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorResourcePreviewGeneratorGenerateFromPath {
    mut:
    virt_generate_from_path(path String, size Vector2i, metadata Dictionary) Texture2D
}

pub fn (r &EditorResourcePreviewGenerator) ugenerate_from_path(path string, size Vector2i, metadata Dictionary) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("EditorResourcePreviewGenerator")
    fnname := StringName.new("_generate_from_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&size)}
    args[2] = unsafe{voidptr(&metadata)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorResourcePreviewGeneratorGenerateSmallPreviewAutomatically {
    mut:
    virt_generate_small_preview_automatically() bool
}

pub fn (r &EditorResourcePreviewGenerator) ugenerate_small_preview_automatically() bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePreviewGenerator")
    fnname := StringName.new("_generate_small_preview_automatically")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorResourcePreviewGeneratorCanGenerateSmallPreview {
    mut:
    virt_can_generate_small_preview() bool
}

pub fn (r &EditorResourcePreviewGenerator) ucan_generate_small_preview() bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePreviewGenerator")
    fnname := StringName.new("_can_generate_small_preview")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
