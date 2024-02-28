module vgdextension

pub enum PlaneMeshOrientation as i64 {
    face_x = 0
    face_y = 1
    face_z = 2
}

@[noinit]
pub struct PlaneMesh {
    PrimitiveMesh
}

pub fn (r &PlaneMesh) set_size(size Vector2) {
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PlaneMesh) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PlaneMesh) set_subdivide_width(subdivide i32) {
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("set_subdivide_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&subdivide)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PlaneMesh) get_subdivide_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("get_subdivide_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PlaneMesh) set_subdivide_depth(subdivide i32) {
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("set_subdivide_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&subdivide)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PlaneMesh) get_subdivide_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("get_subdivide_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PlaneMesh) set_center_offset(offset Vector3) {
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("set_center_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PlaneMesh) get_center_offset() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("get_center_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PlaneMesh) set_orientation(orientation PlaneMeshOrientation) {
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("set_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2751399687)
    mut args := unsafe { [1]voidptr{} }
    i64_orientation := i64(orientation)
    args[0] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PlaneMesh) get_orientation() PlaneMeshOrientation {
    mut object_out := i64(PlaneMeshOrientation.face_x)
    classname := StringName.new("PlaneMesh")
    fnname := StringName.new("get_orientation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227599250)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{PlaneMeshOrientation(object_out)}
}
