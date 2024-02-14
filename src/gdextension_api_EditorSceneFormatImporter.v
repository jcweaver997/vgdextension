module vgdextension

@[noinit]
pub struct EditorSceneFormatImporter {
    RefCounted
}

pub interface IEditorSceneFormatImporterGetImportFlags {
    mut:
    virt_get_import_flags() u32
}

pub fn (r &EditorSceneFormatImporter) uget_import_flags() u32 {
    mut object_out := u32(0)
    classname := StringName.new("EditorSceneFormatImporter")
    fnname := StringName.new("_get_import_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorSceneFormatImporterGetExtensions {
    mut:
    virt_get_extensions() PackedStringArray
}

pub fn (r &EditorSceneFormatImporter) uget_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorSceneFormatImporter")
    fnname := StringName.new("_get_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorSceneFormatImporterImportScene {
    mut:
    virt_import_scene(path String, flags u32, options Dictionary) Object
}

pub fn (mut r EditorSceneFormatImporter) uimport_scene(path String, flags u32, options Dictionary) Object {
    mut object_out := Object{}
    classname := StringName.new("EditorSceneFormatImporter")
    fnname := StringName.new("_import_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&flags)}
    args[2] = unsafe{voidptr(&options)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorSceneFormatImporterGetImportOptions {
    mut:
    virt_get_import_options(path String)
}

pub fn (mut r EditorSceneFormatImporter) uget_import_options(path String) {
    classname := StringName.new("EditorSceneFormatImporter")
    fnname := StringName.new("_get_import_options")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEditorSceneFormatImporterGetOptionVisibility {
    mut:
    virt_get_option_visibility(path String, for_animation bool, option String) Variant
}

pub fn (r &EditorSceneFormatImporter) uget_option_visibility(path String, for_animation bool, option String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("EditorSceneFormatImporter")
    fnname := StringName.new("_get_option_visibility")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&for_animation)}
    args[2] = unsafe{voidptr(&option)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
