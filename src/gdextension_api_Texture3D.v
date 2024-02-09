module vgdextension

pub struct Texture3D {
    Texture
}

pub interface ITexture3DGetFormat {
    mut:
    virt_get_format() ImageFormat
}

pub fn (r &Texture3D) uget_format() ImageFormat {
    mut object_out := ImageFormat.format_l8
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("_get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface ITexture3DGetWidth {
    mut:
    virt_get_width() i32
}

pub fn (r &Texture3D) uget_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("_get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface ITexture3DGetHeight {
    mut:
    virt_get_height() i32
}

pub fn (r &Texture3D) uget_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("_get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface ITexture3DGetDepth {
    mut:
    virt_get_depth() i32
}

pub fn (r &Texture3D) uget_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("_get_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface ITexture3DHasMipmaps {
    mut:
    virt_has_mipmaps() bool
}

pub fn (r &Texture3D) uhas_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("_has_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface ITexture3DGetData {
    mut:
    virt_get_data() Array
}

pub fn (r &Texture3D) uget_data() Array {
    mut object_out := Array{}
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("_get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Texture3D) get_format() ImageFormat {
    mut object_out := ImageFormat.format_l8
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Texture3D) get_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Texture3D) get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Texture3D) get_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Texture3D) has_mipmaps() bool {
    mut object_out := false
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("has_mipmaps")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Texture3D) get_data() Array {
    mut object_out := Array{}
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Texture3D) create_placeholder() Resource {
    mut object_out := Resource{}
    classname := StringName.new("Texture3D")
    defer { classname.deinit() }
    fnname := StringName.new("create_placeholder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
