module vgdextension

pub enum OpenXRHandHands {
    hand_left = 0
    hand_right = 1
    hand_max = 2
}

pub enum OpenXRHandMotionRange {
    motion_range_unobstructed = 0
    motion_range_conform_to_controller = 1
    motion_range_max = 2
}

@[noinit]
pub struct OpenXRHand {
    Node3D
}

pub fn (mut r OpenXRHand) set_hand(hand OpenXRHandHands) {
    classname := StringName.new("OpenXRHand")
    defer { classname.deinit() }
    fnname := StringName.new("set_hand")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1849328560)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hand)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRHand) get_hand() OpenXRHandHands {
    mut object_out := OpenXRHandHands.hand_left
    classname := StringName.new("OpenXRHand")
    defer { classname.deinit() }
    fnname := StringName.new("get_hand")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2850644561)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRHand) set_hand_skeleton(hand_skeleton NodePath) {
    classname := StringName.new("OpenXRHand")
    defer { classname.deinit() }
    fnname := StringName.new("set_hand_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hand_skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRHand) get_hand_skeleton() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("OpenXRHand")
    defer { classname.deinit() }
    fnname := StringName.new("get_hand_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRHand) set_motion_range(motion_range OpenXRHandMotionRange) {
    classname := StringName.new("OpenXRHand")
    defer { classname.deinit() }
    fnname := StringName.new("set_motion_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3326516003)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&motion_range)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRHand) get_motion_range() OpenXRHandMotionRange {
    mut object_out := OpenXRHandMotionRange.motion_range_unobstructed
    classname := StringName.new("OpenXRHand")
    defer { classname.deinit() }
    fnname := StringName.new("get_motion_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2191822314)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
