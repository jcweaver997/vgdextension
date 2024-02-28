module vgdextension

pub enum EditorFeatureProfileFeature as i64 {
    feature_3d = 0
    feature_script = 1
    feature_asset_lib = 2
    feature_scene_tree = 3
    feature_node_dock = 4
    feature_filesystem_dock = 5
    feature_import_dock = 6
    feature_history_dock = 7
    feature_max = 8
}

@[noinit]
pub struct EditorFeatureProfile {
    RefCounted
}

pub fn (r &EditorFeatureProfile) set_disable_class(class_name string, disable bool) {
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("set_disable_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2524380260)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFeatureProfile) is_class_disabled(class_name string) bool {
    mut object_out := false
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("is_class_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(class_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFeatureProfile) set_disable_class_editor(class_name string, disable bool) {
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("set_disable_class_editor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2524380260)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFeatureProfile) is_class_editor_disabled(class_name string) bool {
    mut object_out := false
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("is_class_editor_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(class_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFeatureProfile) set_disable_class_property(class_name string, property string, disable bool) {
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("set_disable_class_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 865197084)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(class_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(property)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFeatureProfile) is_class_property_disabled(class_name string, property string) bool {
    mut object_out := false
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("is_class_property_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(property)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFeatureProfile) set_disable_feature(feature EditorFeatureProfileFeature, disable bool) {
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("set_disable_feature")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1884871044)
    mut args := unsafe { [2]voidptr{} }
    i64_feature := i64(feature)
    args[0] = unsafe{voidptr(&i64_feature)}
    args[1] = unsafe{voidptr(&disable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorFeatureProfile) is_feature_disabled(feature EditorFeatureProfileFeature) bool {
    mut object_out := false
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("is_feature_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2974403161)
    mut args := unsafe { [1]voidptr{} }
    i64_feature := i64(feature)
    args[0] = unsafe{voidptr(&i64_feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFeatureProfile) get_feature_name(feature EditorFeatureProfileFeature) string {
    mut object_out := String{}
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("get_feature_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3401335809)
    mut args := unsafe { [1]voidptr{} }
    i64_feature := i64(feature)
    args[0] = unsafe{voidptr(&i64_feature)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &EditorFeatureProfile) save_to_file(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("save_to_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &EditorFeatureProfile) load_from_file(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("EditorFeatureProfile")
    fnname := StringName.new("load_from_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
