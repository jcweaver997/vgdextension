module vgdextension

pub enum PropertyUsageFlags as i64 {
    property_usage_none = 0
    property_usage_storage = 2
    property_usage_editor = 4
    property_usage_internal = 8
    property_usage_checkable = 16
    property_usage_checked = 32
    property_usage_group = 64
    property_usage_category = 128
    property_usage_subgroup = 256
    property_usage_class_is_bitfield = 512
    property_usage_no_instance_state = 1024
    property_usage_restart_if_changed = 2048
    property_usage_script_variable = 4096
    property_usage_store_if_null = 8192
    property_usage_update_all_if_modified = 16384
    property_usage_script_default_value = 32768
    property_usage_class_is_enum = 65536
    property_usage_nil_is_variant = 131072
    property_usage_array = 262144
    property_usage_always_duplicate = 524288
    property_usage_never_duplicate = 1048576
    property_usage_high_end_gfx = 2097152
    property_usage_node_path_from_scene_root = 4194304
    property_usage_resource_not_persistent = 8388608
    property_usage_keying_increments = 16777216
    property_usage_deferred_set_resource = 33554432
    property_usage_editor_instantiate_object = 67108864
    property_usage_editor_basic_setting = 134217728
    property_usage_read_only = 268435456
    property_usage_secret = 536870912
    property_usage_default = 6
}
