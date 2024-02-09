module vgdextension

pub struct RDShaderSource {
    RefCounted
}

pub fn (mut r RDShaderSource) set_stage_source(stage RenderingDeviceShaderStage, source String) {
    classname := StringName.new("RDShaderSource")
    defer { classname.deinit() }
    fnname := StringName.new("set_stage_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 620821314)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&stage)}
    args[1] = unsafe{voidptr(&source)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDShaderSource) get_stage_source(stage RenderingDeviceShaderStage) String {
    mut object_out := String{}
    classname := StringName.new("RDShaderSource")
    defer { classname.deinit() }
    fnname := StringName.new("get_stage_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354920045)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stage)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RDShaderSource) set_language(language RenderingDeviceShaderLanguage) {
    classname := StringName.new("RDShaderSource")
    defer { classname.deinit() }
    fnname := StringName.new("set_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422186742)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RDShaderSource) get_language() RenderingDeviceShaderLanguage {
    mut object_out := RenderingDeviceShaderLanguage.shader_language_glsl
    classname := StringName.new("RDShaderSource")
    defer { classname.deinit() }
    fnname := StringName.new("get_language")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1063538261)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
