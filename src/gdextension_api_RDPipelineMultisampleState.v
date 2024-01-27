pub type RDPipelineMultisampleState = voidptr

pub fn (mut r RDPipelineMultisampleState) set_sample_count(p_member RenderingDeviceTextureSamples) {
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("set_sample_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3774171498)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineMultisampleState) get_sample_count() RenderingDeviceTextureSamples {
    mut object_out := RenderingDeviceTextureSamples.texture_samples_1
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("get_sample_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 407791724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineMultisampleState) set_enable_sample_shading(p_member bool) {
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_sample_shading")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineMultisampleState) get_enable_sample_shading() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_sample_shading")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineMultisampleState) set_min_sample_shading(p_member f32) {
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("set_min_sample_shading")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineMultisampleState) get_min_sample_shading() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("get_min_sample_shading")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineMultisampleState) set_enable_alpha_to_coverage(p_member bool) {
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_alpha_to_coverage")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineMultisampleState) get_enable_alpha_to_coverage() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_alpha_to_coverage")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineMultisampleState) set_enable_alpha_to_one(p_member bool) {
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_alpha_to_one")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineMultisampleState) get_enable_alpha_to_one() bool {
    mut object_out := false
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("get_enable_alpha_to_one")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RDPipelineMultisampleState) set_sample_masks(masks Array) {
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("set_sample_masks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RDPipelineMultisampleState) get_sample_masks() Array {
    mut object_out := Array{}
    classname := StringName.new("RDPipelineMultisampleState")
    defer { classname.deinit() }
    fnname := StringName.new("get_sample_masks")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
