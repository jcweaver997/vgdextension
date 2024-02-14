module vgdextension

pub enum XMLParserNodeType as i64 {
    node_none = 0
    node_element = 1
    node_element_end = 2
    node_text = 3
    node_comment = 4
    node_cdata = 5
    node_unknown = 6
}

@[noinit]
pub struct XMLParser {
    RefCounted
}

pub fn (mut r XMLParser) read() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("XMLParser")
    fnname := StringName.new("read")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r XMLParser) get_node_type() XMLParserNodeType {
    mut object_out := i64(XMLParserNodeType.node_none)
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_node_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2984359541)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{XMLParserNodeType(object_out)}
}
pub fn (r &XMLParser) get_node_name() String {
    mut object_out := String{}
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_node_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) get_node_data() String {
    mut object_out := String{}
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_node_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) get_node_offset() u64 {
    mut object_out := u64(0)
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_node_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) get_attribute_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_attribute_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) get_attribute_name(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_attribute_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) get_attribute_value(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_attribute_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) has_attribute(name String) bool {
    mut object_out := false
    classname := StringName.new("XMLParser")
    fnname := StringName.new("has_attribute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) get_named_attribute_value(name String) String {
    mut object_out := String{}
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_named_attribute_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) get_named_attribute_value_safe(name String) String {
    mut object_out := String{}
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_named_attribute_value_safe")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) is_empty() bool {
    mut object_out := false
    classname := StringName.new("XMLParser")
    fnname := StringName.new("is_empty")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XMLParser) get_current_line() i32 {
    mut object_out := i32(0)
    classname := StringName.new("XMLParser")
    fnname := StringName.new("get_current_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r XMLParser) skip_section() {
    classname := StringName.new("XMLParser")
    fnname := StringName.new("skip_section")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r XMLParser) seek(position u64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("XMLParser")
    fnname := StringName.new("seek")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r XMLParser) open(file String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("XMLParser")
    fnname := StringName.new("open")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r XMLParser) open_buffer(buffer PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("XMLParser")
    fnname := StringName.new("open_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
