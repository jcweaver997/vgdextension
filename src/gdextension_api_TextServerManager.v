module vgdextension

pub struct TextServerManager {
    Object
}

pub fn TextServerManager.get_singleton() TextServerManager {
    sn := StringName.new("TextServerManager")
    defer {sn.deinit()}
    o := TextServerManager{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r TextServerManager) add_interface(gdinterface TextServer) {
    classname := StringName.new("TextServerManager")
    defer { classname.deinit() }
    fnname := StringName.new("add_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1799689403)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gdinterface.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextServerManager) get_interface_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TextServerManager")
    defer { classname.deinit() }
    fnname := StringName.new("get_interface_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerManager) remove_interface(gdinterface TextServer) {
    classname := StringName.new("TextServerManager")
    defer { classname.deinit() }
    fnname := StringName.new("remove_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1799689403)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gdinterface.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextServerManager) get_interface(idx i32) TextServer {
    mut object_out := TextServer{}
    classname := StringName.new("TextServerManager")
    defer { classname.deinit() }
    fnname := StringName.new("get_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1672475555)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerManager) get_interfaces() Array {
    mut object_out := Array{}
    classname := StringName.new("TextServerManager")
    defer { classname.deinit() }
    fnname := StringName.new("get_interfaces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextServerManager) find_interface(name String) TextServer {
    mut object_out := TextServer{}
    classname := StringName.new("TextServerManager")
    defer { classname.deinit() }
    fnname := StringName.new("find_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240905781)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r TextServerManager) set_primary_interface(index TextServer) {
    classname := StringName.new("TextServerManager")
    defer { classname.deinit() }
    fnname := StringName.new("set_primary_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1799689403)
    mut args := unsafe { [1]voidptr{} }
    args[0] = index.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextServerManager) get_primary_interface() TextServer {
    mut object_out := TextServer{}
    classname := StringName.new("TextServerManager")
    defer { classname.deinit() }
    fnname := StringName.new("get_primary_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 905850878)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
