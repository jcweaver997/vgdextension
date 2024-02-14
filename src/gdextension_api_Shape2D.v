module vgdextension

@[noinit]
pub struct Shape2D {
    Resource
}

pub fn (mut r Shape2D) set_custom_solver_bias(bias f64) {
    classname := StringName.new("Shape2D")
    fnname := StringName.new("set_custom_solver_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Shape2D) get_custom_solver_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Shape2D")
    fnname := StringName.new("get_custom_solver_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Shape2D) collide(local_xform Transform2D, with_shape Shape2D, shape_xform Transform2D) bool {
    mut object_out := false
    classname := StringName.new("Shape2D")
    fnname := StringName.new("collide")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3709843132)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&local_xform)}
    args[1] = with_shape.ptr
    args[2] = unsafe{voidptr(&shape_xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Shape2D) collide_with_motion(local_xform Transform2D, local_motion Vector2, with_shape Shape2D, shape_xform Transform2D, shape_motion Vector2) bool {
    mut object_out := false
    classname := StringName.new("Shape2D")
    fnname := StringName.new("collide_with_motion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869556801)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&local_xform)}
    args[1] = unsafe{voidptr(&local_motion)}
    args[2] = with_shape.ptr
    args[3] = unsafe{voidptr(&shape_xform)}
    args[4] = unsafe{voidptr(&shape_motion)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Shape2D) collide_and_get_contacts(local_xform Transform2D, with_shape Shape2D, shape_xform Transform2D) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Shape2D")
    fnname := StringName.new("collide_and_get_contacts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3056932662)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&local_xform)}
    args[1] = with_shape.ptr
    args[2] = unsafe{voidptr(&shape_xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Shape2D) collide_with_motion_and_get_contacts(local_xform Transform2D, local_motion Vector2, with_shape Shape2D, shape_xform Transform2D, shape_motion Vector2) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Shape2D")
    fnname := StringName.new("collide_with_motion_and_get_contacts")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3620351573)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&local_xform)}
    args[1] = unsafe{voidptr(&local_motion)}
    args[2] = with_shape.ptr
    args[3] = unsafe{voidptr(&shape_xform)}
    args[4] = unsafe{voidptr(&shape_motion)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Shape2D) draw(canvas_item RID, color Color) {
    classname := StringName.new("Shape2D")
    fnname := StringName.new("draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2948539648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Shape2D) get_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("Shape2D")
    fnname := StringName.new("get_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
