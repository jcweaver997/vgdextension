module vgdextension

@[noinit]
pub struct OpenXRExtensionWrapperExtension {
    Object
}

pub interface IOpenXRExtensionWrapperExtensionGetRequestedExtensions {
    mut:
    virt_get_requested_extensions() Dictionary
}

pub fn (mut r OpenXRExtensionWrapperExtension) uget_requested_extensions() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_get_requested_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IOpenXRExtensionWrapperExtensionSetSystemPropertiesAndGetNextPointer {
    mut:
    virt_set_system_properties_and_get_next_pointer(next_pointer voidptr) u64
}

pub fn (mut r OpenXRExtensionWrapperExtension) uset_system_properties_and_get_next_pointer(next_pointer voidptr) u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_set_system_properties_and_get_next_pointer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&next_pointer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IOpenXRExtensionWrapperExtensionSetInstanceCreateInfoAndGetNextPointer {
    mut:
    virt_set_instance_create_info_and_get_next_pointer(next_pointer voidptr) u64
}

pub fn (mut r OpenXRExtensionWrapperExtension) uset_instance_create_info_and_get_next_pointer(next_pointer voidptr) u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_set_instance_create_info_and_get_next_pointer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&next_pointer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IOpenXRExtensionWrapperExtensionSetSessionCreateAndGetNextPointer {
    mut:
    virt_set_session_create_and_get_next_pointer(next_pointer voidptr) u64
}

pub fn (mut r OpenXRExtensionWrapperExtension) uset_session_create_and_get_next_pointer(next_pointer voidptr) u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_set_session_create_and_get_next_pointer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&next_pointer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IOpenXRExtensionWrapperExtensionSetSwapchainCreateInfoAndGetNextPointer {
    mut:
    virt_set_swapchain_create_info_and_get_next_pointer(next_pointer voidptr) u64
}

pub fn (mut r OpenXRExtensionWrapperExtension) uset_swapchain_create_info_and_get_next_pointer(next_pointer voidptr) u64 {
    mut object_out := u64(0)
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_set_swapchain_create_info_and_get_next_pointer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&next_pointer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IOpenXRExtensionWrapperExtensionOnRegisterMetadata {
    mut:
    virt_on_register_metadata()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_register_metadata() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_register_metadata")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnBeforeInstanceCreated {
    mut:
    virt_on_before_instance_created()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_before_instance_created() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_before_instance_created")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnInstanceCreated {
    mut:
    virt_on_instance_created(instance u64)
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_instance_created(instance u64) {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_instance_created")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnInstanceDestroyed {
    mut:
    virt_on_instance_destroyed()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_instance_destroyed() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_instance_destroyed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnSessionCreated {
    mut:
    virt_on_session_created(session u64)
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_session_created(session u64) {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_session_created")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&session)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnProcess {
    mut:
    virt_on_process()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_process() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnPreRender {
    mut:
    virt_on_pre_render()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_pre_render() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_pre_render")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnSessionDestroyed {
    mut:
    virt_on_session_destroyed()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_session_destroyed() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_session_destroyed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnStateIdle {
    mut:
    virt_on_state_idle()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_state_idle() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_state_idle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnStateReady {
    mut:
    virt_on_state_ready()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_state_ready() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_state_ready")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnStateSynchronized {
    mut:
    virt_on_state_synchronized()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_state_synchronized() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_state_synchronized")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnStateVisible {
    mut:
    virt_on_state_visible()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_state_visible() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_state_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnStateFocused {
    mut:
    virt_on_state_focused()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_state_focused() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_state_focused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnStateStopping {
    mut:
    virt_on_state_stopping()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_state_stopping() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_state_stopping")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnStateLossPending {
    mut:
    virt_on_state_loss_pending()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_state_loss_pending() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_state_loss_pending")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnStateExiting {
    mut:
    virt_on_state_exiting()
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_state_exiting() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_state_exiting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IOpenXRExtensionWrapperExtensionOnEventPolled {
    mut:
    virt_on_event_polled(event voidptr) bool
}

pub fn (mut r OpenXRExtensionWrapperExtension) uon_event_polled(event voidptr) bool {
    mut object_out := false
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("_on_event_polled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&event)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRExtensionWrapperExtension) get_openxr_api() OpenXRAPIExtension {
    mut object_out := OpenXRAPIExtension{}
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("get_openxr_api")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1637791613)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRExtensionWrapperExtension) register_extension_wrapper() {
    classname := StringName.new("OpenXRExtensionWrapperExtension")
    fnname := StringName.new("register_extension_wrapper")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
