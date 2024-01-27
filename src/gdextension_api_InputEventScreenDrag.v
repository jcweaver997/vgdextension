module vgdextension

pub type InputEventScreenDrag = voidptr

pub fn (mut r InputEventScreenDrag) set_index(index i32) {
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("set_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventScreenDrag) get_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("get_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventScreenDrag) set_tilt(tilt Vector2) {
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("set_tilt")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventScreenDrag) get_tilt() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("get_tilt")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventScreenDrag) set_pressure(pressure f32) {
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventScreenDrag) get_pressure() f32 {
    mut object_out := f32(0)
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("get_pressure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventScreenDrag) set_pen_inverted(pen_inverted bool) {
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("set_pen_inverted")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventScreenDrag) get_pen_inverted() bool {
    mut object_out := false
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("get_pen_inverted")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventScreenDrag) set_position(position Vector2) {
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("set_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventScreenDrag) get_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventScreenDrag) set_relative(relative Vector2) {
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("set_relative")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventScreenDrag) get_relative() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("get_relative")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventScreenDrag) set_velocity(velocity Vector2) {
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("set_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventScreenDrag) get_velocity() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("InputEventScreenDrag")
    defer { classname.deinit() }
    fnname := StringName.new("get_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
