module vgdextension

pub enum ObjectConnectFlags {
    connect_deferred = 1
    connect_persist = 2
    connect_one_shot = 4
    connect_reference_counted = 8
}

pub type Object = voidptr

pub fn (r &Object) get_class() String {
    mut object_out := String{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_class")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Object) is_class(class String) bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("is_class")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) set(property StringName, value Variant) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("set")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Object) get(property StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&property)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) set_indexed(property_path NodePath, value Variant) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("set_indexed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3500910842)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Object) get_indexed(property_path NodePath) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_indexed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4006125091)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&property_path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) get_property_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_property_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Object) get_method_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_method_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Object) property_can_revert(property StringName) bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("property_can_revert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&property)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) property_get_revert(property StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("property_get_revert")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&property)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) notification(what i32, reversed bool) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("notification")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4023243586)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Object) to_string() String {
    mut object_out := String{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("to_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Object) get_instance_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) set_script(script Variant) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("set_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Object) get_script() Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) set_meta(name StringName, value Variant) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("set_meta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Object) remove_meta(name StringName) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("remove_meta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Object) get_meta(name StringName, default Variant) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_meta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3990617847)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&default)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) has_meta(name StringName) bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("has_meta")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) get_meta_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_meta_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) add_user_signal(signal String, arguments Array) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("add_user_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780025912)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Object) has_user_signal(signal StringName) bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("has_user_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&signal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) set_deferred(property StringName, value Variant) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("set_deferred")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Object) callv(method StringName, arg_array Array) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("callv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1260104456)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&method)}
    args[1] = unsafe{voidptr(&arg_array)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) has_method(method StringName) bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("has_method")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&method)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) has_signal(signal StringName) bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("has_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&signal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) get_signal_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_signal_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Object) get_signal_connection_list(signal StringName) Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_signal_connection_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3147814860)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&signal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) get_incoming_connections() Array {
    mut object_out := Array{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("get_incoming_connections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) connect(signal StringName, callable Callable, flags i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("connect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1469446357)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&signal)}
    args[1] = unsafe{voidptr(&callable)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) disconnect(signal StringName, callable Callable) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1874754934)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Object) is_connected(signal StringName, callable Callable) bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("is_connected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 768136979)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&signal)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) set_block_signals(enable bool) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("set_block_signals")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Object) is_blocking_signals() bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("is_blocking_signals")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) notify_property_list_changed() {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("notify_property_list_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Object) set_message_translation(enable bool) {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("set_message_translation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Object) can_translate_messages() bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("can_translate_messages")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Object) tr(message StringName, context StringName) String {
    mut object_out := String{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("tr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2475554935)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) tr_n(message StringName, plural_message StringName, n i32, context StringName) String {
    mut object_out := String{}
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("tr_n")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4021311862)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&plural_message)}
    args[2] = unsafe{voidptr(&n)}
    args[3] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Object) is_queued_for_deletion() bool {
    mut object_out := false
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("is_queued_for_deletion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Object) cancel_free() {
    classname := StringName.new("Object")
    defer { classname.deinit() }
    fnname := StringName.new("cancel_free")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
