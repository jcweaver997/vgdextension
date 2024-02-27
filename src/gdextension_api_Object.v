module vgdextension

pub enum ObjectConnectFlags as i64 {
    connect_deferred = 1
    connect_persist = 2
    connect_one_shot = 4
    connect_reference_counted = 8
}

@[noinit]
pub struct Object {
    mut:
    ptr voidptr = unsafe{nil}
}

pub fn (r &Object) get_class() string {
    mut object_out := String{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Object) is_class(class string) bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("is_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) set(property string, value Variant) {
    classname := StringName.new("Object")
    fnname := StringName.new("set")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Object) get(property string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    fnname := StringName.new("get")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) set_indexed(property_path NodePath, value Variant) {
    classname := StringName.new("Object")
    fnname := StringName.new("set_indexed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3500910842)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&property_path)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Object) get_indexed(property_path NodePath) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_indexed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4006125091)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&property_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) get_property_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_property_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) get_method_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_method_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) property_can_revert(property string) bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("property_can_revert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) property_get_revert(property string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    fnname := StringName.new("property_get_revert")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) notification(what i32, reversed bool) {
    classname := StringName.new("Object")
    fnname := StringName.new("notification")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&what)}
    args[1] = unsafe{voidptr(&reversed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Object) to_string() string {
    mut object_out := String{}
    classname := StringName.new("Object")
    fnname := StringName.new("to_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Object) get_instance_id() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Object")
    fnname := StringName.new("get_instance_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) set_script(script Variant) {
    classname := StringName.new("Object")
    fnname := StringName.new("set_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&script)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Object) get_script() Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) set_meta(name string, value Variant) {
    classname := StringName.new("Object")
    fnname := StringName.new("set_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Object) remove_meta(name string) {
    classname := StringName.new("Object")
    fnname := StringName.new("remove_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Object) get_meta(name string, default Variant) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3990617847)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&default)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) has_meta(name string) bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("has_meta")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) get_meta_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_meta_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) add_user_signal(signal string, arguments Array) {
    classname := StringName.new("Object")
    fnname := StringName.new("add_user_signal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 85656714)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(signal)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&arguments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Object) has_user_signal(signal string) bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("has_user_signal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(signal)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) set_deferred(property string, value Variant) {
    classname := StringName.new("Object")
    fnname := StringName.new("set_deferred")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Object) callv(method string, arg_array Array) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    fnname := StringName.new("callv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1260104456)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(method)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&arg_array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) has_method(method string) bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("has_method")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(method)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) has_signal(signal string) bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("has_signal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(signal)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) get_signal_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_signal_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) get_signal_connection_list(signal string) Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_signal_connection_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3147814860)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(signal)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) get_incoming_connections() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    fnname := StringName.new("get_incoming_connections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) connect(signal string, callable Callable, flags u32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Object")
    fnname := StringName.new("connect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1518946055)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(signal)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&callable)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r Object) disconnect(signal string, callable Callable) {
    classname := StringName.new("Object")
    fnname := StringName.new("disconnect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1874754934)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(signal)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Object) is_connected(signal string, callable Callable) bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("is_connected")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 768136979)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(signal)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) set_block_signals(enable bool) {
    classname := StringName.new("Object")
    fnname := StringName.new("set_block_signals")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Object) is_blocking_signals() bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("is_blocking_signals")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) notify_property_list_changed() {
    classname := StringName.new("Object")
    fnname := StringName.new("notify_property_list_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Object) set_message_translation(enable bool) {
    classname := StringName.new("Object")
    fnname := StringName.new("set_message_translation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Object) can_translate_messages() bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("can_translate_messages")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Object) tr(message string, context string) string {
    mut object_out := String{}
    classname := StringName.new("Object")
    fnname := StringName.new("tr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1195764410)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(context)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Object) tr_n(message string, plural_message string, n i32, context string) string {
    mut object_out := String{}
    classname := StringName.new("Object")
    fnname := StringName.new("tr_n")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 162698058)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(plural_message)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&n)}
    arg_sn3 := StringName.new(context)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Object) is_queued_for_deletion() bool {
    mut object_out := false
    classname := StringName.new("Object")
    fnname := StringName.new("is_queued_for_deletion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Object) cancel_free() {
    classname := StringName.new("Object")
    fnname := StringName.new("cancel_free")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
