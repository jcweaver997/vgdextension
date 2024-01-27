pub enum CanvasItemMaterialBlendMode {
    blend_mode_mix = 0
    blend_mode_add = 1
    blend_mode_sub = 2
    blend_mode_mul = 3
    blend_mode_premult_alpha = 4
}

pub enum CanvasItemMaterialLightMode {
    light_mode_normal = 0
    light_mode_unshaded = 1
    light_mode_light_only = 2
}

pub type CanvasItemMaterial = voidptr

pub fn (mut r CanvasItemMaterial) set_blend_mode(blend_mode CanvasItemMaterialBlendMode) {
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1786054936)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasItemMaterial) get_blend_mode() CanvasItemMaterialBlendMode {
    mut object_out := CanvasItemMaterialBlendMode.blend_mode_mix
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3318684035)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasItemMaterial) set_light_mode(light_mode CanvasItemMaterialLightMode) {
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_light_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 628074070)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasItemMaterial) get_light_mode() CanvasItemMaterialLightMode {
    mut object_out := CanvasItemMaterialLightMode.light_mode_normal
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_light_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3863292382)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasItemMaterial) set_particles_animation(particles_anim bool) {
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_particles_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasItemMaterial) get_particles_animation() bool {
    mut object_out := false
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_particles_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasItemMaterial) set_particles_anim_h_frames(frames i32) {
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_particles_anim_h_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasItemMaterial) get_particles_anim_h_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_particles_anim_h_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasItemMaterial) set_particles_anim_v_frames(frames i32) {
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_particles_anim_v_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasItemMaterial) get_particles_anim_v_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_particles_anim_v_frames")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasItemMaterial) set_particles_anim_loop(loop bool) {
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_particles_anim_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasItemMaterial) get_particles_anim_loop() bool {
    mut object_out := false
    classname := StringName.new("CanvasItemMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_particles_anim_loop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
