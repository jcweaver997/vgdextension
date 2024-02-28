module vgdextension

pub enum CanvasItemMaterialBlendMode as i64 {
    blend_mode_mix = 0
    blend_mode_add = 1
    blend_mode_sub = 2
    blend_mode_mul = 3
    blend_mode_premult_alpha = 4
}

pub enum CanvasItemMaterialLightMode as i64 {
    light_mode_normal = 0
    light_mode_unshaded = 1
    light_mode_light_only = 2
}

@[noinit]
pub struct CanvasItemMaterial {
    Material
}

pub fn (r &CanvasItemMaterial) set_blend_mode(blend_mode CanvasItemMaterialBlendMode) {
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("set_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1786054936)
    mut args := unsafe { [1]voidptr{} }
    i64_blend_mode := i64(blend_mode)
    args[0] = unsafe{voidptr(&i64_blend_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItemMaterial) get_blend_mode() CanvasItemMaterialBlendMode {
    mut object_out := i64(CanvasItemMaterialBlendMode.blend_mode_mix)
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("get_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3318684035)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CanvasItemMaterialBlendMode(object_out)}
}
pub fn (r &CanvasItemMaterial) set_light_mode(light_mode CanvasItemMaterialLightMode) {
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("set_light_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 628074070)
    mut args := unsafe { [1]voidptr{} }
    i64_light_mode := i64(light_mode)
    args[0] = unsafe{voidptr(&i64_light_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItemMaterial) get_light_mode() CanvasItemMaterialLightMode {
    mut object_out := i64(CanvasItemMaterialLightMode.light_mode_normal)
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("get_light_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3863292382)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CanvasItemMaterialLightMode(object_out)}
}
pub fn (r &CanvasItemMaterial) set_particles_animation(particles_anim bool) {
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("set_particles_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&particles_anim)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItemMaterial) get_particles_animation() bool {
    mut object_out := false
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("get_particles_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItemMaterial) set_particles_anim_h_frames(frames i32) {
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("set_particles_anim_h_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItemMaterial) get_particles_anim_h_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("get_particles_anim_h_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItemMaterial) set_particles_anim_v_frames(frames i32) {
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("set_particles_anim_v_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&frames)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItemMaterial) get_particles_anim_v_frames() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("get_particles_anim_v_frames")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItemMaterial) set_particles_anim_loop(loop bool) {
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("set_particles_anim_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&loop)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItemMaterial) get_particles_anim_loop() bool {
    mut object_out := false
    classname := StringName.new("CanvasItemMaterial")
    fnname := StringName.new("get_particles_anim_loop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
