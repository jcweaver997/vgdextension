module vgdextension

pub enum OpenXRInterfaceHand as i64 {
    hand_left = 0
    hand_right = 1
    hand_max = 2
}

pub enum OpenXRInterfaceHandMotionRange as i64 {
    hand_motion_range_unobstructed = 0
    hand_motion_range_conform_to_controller = 1
    hand_motion_range_max = 2
}

pub enum OpenXRInterfaceHandJoints as i64 {
    hand_joint_palm = 0
    hand_joint_wrist = 1
    hand_joint_thumb_metacarpal = 2
    hand_joint_thumb_proximal = 3
    hand_joint_thumb_distal = 4
    hand_joint_thumb_tip = 5
    hand_joint_index_metacarpal = 6
    hand_joint_index_proximal = 7
    hand_joint_index_intermediate = 8
    hand_joint_index_distal = 9
    hand_joint_index_tip = 10
    hand_joint_middle_metacarpal = 11
    hand_joint_middle_proximal = 12
    hand_joint_middle_intermediate = 13
    hand_joint_middle_distal = 14
    hand_joint_middle_tip = 15
    hand_joint_ring_metacarpal = 16
    hand_joint_ring_proximal = 17
    hand_joint_ring_intermediate = 18
    hand_joint_ring_distal = 19
    hand_joint_ring_tip = 20
    hand_joint_little_metacarpal = 21
    hand_joint_little_proximal = 22
    hand_joint_little_intermediate = 23
    hand_joint_little_distal = 24
    hand_joint_little_tip = 25
    hand_joint_max = 26
}

pub enum OpenXRInterfaceHandJointFlags as i64 {
    hand_joint_none = 0
    hand_joint_orientation_valid = 1
    hand_joint_orientation_tracked = 2
    hand_joint_position_valid = 4
    hand_joint_position_tracked = 8
    hand_joint_linear_velocity_valid = 16
    hand_joint_angular_velocity_valid = 32
}

@[noinit]
pub struct OpenXRInterface {
    XRInterface
}

pub fn (r &OpenXRInterface) get_display_refresh_rate() f64 {
    mut object_out := f64(0)
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_display_refresh_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInterface) set_display_refresh_rate(refresh_rate f64) {
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("set_display_refresh_rate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&refresh_rate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInterface) get_render_target_size_multiplier() f64 {
    mut object_out := f64(0)
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_render_target_size_multiplier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInterface) set_render_target_size_multiplier(multiplier f64) {
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("set_render_target_size_multiplier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multiplier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInterface) is_foveation_supported() bool {
    mut object_out := false
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("is_foveation_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRInterface) get_foveation_level() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_foveation_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInterface) set_foveation_level(foveation_level i32) {
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("set_foveation_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&foveation_level)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInterface) get_foveation_dynamic() bool {
    mut object_out := false
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_foveation_dynamic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInterface) set_foveation_dynamic(foveation_dynamic bool) {
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("set_foveation_dynamic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&foveation_dynamic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInterface) is_action_set_active(name string) bool {
    mut object_out := false
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("is_action_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInterface) set_action_set_active(name string, active bool) {
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("set_action_set_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInterface) get_action_sets() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_action_sets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRInterface) get_available_display_refresh_rates() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_available_display_refresh_rates")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInterface) set_motion_range(hand OpenXRInterfaceHand, motion_range OpenXRInterfaceHandMotionRange) {
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("set_motion_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 855158159)
    mut args := unsafe { [2]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    i64_motion_range := i64(motion_range)
    args[1] = unsafe{voidptr(&i64_motion_range)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInterface) get_motion_range(hand OpenXRInterfaceHand) OpenXRInterfaceHandMotionRange {
    mut object_out := i64(OpenXRInterfaceHandMotionRange.hand_motion_range_unobstructed)
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_motion_range")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3955838114)
    mut args := unsafe { [1]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{OpenXRInterfaceHandMotionRange(object_out)}
}
pub fn (r &OpenXRInterface) get_hand_joint_flags(hand OpenXRInterfaceHand, joint OpenXRInterfaceHandJoints) OpenXRInterfaceHandJointFlags {
    mut object_out := i64(OpenXRInterfaceHandJointFlags.hand_joint_none)
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_hand_joint_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 720567706)
    mut args := unsafe { [2]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    i64_joint := i64(joint)
    args[1] = unsafe{voidptr(&i64_joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{OpenXRInterfaceHandJointFlags(object_out)}
}
pub fn (r &OpenXRInterface) get_hand_joint_rotation(hand OpenXRInterfaceHand, joint OpenXRInterfaceHandJoints) Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_hand_joint_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1974618321)
    mut args := unsafe { [2]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    i64_joint := i64(joint)
    args[1] = unsafe{voidptr(&i64_joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRInterface) get_hand_joint_position(hand OpenXRInterfaceHand, joint OpenXRInterfaceHandJoints) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_hand_joint_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3529194242)
    mut args := unsafe { [2]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    i64_joint := i64(joint)
    args[1] = unsafe{voidptr(&i64_joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRInterface) get_hand_joint_radius(hand OpenXRInterfaceHand, joint OpenXRInterfaceHandJoints) f64 {
    mut object_out := f64(0)
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_hand_joint_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 901522724)
    mut args := unsafe { [2]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    i64_joint := i64(joint)
    args[1] = unsafe{voidptr(&i64_joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRInterface) get_hand_joint_linear_velocity(hand OpenXRInterfaceHand, joint OpenXRInterfaceHandJoints) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_hand_joint_linear_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3529194242)
    mut args := unsafe { [2]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    i64_joint := i64(joint)
    args[1] = unsafe{voidptr(&i64_joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRInterface) get_hand_joint_angular_velocity(hand OpenXRInterfaceHand, joint OpenXRInterfaceHandJoints) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("get_hand_joint_angular_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3529194242)
    mut args := unsafe { [2]voidptr{} }
    i64_hand := i64(hand)
    args[0] = unsafe{voidptr(&i64_hand)}
    i64_joint := i64(joint)
    args[1] = unsafe{voidptr(&i64_joint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInterface) is_hand_tracking_supported() bool {
    mut object_out := false
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("is_hand_tracking_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInterface) is_eye_gaze_interaction_supported() bool {
    mut object_out := false
    classname := StringName.new("OpenXRInterface")
    fnname := StringName.new("is_eye_gaze_interaction_supported")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
