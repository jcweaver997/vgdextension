module vgdextension

@[noinit]
pub struct GraphElement {
    Container
}

pub fn (mut r GraphElement) set_resizable(resizable bool) {
    classname := StringName.new("GraphElement")
    fnname := StringName.new("set_resizable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&resizable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphElement) is_resizable() bool {
    mut object_out := false
    classname := StringName.new("GraphElement")
    fnname := StringName.new("is_resizable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphElement) set_draggable(draggable bool) {
    classname := StringName.new("GraphElement")
    fnname := StringName.new("set_draggable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&draggable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphElement) is_draggable() bool {
    mut object_out := false
    classname := StringName.new("GraphElement")
    fnname := StringName.new("is_draggable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphElement) set_selectable(selectable bool) {
    classname := StringName.new("GraphElement")
    fnname := StringName.new("set_selectable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&selectable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphElement) is_selectable() bool {
    mut object_out := false
    classname := StringName.new("GraphElement")
    fnname := StringName.new("is_selectable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphElement) set_selected(selected bool) {
    classname := StringName.new("GraphElement")
    fnname := StringName.new("set_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&selected)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r GraphElement) is_selected() bool {
    mut object_out := false
    classname := StringName.new("GraphElement")
    fnname := StringName.new("is_selected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r GraphElement) set_position_offset(offset Vector2) {
    classname := StringName.new("GraphElement")
    fnname := StringName.new("set_position_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GraphElement) get_position_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GraphElement")
    fnname := StringName.new("get_position_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
