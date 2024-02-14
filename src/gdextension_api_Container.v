module vgdextension

@[noinit]
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
    fnname := StringName.new("_get_allowed_size_flags_horizontal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IContainerGetAllowedSizeFlagsVertical {
    mut:
    virt_get_allowed_size_flags_vertical() PackedInt32Array
}

pub fn (r &Container) uget_allowed_size_flags_vertical() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("Container")
    fnname := StringName.new("_get_allowed_size_flags_vertical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Container) queue_sort() {
    classname := StringName.new("Container")
    fnname := StringName.new("queue_sort")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Container) fit_child_in_rect(child Control, rect Rect2) {
    classname := StringName.new("Container")
    fnname := StringName.new("fit_child_in_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1993438598)
    mut args := unsafe { [2]voidptr{} }
    args[0] = child.ptr
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
