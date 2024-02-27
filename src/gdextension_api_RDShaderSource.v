module vgdextension

@[noinit]
pub struct RDShaderSource {
    RefCounted
}

pub fn (mut r RDShaderSource) set_stage_source(stage RenderingDeviceShaderStage, source string) {
    classname := StringName.new("RDShaderSource")
    fnname := StringName.new("set_stage_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 620821314)
    mut args := unsafe { [2]voidptr{} }
    i64_stage := i64(stage)
    args[0] = unsafe{voidptr(&i64_stage)}
    arg_sn1 := String.new(source)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDShaderSource) get_stage_source(stage RenderingDeviceShaderStage) string {
    mut object_out := String{}
    classname := StringName.new("RDShaderSource")
    fnname := StringName.new("get_stage_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354920045)
    mut args := unsafe { [1]voidptr{} }
    i64_stage := i64(stage)
    args[0] = unsafe{voidptr(&i64_stage)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r RDShaderSource) set_language(language RenderingDeviceShaderLanguage) {
    classname := StringName.new("RDShaderSource")
    fnname := StringName.new("set_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3422186742)
    mut args := unsafe { [1]voidptr{} }
    i64_language := i64(language)
    args[0] = unsafe{voidptr(&i64_language)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDShaderSource) get_language() RenderingDeviceShaderLanguage {
    mut object_out := i64(RenderingDeviceShaderLanguage.shader_language_glsl)
    classname := StringName.new("RDShaderSource")
    fnname := StringName.new("get_language")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1063538261)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceShaderLanguage(object_out)}
}
