module vgdextension

pub struct Container {
    Control
}

pub interface IContainerGetAllowedSizeFlagsHorizontal {
    mut:
    virt_get_allowed_size_flags_horizontal() PackedInt32Array
}

pub fn (r &Container) uget_allowed_size_flags_horizontal() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("Container")
    defer { classname.deinit() }
    fnname := StringName.new("_get_allowed_size_flags_horizontal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IContainerGetAllowedSizeFlagsVertical {
    mut:
    virt_get_allowed_size_flags_vertical() PackedInt32Array
}

pub fn (r &Container) uget_allowed_size_flags_vertical() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("Container")
    defer { classname.deinit() }
    fnname := StringName.new("_get_allowed_size_flags_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Container) queue_sort() {
    classname := StringName.new("Container")
    defer { classname.deinit() }
    fnname := StringName.new("queue_sort")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Container) fit_child_in_rect(child Control, rect Rect2) {
    classname := StringName.new("Container")
    defer { classname.deinit() }
    fnname := StringName.new("fit_child_in_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1993438598)
    mut args := unsafe { [2]voidptr{} }
    args[0] = child.ptr
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
