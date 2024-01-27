module vgdextension

pub enum TweenTweenProcessMode {
    tween_process_physics = 0
    tween_process_idle = 1
}

pub enum TweenTweenPauseMode {
    tween_pause_bound = 0
    tween_pause_stop = 1
    tween_pause_process = 2
}

pub enum TweenTransitionType {
    trans_linear = 0
    trans_sine = 1
    trans_quint = 2
    trans_quart = 3
    trans_quad = 4
    trans_expo = 5
    trans_elastic = 6
    trans_cubic = 7
    trans_circ = 8
    trans_bounce = 9
    trans_back = 10
    trans_spring = 11
}

pub enum TweenEaseType {
    ease_in = 0
    ease_out = 1
    ease_in_out = 2
    ease_out_in = 3
}

pub type Tween = voidptr

pub fn (mut r Tween) tween_property(object Object, property NodePath, final_val Variant, duration f32) PropertyTweener {
    mut object_out := PropertyTweener(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("tween_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4049770449)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    args[1] = unsafe{voidptr(&property)}
    args[2] = unsafe{voidptr(&final_val)}
    args[3] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) tween_interval(time f32) IntervalTweener {
    mut object_out := IntervalTweener(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("tween_interval")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 413360199)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) tween_callback(callback Callable) CallbackTweener {
    mut object_out := CallbackTweener(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("tween_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1540176488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&callback)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) tween_method(method Callable, from Variant, to Variant, duration f32) MethodTweener {
    mut object_out := MethodTweener(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("tween_method")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2337877153)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&method)}
    args[1] = unsafe{voidptr(&from)}
    args[2] = unsafe{voidptr(&to)}
    args[3] = unsafe{voidptr(&duration)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) custom_step(delta f32) bool {
    mut object_out := false
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("custom_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 330693286)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) stop() {
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Tween) pause() {
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("pause")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Tween) play() {
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("play")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Tween) kill() {
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("kill")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Tween) get_total_elapsed_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("get_total_elapsed_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) is_running() bool {
    mut object_out := false
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("is_running")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) is_valid() bool {
    mut object_out := false
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("is_valid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) bind_node(node Node) Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("bind_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2946786331)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) set_process_mode(mode TweenTweenProcessMode) Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("set_process_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 855258840)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) set_pause_mode(mode TweenTweenPauseMode) Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("set_pause_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3363368837)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) set_parallel(parallel bool) Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("set_parallel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1942052223)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parallel)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) set_loops(loops i32) Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("set_loops")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2670836414)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&loops)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Tween) get_loops_left() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("get_loops_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) set_speed_scale(speed f32) Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("set_speed_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3961971106)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&speed)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) set_trans(trans TweenTransitionType) Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("set_trans")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3965963875)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&trans)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) set_ease(ease TweenEaseType) Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("set_ease")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1208117252)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ease)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) parallel() Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("parallel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Tween) chain() Tween {
    mut object_out := Tween(unsafe{nil})
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("chain")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3426978995)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn Tween.interpolate_value(initial_value Variant, delta_value Variant, elapsed_time f32, duration f32, trans_type TweenTransitionType, ease_type TweenEaseType) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Tween")
    defer { classname.deinit() }
    fnname := StringName.new("interpolate_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3452526450)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&initial_value)}
    args[1] = unsafe{voidptr(&delta_value)}
    args[2] = unsafe{voidptr(&elapsed_time)}
    args[3] = unsafe{voidptr(&duration)}
    args[4] = unsafe{voidptr(&trans_type)}
    args[5] = unsafe{voidptr(&ease_type)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
