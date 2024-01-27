module vgdextension

pub enum PlaneMeshOrientation {
    face_x = 0
    face_y = 1
    face_z = 2
}

pub type PlaneMesh = voidptr

pub fn (mut r PlaneMesh) set_size(size Vector2) {
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PlaneMesh) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PlaneMesh) set_subdivide_width(subdivide i32) {
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdivide_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PlaneMesh) get_subdivide_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdivide_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PlaneMesh) set_subdivide_depth(subdivide i32) {
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdivide_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PlaneMesh) get_subdivide_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdivide_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PlaneMesh) set_center_offset(offset Vector3) {
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_center_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PlaneMesh) get_center_offset() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_center_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PlaneMesh) set_orientation(orientation PlaneMeshOrientation) {
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2751399687)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PlaneMesh) get_orientation() PlaneMeshOrientation {
    mut object_out := PlaneMeshOrientation.face_x
    classname := StringName.new("PlaneMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_orientation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3227599250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
