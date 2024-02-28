module vgdextension

pub enum AnimationTrackType as i64 {
    type_value = 0
    type_position_3d = 1
    type_rotation_3d = 2
    type_scale_3d = 3
    type_blend_shape = 4
    type_method = 5
    type_bezier = 6
    type_audio = 7
    type_animation = 8
}

pub enum AnimationInterpolationType as i64 {
    interpolation_nearest = 0
    interpolation_linear = 1
    interpolation_cubic = 2
    interpolation_linear_angle = 3
    interpolation_cubic_angle = 4
}

pub enum AnimationUpdateMode as i64 {
    update_continuous = 0
    update_discrete = 1
    update_capture = 2
}

pub enum AnimationLoopMode as i64 {
    loop_none = 0
    loop_linear = 1
    loop_pingpong = 2
}

pub enum AnimationLoopedFlag as i64 {
    looped_flag_none = 0
    looped_flag_end = 1
    looped_flag_start = 2
}

pub enum AnimationFindMode as i64 {
    find_mode_nearest = 0
    find_mode_approx = 1
    find_mode_exact = 2
}

@[noinit]
pub struct Animation {
    Resource
}

pub fn (r &Animation) add_track(type_name AnimationTrackType, at_position i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("add_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3843682357)
    mut args := unsafe { [2]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    args[1] = unsafe{voidptr(&at_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) remove_track(track_idx i32) {
    classname := StringName.new("Animation")
    fnname := StringName.new("remove_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) get_track_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("get_track_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_get_type(track_idx i32) AnimationTrackType {
    mut object_out := i64(AnimationTrackType.type_value)
    classname := StringName.new("Animation")
    fnname := StringName.new("track_get_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3445944217)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationTrackType(object_out)}
}
pub fn (r &Animation) track_get_path(track_idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Animation")
    fnname := StringName.new("track_get_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_set_path(track_idx i32, path NodePath) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_set_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) find_track(path NodePath, type_name AnimationTrackType) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("find_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 245376003)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    i64_type_name := i64(type_name)
    args[1] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_move_up(track_idx i32) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_move_up")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_move_down(track_idx i32) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_move_down")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_move_to(track_idx i32, to_idx i32) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_move_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&to_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_swap(track_idx i32, with_idx i32) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_swap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&with_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_set_imported(track_idx i32, imported bool) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_set_imported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&imported)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_is_imported(track_idx i32) bool {
    mut object_out := false
    classname := StringName.new("Animation")
    fnname := StringName.new("track_is_imported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_set_enabled(track_idx i32, enabled bool) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_is_enabled(track_idx i32) bool {
    mut object_out := false
    classname := StringName.new("Animation")
    fnname := StringName.new("track_is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) position_track_insert_key(track_idx i32, time f64, position Vector3) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("position_track_insert_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2540608232)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) rotation_track_insert_key(track_idx i32, time f64, rotation Quaternion) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("rotation_track_insert_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4165004800)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&rotation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) scale_track_insert_key(track_idx i32, time f64, scale Vector3) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("scale_track_insert_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2540608232)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) blend_shape_track_insert_key(track_idx i32, time f64, amount f64) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("blend_shape_track_insert_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1534913637)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) position_track_interpolate(track_idx i32, time_sec f64) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Animation")
    fnname := StringName.new("position_track_interpolate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3285246857)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) rotation_track_interpolate(track_idx i32, time_sec f64) Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("Animation")
    fnname := StringName.new("rotation_track_interpolate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1988711975)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) scale_track_interpolate(track_idx i32, time_sec f64) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Animation")
    fnname := StringName.new("scale_track_interpolate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3285246857)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) blend_shape_track_interpolate(track_idx i32, time_sec f64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("blend_shape_track_interpolate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1900462983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_insert_key(track_idx i32, time f64, key Variant, transition f64) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("track_insert_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 808952278)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&key)}
    args[3] = unsafe{voidptr(&transition)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_remove_key(track_idx i32, key_idx i32) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_remove_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_remove_key_at_time(track_idx i32, time f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_remove_key_at_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_set_key_value(track_idx i32, key i32, value Variant) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_set_key_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2060538656)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_set_key_transition(track_idx i32, key_idx i32, transition f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_set_key_transition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    args[2] = unsafe{voidptr(&transition)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_set_key_time(track_idx i32, key_idx i32, time f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_set_key_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    args[2] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_get_key_transition(track_idx i32, key_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("track_get_key_transition")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_get_key_count(track_idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("track_get_key_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_get_key_value(track_idx i32, key_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Animation")
    fnname := StringName.new("track_get_key_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 678354945)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_get_key_time(track_idx i32, key_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("track_get_key_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_find_key(track_idx i32, time f64, find_mode AnimationFindMode) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("track_find_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3245197284)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    i64_find_mode := i64(find_mode)
    args[2] = unsafe{voidptr(&i64_find_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_set_interpolation_type(track_idx i32, interpolation AnimationInterpolationType) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_set_interpolation_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4112932513)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    i64_interpolation := i64(interpolation)
    args[1] = unsafe{voidptr(&i64_interpolation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_get_interpolation_type(track_idx i32) AnimationInterpolationType {
    mut object_out := i64(AnimationInterpolationType.interpolation_nearest)
    classname := StringName.new("Animation")
    fnname := StringName.new("track_get_interpolation_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1530756894)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationInterpolationType(object_out)}
}
pub fn (r &Animation) track_set_interpolation_loop_wrap(track_idx i32, interpolation bool) {
    classname := StringName.new("Animation")
    fnname := StringName.new("track_set_interpolation_loop_wrap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&interpolation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) track_get_interpolation_loop_wrap(track_idx i32) bool {
    mut object_out := false
    classname := StringName.new("Animation")
    fnname := StringName.new("track_get_interpolation_loop_wrap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) track_is_compressed(track_idx i32) bool {
    mut object_out := false
    classname := StringName.new("Animation")
    fnname := StringName.new("track_is_compressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) value_track_set_update_mode(track_idx i32, mode AnimationUpdateMode) {
    classname := StringName.new("Animation")
    fnname := StringName.new("value_track_set_update_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2854058312)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    i64_mode := i64(mode)
    args[1] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) value_track_get_update_mode(track_idx i32) AnimationUpdateMode {
    mut object_out := i64(AnimationUpdateMode.update_continuous)
    classname := StringName.new("Animation")
    fnname := StringName.new("value_track_get_update_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1440326473)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationUpdateMode(object_out)}
}
pub fn (r &Animation) value_track_interpolate(track_idx i32, time_sec f64) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Animation")
    fnname := StringName.new("value_track_interpolate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 491147702)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) method_track_get_name(track_idx i32, key_idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("Animation")
    fnname := StringName.new("method_track_get_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 351665558)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Animation) method_track_get_params(track_idx i32, key_idx i32) Array {
    mut object_out := Array{}
    classname := StringName.new("Animation")
    fnname := StringName.new("method_track_get_params")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2345056839)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) bezier_track_insert_key(track_idx i32, time f64, value f64, in_handle Vector2, out_handle Vector2) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("bezier_track_insert_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3656773645)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = unsafe{voidptr(&value)}
    args[3] = unsafe{voidptr(&in_handle)}
    args[4] = unsafe{voidptr(&out_handle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) bezier_track_set_key_value(track_idx i32, key_idx i32, value f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("bezier_track_set_key_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) bezier_track_set_key_in_handle(track_idx i32, key_idx i32, in_handle Vector2, balanced_value_time_ratio f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("bezier_track_set_key_in_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1719223284)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    args[2] = unsafe{voidptr(&in_handle)}
    args[3] = unsafe{voidptr(&balanced_value_time_ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) bezier_track_set_key_out_handle(track_idx i32, key_idx i32, out_handle Vector2, balanced_value_time_ratio f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("bezier_track_set_key_out_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1719223284)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    args[2] = unsafe{voidptr(&out_handle)}
    args[3] = unsafe{voidptr(&balanced_value_time_ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) bezier_track_get_key_value(track_idx i32, key_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("bezier_track_get_key_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) bezier_track_get_key_in_handle(track_idx i32, key_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Animation")
    fnname := StringName.new("bezier_track_get_key_in_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) bezier_track_get_key_out_handle(track_idx i32, key_idx i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Animation")
    fnname := StringName.new("bezier_track_get_key_out_handle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3016396712)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) bezier_track_interpolate(track_idx i32, time f64) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("bezier_track_interpolate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1900462983)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) audio_track_insert_key(track_idx i32, time f64, stream Resource, start_offset f64, end_offset f64) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_insert_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4021027286)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    args[2] = stream.ptr
    args[3] = unsafe{voidptr(&start_offset)}
    args[4] = unsafe{voidptr(&end_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) audio_track_set_key_stream(track_idx i32, key_idx i32, stream Resource) {
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_set_key_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3886397084)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    args[2] = stream.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) audio_track_set_key_start_offset(track_idx i32, key_idx i32, offset f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_set_key_start_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    args[2] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) audio_track_set_key_end_offset(track_idx i32, key_idx i32, offset f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_set_key_end_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3506521499)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    args[2] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) audio_track_get_key_stream(track_idx i32, key_idx i32) Resource {
    mut object_out := Resource{}
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_get_key_stream")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 635277205)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) audio_track_get_key_start_offset(track_idx i32, key_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_get_key_start_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) audio_track_get_key_end_offset(track_idx i32, key_idx i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_get_key_end_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3085491603)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) audio_track_set_use_blend(track_idx i32, enable bool) {
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_set_use_blend")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) audio_track_is_use_blend(track_idx i32) bool {
    mut object_out := false
    classname := StringName.new("Animation")
    fnname := StringName.new("audio_track_is_use_blend")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) animation_track_insert_key(track_idx i32, time f64, animation string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("animation_track_insert_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 158676774)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&time)}
    arg_sn2 := StringName.new(animation)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) animation_track_set_key_animation(track_idx i32, key_idx i32, animation string) {
    classname := StringName.new("Animation")
    fnname := StringName.new("animation_track_set_key_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 117615382)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    arg_sn2 := StringName.new(animation)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) animation_track_get_key_animation(track_idx i32, key_idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("Animation")
    fnname := StringName.new("animation_track_get_key_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 351665558)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = unsafe{voidptr(&key_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Animation) set_length(time_sec f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("set_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("get_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) set_loop_mode(loop_mode AnimationLoopMode) {
    classname := StringName.new("Animation")
    fnname := StringName.new("set_loop_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3155355575)
    mut args := unsafe { [1]voidptr{} }
    i64_loop_mode := i64(loop_mode)
    args[0] = unsafe{voidptr(&i64_loop_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) get_loop_mode() AnimationLoopMode {
    mut object_out := i64(AnimationLoopMode.loop_none)
    classname := StringName.new("Animation")
    fnname := StringName.new("get_loop_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1988889481)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationLoopMode(object_out)}
}
pub fn (r &Animation) set_step(size_sec f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("set_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) get_step() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Animation")
    fnname := StringName.new("get_step")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Animation) clear() {
    classname := StringName.new("Animation")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) copy_track(track_idx i32, to_animation Animation) {
    classname := StringName.new("Animation")
    fnname := StringName.new("copy_track")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 148001024)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&track_idx)}
    args[1] = to_animation.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Animation) compress(page_size u32, fps u32, split_tolerance f64) {
    classname := StringName.new("Animation")
    fnname := StringName.new("compress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3608408117)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&page_size)}
    args[1] = unsafe{voidptr(&fps)}
    args[2] = unsafe{voidptr(&split_tolerance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
