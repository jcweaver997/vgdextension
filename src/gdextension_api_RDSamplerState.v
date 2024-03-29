module vgdextension

@[noinit]
pub struct RDSamplerState {
    RefCounted
}

pub fn (r &RDSamplerState) set_mag_filter(p_member RenderingDeviceSamplerFilter) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_mag_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1493420382)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_mag_filter() RenderingDeviceSamplerFilter {
    mut object_out := i64(RenderingDeviceSamplerFilter.sampler_filter_nearest)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_mag_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2209202801)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceSamplerFilter(object_out)}
}
pub fn (r &RDSamplerState) set_min_filter(p_member RenderingDeviceSamplerFilter) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_min_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1493420382)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_min_filter() RenderingDeviceSamplerFilter {
    mut object_out := i64(RenderingDeviceSamplerFilter.sampler_filter_nearest)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_min_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2209202801)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceSamplerFilter(object_out)}
}
pub fn (r &RDSamplerState) set_mip_filter(p_member RenderingDeviceSamplerFilter) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_mip_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1493420382)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_mip_filter() RenderingDeviceSamplerFilter {
    mut object_out := i64(RenderingDeviceSamplerFilter.sampler_filter_nearest)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_mip_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2209202801)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceSamplerFilter(object_out)}
}
pub fn (r &RDSamplerState) set_repeat_u(p_member RenderingDeviceSamplerRepeatMode) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_repeat_u")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 246127626)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_repeat_u() RenderingDeviceSamplerRepeatMode {
    mut object_out := i64(RenderingDeviceSamplerRepeatMode.sampler_repeat_mode_repeat)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_repeat_u")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227895872)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceSamplerRepeatMode(object_out)}
}
pub fn (r &RDSamplerState) set_repeat_v(p_member RenderingDeviceSamplerRepeatMode) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_repeat_v")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 246127626)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_repeat_v() RenderingDeviceSamplerRepeatMode {
    mut object_out := i64(RenderingDeviceSamplerRepeatMode.sampler_repeat_mode_repeat)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_repeat_v")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227895872)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceSamplerRepeatMode(object_out)}
}
pub fn (r &RDSamplerState) set_repeat_w(p_member RenderingDeviceSamplerRepeatMode) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_repeat_w")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 246127626)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_repeat_w() RenderingDeviceSamplerRepeatMode {
    mut object_out := i64(RenderingDeviceSamplerRepeatMode.sampler_repeat_mode_repeat)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_repeat_w")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227895872)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceSamplerRepeatMode(object_out)}
}
pub fn (r &RDSamplerState) set_lod_bias(p_member f64) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_lod_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_lod_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_lod_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDSamplerState) set_use_anisotropy(p_member bool) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_use_anisotropy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_use_anisotropy() bool {
    mut object_out := false
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_use_anisotropy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDSamplerState) set_anisotropy_max(p_member f64) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_anisotropy_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_anisotropy_max() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_anisotropy_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDSamplerState) set_enable_compare(p_member bool) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_enable_compare")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_enable_compare() bool {
    mut object_out := false
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_enable_compare")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDSamplerState) set_compare_op(p_member RenderingDeviceCompareOperator) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_compare_op")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2573711505)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_compare_op() RenderingDeviceCompareOperator {
    mut object_out := i64(RenderingDeviceCompareOperator.compare_op_never)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_compare_op")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 269730778)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceCompareOperator(object_out)}
}
pub fn (r &RDSamplerState) set_min_lod(p_member f64) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_min_lod")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_min_lod() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_min_lod")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDSamplerState) set_max_lod(p_member f64) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_max_lod")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_max_lod() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_max_lod")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RDSamplerState) set_border_color(p_member RenderingDeviceSamplerBorderColor) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_border_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1115869595)
    mut args := unsafe { [1]voidptr{} }
    i64_p_member := i64(p_member)
    args[0] = unsafe{voidptr(&i64_p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_border_color() RenderingDeviceSamplerBorderColor {
    mut object_out := i64(RenderingDeviceSamplerBorderColor.sampler_border_color_float_transparent_black)
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_border_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3514246478)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{RenderingDeviceSamplerBorderColor(object_out)}
}
pub fn (r &RDSamplerState) set_unnormalized_uvw(p_member bool) {
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("set_unnormalized_uvw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&p_member)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RDSamplerState) get_unnormalized_uvw() bool {
    mut object_out := false
    classname := StringName.new("RDSamplerState")
    fnname := StringName.new("get_unnormalized_uvw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
