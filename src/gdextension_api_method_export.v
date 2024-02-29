module vgdextension

pub interface ISignalAcceptDialogConfirmed {
    mut:
    signal_confirmed()
}

pub interface ISignalAcceptDialogCanceled {
    mut:
    signal_canceled()
}

pub interface ISignalAcceptDialogCustomAction {
    mut:
    signal_custom_action(action StringName)
}

pub interface ISignalAnimatedSprite2DSpriteFramesChanged {
    mut:
    signal_sprite_frames_changed()
}

pub interface ISignalAnimatedSprite2DAnimationChanged {
    mut:
    signal_animation_changed()
}

pub interface ISignalAnimatedSprite2DFrameChanged {
    mut:
    signal_frame_changed()
}

pub interface ISignalAnimatedSprite2DAnimationLooped {
    mut:
    signal_animation_looped()
}

pub interface ISignalAnimatedSprite2DAnimationFinished {
    mut:
    signal_animation_finished()
}

pub interface ISignalAnimatedSprite3DSpriteFramesChanged {
    mut:
    signal_sprite_frames_changed()
}

pub interface ISignalAnimatedSprite3DAnimationChanged {
    mut:
    signal_animation_changed()
}

pub interface ISignalAnimatedSprite3DFrameChanged {
    mut:
    signal_frame_changed()
}

pub interface ISignalAnimatedSprite3DAnimationLooped {
    mut:
    signal_animation_looped()
}

pub interface ISignalAnimatedSprite3DAnimationFinished {
    mut:
    signal_animation_finished()
}

pub interface ISignalAnimationLibraryAnimationAdded {
    mut:
    signal_animation_added(name StringName)
}

pub interface ISignalAnimationLibraryAnimationRemoved {
    mut:
    signal_animation_removed(name StringName)
}

pub interface ISignalAnimationLibraryAnimationRenamed {
    mut:
    signal_animation_renamed(name StringName, to_name StringName)
}

pub interface ISignalAnimationLibraryAnimationChanged {
    mut:
    signal_animation_changed(name StringName)
}

pub interface ISignalAnimationMixerMixerUpdated {
    mut:
    signal_mixer_updated()
}

pub interface ISignalAnimationMixerAnimationListChanged {
    mut:
    signal_animation_list_changed()
}

pub interface ISignalAnimationMixerAnimationLibrariesUpdated {
    mut:
    signal_animation_libraries_updated()
}

pub interface ISignalAnimationMixerAnimationFinished {
    mut:
    signal_animation_finished(anim_name StringName)
}

pub interface ISignalAnimationMixerAnimationStarted {
    mut:
    signal_animation_started(anim_name StringName)
}

pub interface ISignalAnimationMixerCachesCleared {
    mut:
    signal_caches_cleared()
}

pub interface ISignalAnimationNodeTreeChanged {
    mut:
    signal_tree_changed()
}

pub interface ISignalAnimationNodeAnimationNodeRenamed {
    mut:
    signal_animation_node_renamed(object_id i64, old_name String, new_name String)
}

pub interface ISignalAnimationNodeAnimationNodeRemoved {
    mut:
    signal_animation_node_removed(object_id i64, name String)
}

pub interface ISignalAnimationNodeBlendSpace2DTrianglesUpdated {
    mut:
    signal_triangles_updated()
}

pub interface ISignalAnimationNodeBlendTreeNodeChanged {
    mut:
    signal_node_changed(node_name StringName)
}

pub interface ISignalAnimationNodeStateMachineTransitionAdvanceConditionChanged {
    mut:
    signal_advance_condition_changed()
}

pub interface ISignalAnimationPlayerCurrentAnimationChanged {
    mut:
    signal_current_animation_changed(name String)
}

pub interface ISignalAnimationPlayerAnimationChanged {
    mut:
    signal_animation_changed(old_name StringName, new_name StringName)
}

pub interface ISignalAnimationTreeAnimationPlayerChanged {
    mut:
    signal_animation_player_changed()
}

pub interface ISignalArea2DBodyShapeEntered {
    mut:
    signal_body_shape_entered(body_rid RID, body Node2D, body_shape_index i64, local_shape_index i64)
}

pub interface ISignalArea2DBodyShapeExited {
    mut:
    signal_body_shape_exited(body_rid RID, body Node2D, body_shape_index i64, local_shape_index i64)
}

pub interface ISignalArea2DBodyEntered {
    mut:
    signal_body_entered(body Node2D)
}

pub interface ISignalArea2DBodyExited {
    mut:
    signal_body_exited(body Node2D)
}

pub interface ISignalArea2DAreaShapeEntered {
    mut:
    signal_area_shape_entered(area_rid RID, area Area2D, area_shape_index i64, local_shape_index i64)
}

pub interface ISignalArea2DAreaShapeExited {
    mut:
    signal_area_shape_exited(area_rid RID, area Area2D, area_shape_index i64, local_shape_index i64)
}

pub interface ISignalArea2DAreaEntered {
    mut:
    signal_area_entered(area Area2D)
}

pub interface ISignalArea2DAreaExited {
    mut:
    signal_area_exited(area Area2D)
}

pub interface ISignalArea3DBodyShapeEntered {
    mut:
    signal_body_shape_entered(body_rid RID, body Node3D, body_shape_index i64, local_shape_index i64)
}

pub interface ISignalArea3DBodyShapeExited {
    mut:
    signal_body_shape_exited(body_rid RID, body Node3D, body_shape_index i64, local_shape_index i64)
}

pub interface ISignalArea3DBodyEntered {
    mut:
    signal_body_entered(body Node3D)
}

pub interface ISignalArea3DBodyExited {
    mut:
    signal_body_exited(body Node3D)
}

pub interface ISignalArea3DAreaShapeEntered {
    mut:
    signal_area_shape_entered(area_rid RID, area Area3D, area_shape_index i64, local_shape_index i64)
}

pub interface ISignalArea3DAreaShapeExited {
    mut:
    signal_area_shape_exited(area_rid RID, area Area3D, area_shape_index i64, local_shape_index i64)
}

pub interface ISignalArea3DAreaEntered {
    mut:
    signal_area_entered(area Area3D)
}

pub interface ISignalArea3DAreaExited {
    mut:
    signal_area_exited(area Area3D)
}

pub interface ISignalAudioServerBusLayoutChanged {
    mut:
    signal_bus_layout_changed()
}

pub interface ISignalAudioServerBusRenamed {
    mut:
    signal_bus_renamed(bus_index i64, old_name StringName, new_name StringName)
}

pub interface ISignalAudioStreamPlayerFinished {
    mut:
    signal_finished()
}

pub interface ISignalAudioStreamPlayer2DFinished {
    mut:
    signal_finished()
}

pub interface ISignalAudioStreamPlayer3DFinished {
    mut:
    signal_finished()
}

pub interface ISignalBaseButtonPressed {
    mut:
    signal_pressed()
}

pub interface ISignalBaseButtonButtonUp {
    mut:
    signal_button_up()
}

pub interface ISignalBaseButtonButtonDown {
    mut:
    signal_button_down()
}

pub interface ISignalBaseButtonToggled {
    mut:
    signal_toggled(toggled_on bool)
}

pub interface ISignalBoneMapBoneMapUpdated {
    mut:
    signal_bone_map_updated()
}

pub interface ISignalBoneMapProfileUpdated {
    mut:
    signal_profile_updated()
}

pub interface ISignalButtonGroupPressed {
    mut:
    signal_pressed(button BaseButton)
}

pub interface ISignalCPUParticles2DFinished {
    mut:
    signal_finished()
}

pub interface ISignalCPUParticles3DFinished {
    mut:
    signal_finished()
}

pub interface ISignalCameraServerCameraFeedAdded {
    mut:
    signal_camera_feed_added(id i64)
}

pub interface ISignalCameraServerCameraFeedRemoved {
    mut:
    signal_camera_feed_removed(id i64)
}

pub interface ISignalCanvasItemDraw {
    mut:
    signal_draw()
}

pub interface ISignalCanvasItemVisibilityChanged {
    mut:
    signal_visibility_changed()
}

pub interface ISignalCanvasItemHidden {
    mut:
    signal_hidden()
}

pub interface ISignalCanvasItemItemRectChanged {
    mut:
    signal_item_rect_changed()
}

pub interface ISignalCanvasLayerVisibilityChanged {
    mut:
    signal_visibility_changed()
}

pub interface ISignalCodeEditBreakpointToggled {
    mut:
    signal_breakpoint_toggled(line i64)
}

pub interface ISignalCodeEditCodeCompletionRequested {
    mut:
    signal_code_completion_requested()
}

pub interface ISignalCodeEditSymbolLookup {
    mut:
    signal_symbol_lookup(symbol String, line i64, column i64)
}

pub interface ISignalCodeEditSymbolValidate {
    mut:
    signal_symbol_validate(symbol String)
}

pub interface ISignalCollisionObject2DInputEvent {
    mut:
    signal_input_event(viewport Node, event InputEvent, shape_idx i64)
}

pub interface ISignalCollisionObject2DMouseEntered {
    mut:
    signal_mouse_entered()
}

pub interface ISignalCollisionObject2DMouseExited {
    mut:
    signal_mouse_exited()
}

pub interface ISignalCollisionObject2DMouseShapeEntered {
    mut:
    signal_mouse_shape_entered(shape_idx i64)
}

pub interface ISignalCollisionObject2DMouseShapeExited {
    mut:
    signal_mouse_shape_exited(shape_idx i64)
}

pub interface ISignalCollisionObject3DInputEvent {
    mut:
    signal_input_event(camera Node, event InputEvent, position Vector3, normal Vector3, shape_idx i64)
}

pub interface ISignalCollisionObject3DMouseEntered {
    mut:
    signal_mouse_entered()
}

pub interface ISignalCollisionObject3DMouseExited {
    mut:
    signal_mouse_exited()
}

pub interface ISignalColorPickerColorChanged {
    mut:
    signal_color_changed(color Color)
}

pub interface ISignalColorPickerPresetAdded {
    mut:
    signal_preset_added(color Color)
}

pub interface ISignalColorPickerPresetRemoved {
    mut:
    signal_preset_removed(color Color)
}

pub interface ISignalColorPickerButtonColorChanged {
    mut:
    signal_color_changed(color Color)
}

pub interface ISignalColorPickerButtonPopupClosed {
    mut:
    signal_popup_closed()
}

pub interface ISignalColorPickerButtonPickerCreated {
    mut:
    signal_picker_created()
}

pub interface ISignalContainerPreSortChildren {
    mut:
    signal_pre_sort_children()
}

pub interface ISignalContainerSortChildren {
    mut:
    signal_sort_children()
}

pub interface ISignalControlResized {
    mut:
    signal_resized()
}

pub interface ISignalControlGuiInput {
    mut:
    signal_gui_input(event InputEvent)
}

pub interface ISignalControlMouseEntered {
    mut:
    signal_mouse_entered()
}

pub interface ISignalControlMouseExited {
    mut:
    signal_mouse_exited()
}

pub interface ISignalControlFocusEntered {
    mut:
    signal_focus_entered()
}

pub interface ISignalControlFocusExited {
    mut:
    signal_focus_exited()
}

pub interface ISignalControlSizeFlagsChanged {
    mut:
    signal_size_flags_changed()
}

pub interface ISignalControlMinimumSizeChanged {
    mut:
    signal_minimum_size_changed()
}

pub interface ISignalControlThemeChanged {
    mut:
    signal_theme_changed()
}

pub interface ISignalCurveRangeChanged {
    mut:
    signal_range_changed()
}

pub interface ISignalEditorDebuggerSessionStarted {
    mut:
    signal_started()
}

pub interface ISignalEditorDebuggerSessionStopped {
    mut:
    signal_stopped()
}

pub interface ISignalEditorDebuggerSessionBreaked {
    mut:
    signal_breaked(can_debug bool)
}

pub interface ISignalEditorDebuggerSessionContinued {
    mut:
    signal_continued()
}

pub interface ISignalEditorFileDialogFileSelected {
    mut:
    signal_file_selected(path String)
}

pub interface ISignalEditorFileDialogFilesSelected {
    mut:
    signal_files_selected(paths PackedStringArray)
}

pub interface ISignalEditorFileDialogDirSelected {
    mut:
    signal_dir_selected(dir String)
}

pub interface ISignalEditorFileSystemFilesystemChanged {
    mut:
    signal_filesystem_changed()
}

pub interface ISignalEditorFileSystemScriptClassesUpdated {
    mut:
    signal_script_classes_updated()
}

pub interface ISignalEditorFileSystemSourcesChanged {
    mut:
    signal_sources_changed(exist bool)
}

pub interface ISignalEditorFileSystemResourcesReimported {
    mut:
    signal_resources_reimported(resources PackedStringArray)
}

pub interface ISignalEditorFileSystemResourcesReload {
    mut:
    signal_resources_reload(resources PackedStringArray)
}

pub interface ISignalEditorInspectorPropertySelected {
    mut:
    signal_property_selected(property String)
}

pub interface ISignalEditorInspectorPropertyKeyed {
    mut:
    signal_property_keyed(property String, value Variant, advance bool)
}

pub interface ISignalEditorInspectorPropertyDeleted {
    mut:
    signal_property_deleted(property String)
}

pub interface ISignalEditorInspectorResourceSelected {
    mut:
    signal_resource_selected(resource Resource, path String)
}

pub interface ISignalEditorInspectorObjectIdSelected {
    mut:
    signal_object_id_selected(id i64)
}

pub interface ISignalEditorInspectorPropertyEdited {
    mut:
    signal_property_edited(property String)
}

pub interface ISignalEditorInspectorPropertyToggled {
    mut:
    signal_property_toggled(property String, checked bool)
}

pub interface ISignalEditorInspectorEditedObjectChanged {
    mut:
    signal_edited_object_changed()
}

pub interface ISignalEditorInspectorRestartRequested {
    mut:
    signal_restart_requested()
}

pub interface ISignalEditorPluginSceneChanged {
    mut:
    signal_scene_changed(scene_root Node)
}

pub interface ISignalEditorPluginSceneClosed {
    mut:
    signal_scene_closed(filepath String)
}

pub interface ISignalEditorPluginMainScreenChanged {
    mut:
    signal_main_screen_changed(screen_name String)
}

pub interface ISignalEditorPluginResourceSaved {
    mut:
    signal_resource_saved(resource Resource)
}

pub interface ISignalEditorPluginProjectSettingsChanged {
    mut:
    signal_project_settings_changed()
}

pub interface ISignalEditorPropertyPropertyChanged {
    mut:
    signal_property_changed(property StringName, value Variant, field StringName, changing bool)
}

pub interface ISignalEditorPropertyMultiplePropertiesChanged {
    mut:
    signal_multiple_properties_changed(properties PackedStringArray, value Array)
}

pub interface ISignalEditorPropertyPropertyKeyed {
    mut:
    signal_property_keyed(property StringName)
}

pub interface ISignalEditorPropertyPropertyDeleted {
    mut:
    signal_property_deleted(property StringName)
}

pub interface ISignalEditorPropertyPropertyKeyedWithValue {
    mut:
    signal_property_keyed_with_value(property StringName, value Variant)
}

pub interface ISignalEditorPropertyPropertyChecked {
    mut:
    signal_property_checked(property StringName, checked bool)
}

pub interface ISignalEditorPropertyPropertyPinned {
    mut:
    signal_property_pinned(property StringName, pinned bool)
}

pub interface ISignalEditorPropertyPropertyCanRevertChanged {
    mut:
    signal_property_can_revert_changed(property StringName, can_revert bool)
}

pub interface ISignalEditorPropertyResourceSelected {
    mut:
    signal_resource_selected(path String, resource Resource)
}

pub interface ISignalEditorPropertyObjectIdSelected {
    mut:
    signal_object_id_selected(property StringName, id i64)
}

pub interface ISignalEditorPropertySelected {
    mut:
    signal_selected(path String, focusable_idx i64)
}

pub interface ISignalEditorResourcePickerResourceSelected {
    mut:
    signal_resource_selected(resource Resource, inspect bool)
}

pub interface ISignalEditorResourcePickerResourceChanged {
    mut:
    signal_resource_changed(resource Resource)
}

pub interface ISignalEditorResourcePreviewPreviewInvalidated {
    mut:
    signal_preview_invalidated(path String)
}

pub interface ISignalEditorSelectionSelectionChanged {
    mut:
    signal_selection_changed()
}

pub interface ISignalEditorSettingsSettingsChanged {
    mut:
    signal_settings_changed()
}

pub interface ISignalEditorSpinSliderGrabbed {
    mut:
    signal_grabbed()
}

pub interface ISignalEditorSpinSliderUngrabbed {
    mut:
    signal_ungrabbed()
}

pub interface ISignalEditorSpinSliderValueFocusEntered {
    mut:
    signal_value_focus_entered()
}

pub interface ISignalEditorSpinSliderValueFocusExited {
    mut:
    signal_value_focus_exited()
}

pub interface ISignalEditorUndoRedoManagerHistoryChanged {
    mut:
    signal_history_changed()
}

pub interface ISignalEditorUndoRedoManagerVersionChanged {
    mut:
    signal_version_changed()
}

pub interface ISignalFileDialogFileSelected {
    mut:
    signal_file_selected(path String)
}

pub interface ISignalFileDialogFilesSelected {
    mut:
    signal_files_selected(paths PackedStringArray)
}

pub interface ISignalFileDialogDirSelected {
    mut:
    signal_dir_selected(dir String)
}

pub interface ISignalFileSystemDockInherit {
    mut:
    signal_inherit(file String)
}

pub interface ISignalFileSystemDockInstantiate {
    mut:
    signal_instantiate(files PackedStringArray)
}

pub interface ISignalFileSystemDockResourceRemoved {
    mut:
    signal_resource_removed(resource Resource)
}

pub interface ISignalFileSystemDockFileRemoved {
    mut:
    signal_file_removed(file String)
}

pub interface ISignalFileSystemDockFolderRemoved {
    mut:
    signal_folder_removed(folder String)
}

pub interface ISignalFileSystemDockFilesMoved {
    mut:
    signal_files_moved(old_file String, new_file String)
}

pub interface ISignalFileSystemDockFolderMoved {
    mut:
    signal_folder_moved(old_folder String, new_folder String)
}

pub interface ISignalFileSystemDockDisplayModeChanged {
    mut:
    signal_display_mode_changed()
}

pub interface ISignalGDExtensionManagerExtensionsReloaded {
    mut:
    signal_extensions_reloaded()
}

pub interface ISignalGPUParticles2DFinished {
    mut:
    signal_finished()
}

pub interface ISignalGPUParticles3DFinished {
    mut:
    signal_finished()
}

pub interface ISignalGraphEditConnectionRequest {
    mut:
    signal_connection_request(from_node StringName, from_port i64, to_node StringName, to_port i64)
}

pub interface ISignalGraphEditDisconnectionRequest {
    mut:
    signal_disconnection_request(from_node StringName, from_port i64, to_node StringName, to_port i64)
}

pub interface ISignalGraphEditConnectionToEmpty {
    mut:
    signal_connection_to_empty(from_node StringName, from_port i64, release_position Vector2)
}

pub interface ISignalGraphEditConnectionFromEmpty {
    mut:
    signal_connection_from_empty(to_node StringName, to_port i64, release_position Vector2)
}

pub interface ISignalGraphEditConnectionDragStarted {
    mut:
    signal_connection_drag_started(from_node StringName, from_port i64, is_output bool)
}

pub interface ISignalGraphEditConnectionDragEnded {
    mut:
    signal_connection_drag_ended()
}

pub interface ISignalGraphEditCopyNodesRequest {
    mut:
    signal_copy_nodes_request()
}

pub interface ISignalGraphEditPasteNodesRequest {
    mut:
    signal_paste_nodes_request()
}

pub interface ISignalGraphEditDuplicateNodesRequest {
    mut:
    signal_duplicate_nodes_request()
}

pub interface ISignalGraphEditDeleteNodesRequest {
    mut:
    signal_delete_nodes_request(nodes Array)
}

pub interface ISignalGraphEditNodeSelected {
    mut:
    signal_node_selected(node Node)
}

pub interface ISignalGraphEditNodeDeselected {
    mut:
    signal_node_deselected(node Node)
}

pub interface ISignalGraphEditPopupRequest {
    mut:
    signal_popup_request(position Vector2)
}

pub interface ISignalGraphEditBeginNodeMove {
    mut:
    signal_begin_node_move()
}

pub interface ISignalGraphEditEndNodeMove {
    mut:
    signal_end_node_move()
}

pub interface ISignalGraphEditScrollOffsetChanged {
    mut:
    signal_scroll_offset_changed(offset Vector2)
}

pub interface ISignalGraphElementNodeSelected {
    mut:
    signal_node_selected()
}

pub interface ISignalGraphElementNodeDeselected {
    mut:
    signal_node_deselected()
}

pub interface ISignalGraphElementRaiseRequest {
    mut:
    signal_raise_request()
}

pub interface ISignalGraphElementDeleteRequest {
    mut:
    signal_delete_request()
}

pub interface ISignalGraphElementResizeRequest {
    mut:
    signal_resize_request(new_minsize Vector2)
}

pub interface ISignalGraphElementDragged {
    mut:
    signal_dragged(from Vector2, to Vector2)
}

pub interface ISignalGraphElementPositionOffsetChanged {
    mut:
    signal_position_offset_changed()
}

pub interface ISignalGraphNodeSlotUpdated {
    mut:
    signal_slot_updated(slot_index i64)
}

pub interface ISignalGridMapCellSizeChanged {
    mut:
    signal_cell_size_changed(cell_size Vector3)
}

pub interface ISignalGridMapChanged {
    mut:
    signal_changed()
}

pub interface ISignalHTTPRequestRequestCompleted {
    mut:
    signal_request_completed(result i64, response_code i64, headers PackedStringArray, body PackedByteArray)
}

pub interface ISignalInputJoyConnectionChanged {
    mut:
    signal_joy_connection_changed(device i64, connected bool)
}

pub interface ISignalItemListItemSelected {
    mut:
    signal_item_selected(index i64)
}

pub interface ISignalItemListEmptyClicked {
    mut:
    signal_empty_clicked(at_position Vector2, mouse_button_index i64)
}

pub interface ISignalItemListItemClicked {
    mut:
    signal_item_clicked(index i64, at_position Vector2, mouse_button_index i64)
}

pub interface ISignalItemListMultiSelected {
    mut:
    signal_multi_selected(index i64, selected bool)
}

pub interface ISignalItemListItemActivated {
    mut:
    signal_item_activated(index i64)
}

pub interface ISignalJavaScriptBridgePwaUpdateAvailable {
    mut:
    signal_pwa_update_available()
}

pub interface ISignalLineEditTextChanged {
    mut:
    signal_text_changed(new_text String)
}

pub interface ISignalLineEditTextChangeRejected {
    mut:
    signal_text_change_rejected(rejected_substring String)
}

pub interface ISignalLineEditTextSubmitted {
    mut:
    signal_text_submitted(new_text String)
}

pub interface ISignalMainLoopOnRequestPermissionsResult {
    mut:
    signal_on_request_permissions_result(permission String, granted bool)
}

pub interface ISignalMenuButtonAboutToPopup {
    mut:
    signal_about_to_popup()
}

pub interface ISignalMeshInstance2DTextureChanged {
    mut:
    signal_texture_changed()
}

pub interface ISignalMultiMeshInstance2DTextureChanged {
    mut:
    signal_texture_changed()
}

pub interface ISignalMultiplayerAPIPeerConnected {
    mut:
    signal_peer_connected(id i64)
}

pub interface ISignalMultiplayerAPIPeerDisconnected {
    mut:
    signal_peer_disconnected(id i64)
}

pub interface ISignalMultiplayerAPIConnectedToServer {
    mut:
    signal_connected_to_server()
}

pub interface ISignalMultiplayerAPIConnectionFailed {
    mut:
    signal_connection_failed()
}

pub interface ISignalMultiplayerAPIServerDisconnected {
    mut:
    signal_server_disconnected()
}

pub interface ISignalMultiplayerPeerPeerConnected {
    mut:
    signal_peer_connected(id i64)
}

pub interface ISignalMultiplayerPeerPeerDisconnected {
    mut:
    signal_peer_disconnected(id i64)
}

pub interface ISignalMultiplayerSpawnerDespawned {
    mut:
    signal_despawned(node Node)
}

pub interface ISignalMultiplayerSpawnerSpawned {
    mut:
    signal_spawned(node Node)
}

pub interface ISignalMultiplayerSynchronizerSynchronized {
    mut:
    signal_synchronized()
}

pub interface ISignalMultiplayerSynchronizerDeltaSynchronized {
    mut:
    signal_delta_synchronized()
}

pub interface ISignalMultiplayerSynchronizerVisibilityChanged {
    mut:
    signal_visibility_changed(for_peer i64)
}

pub interface ISignalNavigationAgent2DPathChanged {
    mut:
    signal_path_changed()
}

pub interface ISignalNavigationAgent2DTargetReached {
    mut:
    signal_target_reached()
}

pub interface ISignalNavigationAgent2DWaypointReached {
    mut:
    signal_waypoint_reached(details Dictionary)
}

pub interface ISignalNavigationAgent2DLinkReached {
    mut:
    signal_link_reached(details Dictionary)
}

pub interface ISignalNavigationAgent2DNavigationFinished {
    mut:
    signal_navigation_finished()
}

pub interface ISignalNavigationAgent2DVelocityComputed {
    mut:
    signal_velocity_computed(safe_velocity Vector2)
}

pub interface ISignalNavigationAgent3DPathChanged {
    mut:
    signal_path_changed()
}

pub interface ISignalNavigationAgent3DTargetReached {
    mut:
    signal_target_reached()
}

pub interface ISignalNavigationAgent3DWaypointReached {
    mut:
    signal_waypoint_reached(details Dictionary)
}

pub interface ISignalNavigationAgent3DLinkReached {
    mut:
    signal_link_reached(details Dictionary)
}

pub interface ISignalNavigationAgent3DNavigationFinished {
    mut:
    signal_navigation_finished()
}

pub interface ISignalNavigationAgent3DVelocityComputed {
    mut:
    signal_velocity_computed(safe_velocity Vector3)
}

pub interface ISignalNavigationRegion2DNavigationPolygonChanged {
    mut:
    signal_navigation_polygon_changed()
}

pub interface ISignalNavigationRegion2DBakeFinished {
    mut:
    signal_bake_finished()
}

pub interface ISignalNavigationRegion3DNavigationMeshChanged {
    mut:
    signal_navigation_mesh_changed()
}

pub interface ISignalNavigationRegion3DBakeFinished {
    mut:
    signal_bake_finished()
}

pub interface ISignalNavigationServer2DMapChanged {
    mut:
    signal_map_changed(mape RID)
}

pub interface ISignalNavigationServer2DNavigationDebugChanged {
    mut:
    signal_navigation_debug_changed()
}

pub interface ISignalNavigationServer3DMapChanged {
    mut:
    signal_map_changed(mape RID)
}

pub interface ISignalNavigationServer3DNavigationDebugChanged {
    mut:
    signal_navigation_debug_changed()
}

pub interface ISignalNavigationServer3DAvoidanceDebugChanged {
    mut:
    signal_avoidance_debug_changed()
}

pub interface ISignalNinePatchRectTextureChanged {
    mut:
    signal_texture_changed()
}

pub interface ISignalNodeReady {
    mut:
    signal_ready()
}

pub interface ISignalNodeRenamed {
    mut:
    signal_renamed()
}

pub interface ISignalNodeTreeEntered {
    mut:
    signal_tree_entered()
}

pub interface ISignalNodeTreeExiting {
    mut:
    signal_tree_exiting()
}

pub interface ISignalNodeTreeExited {
    mut:
    signal_tree_exited()
}

pub interface ISignalNodeChildEnteredTree {
    mut:
    signal_child_entered_tree(node Node)
}

pub interface ISignalNodeChildExitingTree {
    mut:
    signal_child_exiting_tree(node Node)
}

pub interface ISignalNodeChildOrderChanged {
    mut:
    signal_child_order_changed()
}

pub interface ISignalNodeReplacingBy {
    mut:
    signal_replacing_by(node Node)
}

pub interface ISignalNode3DVisibilityChanged {
    mut:
    signal_visibility_changed()
}

pub interface ISignalObjectScriptChanged {
    mut:
    signal_script_changed()
}

pub interface ISignalObjectPropertyListChanged {
    mut:
    signal_property_list_changed()
}

pub interface ISignalOpenXRInterfaceSessionBegun {
    mut:
    signal_session_begun()
}

pub interface ISignalOpenXRInterfaceSessionStopping {
    mut:
    signal_session_stopping()
}

pub interface ISignalOpenXRInterfaceSessionFocussed {
    mut:
    signal_session_focussed()
}

pub interface ISignalOpenXRInterfaceSessionVisible {
    mut:
    signal_session_visible()
}

pub interface ISignalOpenXRInterfacePoseRecentered {
    mut:
    signal_pose_recentered()
}

pub interface ISignalOptionButtonItemSelected {
    mut:
    signal_item_selected(index i64)
}

pub interface ISignalOptionButtonItemFocused {
    mut:
    signal_item_focused(index i64)
}

pub interface ISignalPath3DCurveChanged {
    mut:
    signal_curve_changed()
}

pub interface ISignalPopupPopupHide {
    mut:
    signal_popup_hide()
}

pub interface ISignalPopupMenuIdPressed {
    mut:
    signal_id_pressed(id i64)
}

pub interface ISignalPopupMenuIdFocused {
    mut:
    signal_id_focused(id i64)
}

pub interface ISignalPopupMenuIndexPressed {
    mut:
    signal_index_pressed(index i64)
}

pub interface ISignalPopupMenuMenuChanged {
    mut:
    signal_menu_changed()
}

pub interface ISignalProjectSettingsSettingsChanged {
    mut:
    signal_settings_changed()
}

pub interface ISignalRangeValueChanged {
    mut:
    signal_value_changed(value f64)
}

pub interface ISignalRangeChanged {
    mut:
    signal_changed()
}

pub interface ISignalRenderingServerFramePreDraw {
    mut:
    signal_frame_pre_draw()
}

pub interface ISignalRenderingServerFramePostDraw {
    mut:
    signal_frame_post_draw()
}

pub interface ISignalResourceChanged {
    mut:
    signal_changed()
}

pub interface ISignalResourceSetupLocalToSceneRequested {
    mut:
    signal_setup_local_to_scene_requested()
}

pub interface ISignalRichTextLabelMetaClicked {
    mut:
    signal_meta_clicked(meta Variant)
}

pub interface ISignalRichTextLabelMetaHoverStarted {
    mut:
    signal_meta_hover_started(meta Variant)
}

pub interface ISignalRichTextLabelMetaHoverEnded {
    mut:
    signal_meta_hover_ended(meta Variant)
}

pub interface ISignalRichTextLabelFinished {
    mut:
    signal_finished()
}

pub interface ISignalRigidBody2DBodyShapeEntered {
    mut:
    signal_body_shape_entered(body_rid RID, body Node, body_shape_index i64, local_shape_index i64)
}

pub interface ISignalRigidBody2DBodyShapeExited {
    mut:
    signal_body_shape_exited(body_rid RID, body Node, body_shape_index i64, local_shape_index i64)
}

pub interface ISignalRigidBody2DBodyEntered {
    mut:
    signal_body_entered(body Node)
}

pub interface ISignalRigidBody2DBodyExited {
    mut:
    signal_body_exited(body Node)
}

pub interface ISignalRigidBody2DSleepingStateChanged {
    mut:
    signal_sleeping_state_changed()
}

pub interface ISignalRigidBody3DBodyShapeEntered {
    mut:
    signal_body_shape_entered(body_rid RID, body Node, body_shape_index i64, local_shape_index i64)
}

pub interface ISignalRigidBody3DBodyShapeExited {
    mut:
    signal_body_shape_exited(body_rid RID, body Node, body_shape_index i64, local_shape_index i64)
}

pub interface ISignalRigidBody3DBodyEntered {
    mut:
    signal_body_entered(body Node)
}

pub interface ISignalRigidBody3DBodyExited {
    mut:
    signal_body_exited(body Node)
}

pub interface ISignalRigidBody3DSleepingStateChanged {
    mut:
    signal_sleeping_state_changed()
}

pub interface ISignalSceneMultiplayerPeerAuthenticating {
    mut:
    signal_peer_authenticating(id i64)
}

pub interface ISignalSceneMultiplayerPeerAuthenticationFailed {
    mut:
    signal_peer_authentication_failed(id i64)
}

pub interface ISignalSceneMultiplayerPeerPacket {
    mut:
    signal_peer_packet(id i64, packet PackedByteArray)
}

pub interface ISignalSceneTreeTreeChanged {
    mut:
    signal_tree_changed()
}

pub interface ISignalSceneTreeTreeProcessModeChanged {
    mut:
    signal_tree_process_mode_changed()
}

pub interface ISignalSceneTreeNodeAdded {
    mut:
    signal_node_added(node Node)
}

pub interface ISignalSceneTreeNodeRemoved {
    mut:
    signal_node_removed(node Node)
}

pub interface ISignalSceneTreeNodeRenamed {
    mut:
    signal_node_renamed(node Node)
}

pub interface ISignalSceneTreeNodeConfigurationWarningChanged {
    mut:
    signal_node_configuration_warning_changed(node Node)
}

pub interface ISignalSceneTreeProcessFrame {
    mut:
    signal_process_frame()
}

pub interface ISignalSceneTreePhysicsFrame {
    mut:
    signal_physics_frame()
}

pub interface ISignalSceneTreeTimerTimeout {
    mut:
    signal_timeout()
}

pub interface ISignalScriptCreateDialogScriptCreated {
    mut:
    signal_script_created(script Script)
}

pub interface ISignalScriptEditorEditorScriptChanged {
    mut:
    signal_editor_script_changed(script Script)
}

pub interface ISignalScriptEditorScriptClose {
    mut:
    signal_script_close(script Script)
}

pub interface ISignalScriptEditorBaseNameChanged {
    mut:
    signal_name_changed()
}

pub interface ISignalScriptEditorBaseEditedScriptChanged {
    mut:
    signal_edited_script_changed()
}

pub interface ISignalScriptEditorBaseRequestHelp {
    mut:
    signal_request_help(topic String)
}

pub interface ISignalScriptEditorBaseRequestOpenScriptAtLine {
    mut:
    signal_request_open_script_at_line(script Object, line i64)
}

pub interface ISignalScriptEditorBaseRequestSaveHistory {
    mut:
    signal_request_save_history()
}

pub interface ISignalScriptEditorBaseGoToHelp {
    mut:
    signal_go_to_help(what String)
}

pub interface ISignalScriptEditorBaseSearchInFilesRequested {
    mut:
    signal_search_in_files_requested(text String)
}

pub interface ISignalScriptEditorBaseReplaceInFilesRequested {
    mut:
    signal_replace_in_files_requested(text String)
}

pub interface ISignalScriptEditorBaseGoToMethod {
    mut:
    signal_go_to_method(script Object, method String)
}

pub interface ISignalScrollBarScrolling {
    mut:
    signal_scrolling()
}

pub interface ISignalScrollContainerScrollStarted {
    mut:
    signal_scroll_started()
}

pub interface ISignalScrollContainerScrollEnded {
    mut:
    signal_scroll_ended()
}

pub interface ISignalSkeleton2DBoneSetupChanged {
    mut:
    signal_bone_setup_changed()
}

pub interface ISignalSkeleton3DPoseUpdated {
    mut:
    signal_pose_updated()
}

pub interface ISignalSkeleton3DBonePoseChanged {
    mut:
    signal_bone_pose_changed(bone_idx i64)
}

pub interface ISignalSkeleton3DBoneEnabledChanged {
    mut:
    signal_bone_enabled_changed(bone_idx i64)
}

pub interface ISignalSkeleton3DShowRestOnlyChanged {
    mut:
    signal_show_rest_only_changed()
}

pub interface ISignalSkeletonProfileProfileUpdated {
    mut:
    signal_profile_updated()
}

pub interface ISignalSliderDragStarted {
    mut:
    signal_drag_started()
}

pub interface ISignalSliderDragEnded {
    mut:
    signal_drag_ended(value_changed bool)
}

pub interface ISignalSplitContainerDragged {
    mut:
    signal_dragged(offset i64)
}

pub interface ISignalSprite2DFrameChanged {
    mut:
    signal_frame_changed()
}

pub interface ISignalSprite2DTextureChanged {
    mut:
    signal_texture_changed()
}

pub interface ISignalSprite3DFrameChanged {
    mut:
    signal_frame_changed()
}

pub interface ISignalSprite3DTextureChanged {
    mut:
    signal_texture_changed()
}

pub interface ISignalTabBarTabSelected {
    mut:
    signal_tab_selected(tab i64)
}

pub interface ISignalTabBarTabChanged {
    mut:
    signal_tab_changed(tab i64)
}

pub interface ISignalTabBarTabClicked {
    mut:
    signal_tab_clicked(tab i64)
}

pub interface ISignalTabBarTabRmbClicked {
    mut:
    signal_tab_rmb_clicked(tab i64)
}

pub interface ISignalTabBarTabClosePressed {
    mut:
    signal_tab_close_pressed(tab i64)
}

pub interface ISignalTabBarTabButtonPressed {
    mut:
    signal_tab_button_pressed(tab i64)
}

pub interface ISignalTabBarTabHovered {
    mut:
    signal_tab_hovered(tab i64)
}

pub interface ISignalTabBarActiveTabRearranged {
    mut:
    signal_active_tab_rearranged(idx_to i64)
}

pub interface ISignalTabContainerActiveTabRearranged {
    mut:
    signal_active_tab_rearranged(idx_to i64)
}

pub interface ISignalTabContainerTabChanged {
    mut:
    signal_tab_changed(tab i64)
}

pub interface ISignalTabContainerTabClicked {
    mut:
    signal_tab_clicked(tab i64)
}

pub interface ISignalTabContainerTabHovered {
    mut:
    signal_tab_hovered(tab i64)
}

pub interface ISignalTabContainerTabSelected {
    mut:
    signal_tab_selected(tab i64)
}

pub interface ISignalTabContainerTabButtonPressed {
    mut:
    signal_tab_button_pressed(tab i64)
}

pub interface ISignalTabContainerPrePopupPressed {
    mut:
    signal_pre_popup_pressed()
}

pub interface ISignalTextEditTextSet {
    mut:
    signal_text_set()
}

pub interface ISignalTextEditTextChanged {
    mut:
    signal_text_changed()
}

pub interface ISignalTextEditLinesEditedFrom {
    mut:
    signal_lines_edited_from(from_line i64, to_line i64)
}

pub interface ISignalTextEditCaretChanged {
    mut:
    signal_caret_changed()
}

pub interface ISignalTextEditGutterClicked {
    mut:
    signal_gutter_clicked(line i64, gutter i64)
}

pub interface ISignalTextEditGutterAdded {
    mut:
    signal_gutter_added()
}

pub interface ISignalTextEditGutterRemoved {
    mut:
    signal_gutter_removed()
}

pub interface ISignalTextServerManagerInterfaceAdded {
    mut:
    signal_interface_added(interface_name StringName)
}

pub interface ISignalTextServerManagerInterfaceRemoved {
    mut:
    signal_interface_removed(interface_name StringName)
}

pub interface ISignalThemeDBFallbackChanged {
    mut:
    signal_fallback_changed()
}

pub interface ISignalTileDataChanged {
    mut:
    signal_changed()
}

pub interface ISignalTileMapChanged {
    mut:
    signal_changed()
}

pub interface ISignalTimerTimeout {
    mut:
    signal_timeout()
}

pub interface ISignalTouchScreenButtonPressed {
    mut:
    signal_pressed()
}

pub interface ISignalTouchScreenButtonReleased {
    mut:
    signal_released()
}

pub interface ISignalTreeItemSelected {
    mut:
    signal_item_selected()
}

pub interface ISignalTreeCellSelected {
    mut:
    signal_cell_selected()
}

pub interface ISignalTreeMultiSelected {
    mut:
    signal_multi_selected(item TreeItem, column i64, selected bool)
}

pub interface ISignalTreeItemMouseSelected {
    mut:
    signal_item_mouse_selected(position Vector2, mouse_button_index i64)
}

pub interface ISignalTreeEmptyClicked {
    mut:
    signal_empty_clicked(position Vector2, mouse_button_index i64)
}

pub interface ISignalTreeItemEdited {
    mut:
    signal_item_edited()
}

pub interface ISignalTreeCustomItemClicked {
    mut:
    signal_custom_item_clicked(mouse_button_index i64)
}

pub interface ISignalTreeItemIconDoubleClicked {
    mut:
    signal_item_icon_double_clicked()
}

pub interface ISignalTreeItemCollapsed {
    mut:
    signal_item_collapsed(item TreeItem)
}

pub interface ISignalTreeCheckPropagatedToItem {
    mut:
    signal_check_propagated_to_item(item TreeItem, column i64)
}

pub interface ISignalTreeButtonClicked {
    mut:
    signal_button_clicked(item TreeItem, column i64, id i64, mouse_button_index i64)
}

pub interface ISignalTreeCustomPopupEdited {
    mut:
    signal_custom_popup_edited(arrow_clicked bool)
}

pub interface ISignalTreeItemActivated {
    mut:
    signal_item_activated()
}

pub interface ISignalTreeColumnTitleClicked {
    mut:
    signal_column_title_clicked(column i64, mouse_button_index i64)
}

pub interface ISignalTreeNothingSelected {
    mut:
    signal_nothing_selected()
}

pub interface ISignalTweenStepFinished {
    mut:
    signal_step_finished(idx i64)
}

pub interface ISignalTweenLoopFinished {
    mut:
    signal_loop_finished(loop_count i64)
}

pub interface ISignalTweenFinished {
    mut:
    signal_finished()
}

pub interface ISignalTweenerFinished {
    mut:
    signal_finished()
}

pub interface ISignalUndoRedoVersionChanged {
    mut:
    signal_version_changed()
}

pub interface ISignalVideoStreamPlayerFinished {
    mut:
    signal_finished()
}

pub interface ISignalViewportSizeChanged {
    mut:
    signal_size_changed()
}

pub interface ISignalViewportGuiFocusChanged {
    mut:
    signal_gui_focus_changed(node Control)
}

pub interface ISignalVisibleOnScreenNotifier2DScreenEntered {
    mut:
    signal_screen_entered()
}

pub interface ISignalVisibleOnScreenNotifier2DScreenExited {
    mut:
    signal_screen_exited()
}

pub interface ISignalVisibleOnScreenNotifier3DScreenEntered {
    mut:
    signal_screen_entered()
}

pub interface ISignalVisibleOnScreenNotifier3DScreenExited {
    mut:
    signal_screen_exited()
}

pub interface ISignalVisualShaderNodeInputInputTypeChanged {
    mut:
    signal_input_type_changed()
}

pub interface ISignalWebRTCPeerConnectionSessionDescriptionCreated {
    mut:
    signal_session_description_created(type_name String, sdp String)
}

pub interface ISignalWebRTCPeerConnectionIceCandidateCreated {
    mut:
    signal_ice_candidate_created(media String, index i64, name String)
}

pub interface ISignalWebRTCPeerConnectionDataChannelReceived {
    mut:
    signal_data_channel_received(channel WebRTCDataChannel)
}

pub interface ISignalWebXRInterfaceSessionSupported {
    mut:
    signal_session_supported(session_mode String, supported bool)
}

pub interface ISignalWebXRInterfaceSessionStarted {
    mut:
    signal_session_started()
}

pub interface ISignalWebXRInterfaceSessionEnded {
    mut:
    signal_session_ended()
}

pub interface ISignalWebXRInterfaceSessionFailed {
    mut:
    signal_session_failed(message String)
}

pub interface ISignalWebXRInterfaceSelectstart {
    mut:
    signal_selectstart(input_source_id i64)
}

pub interface ISignalWebXRInterfaceSelect {
    mut:
    signal_gdselect(input_source_id i64)
}

pub interface ISignalWebXRInterfaceSelectend {
    mut:
    signal_selectend(input_source_id i64)
}

pub interface ISignalWebXRInterfaceSqueezestart {
    mut:
    signal_squeezestart(input_source_id i64)
}

pub interface ISignalWebXRInterfaceSqueeze {
    mut:
    signal_squeeze(input_source_id i64)
}

pub interface ISignalWebXRInterfaceSqueezeend {
    mut:
    signal_squeezeend(input_source_id i64)
}

pub interface ISignalWebXRInterfaceVisibilityStateChanged {
    mut:
    signal_visibility_state_changed()
}

pub interface ISignalWebXRInterfaceReferenceSpaceReset {
    mut:
    signal_reference_space_reset()
}

pub interface ISignalWebXRInterfaceDisplayRefreshRateChanged {
    mut:
    signal_display_refresh_rate_changed()
}

pub interface ISignalWindowWindowInput {
    mut:
    signal_window_input(event InputEvent)
}

pub interface ISignalWindowFilesDropped {
    mut:
    signal_files_dropped(files PackedStringArray)
}

pub interface ISignalWindowMouseEntered {
    mut:
    signal_mouse_entered()
}

pub interface ISignalWindowMouseExited {
    mut:
    signal_mouse_exited()
}

pub interface ISignalWindowFocusEntered {
    mut:
    signal_focus_entered()
}

pub interface ISignalWindowFocusExited {
    mut:
    signal_focus_exited()
}

pub interface ISignalWindowCloseRequested {
    mut:
    signal_close_requested()
}

pub interface ISignalWindowGoBackRequested {
    mut:
    signal_go_back_requested()
}

pub interface ISignalWindowVisibilityChanged {
    mut:
    signal_visibility_changed()
}

pub interface ISignalWindowAboutToPopup {
    mut:
    signal_about_to_popup()
}

pub interface ISignalWindowThemeChanged {
    mut:
    signal_theme_changed()
}

pub interface ISignalWindowDpiChanged {
    mut:
    signal_dpi_changed()
}

pub interface ISignalWindowTitlebarChanged {
    mut:
    signal_titlebar_changed()
}

pub interface ISignalXRController3DButtonPressed {
    mut:
    signal_button_pressed(name String)
}

pub interface ISignalXRController3DButtonReleased {
    mut:
    signal_button_released(name String)
}

pub interface ISignalXRController3DInputFloatChanged {
    mut:
    signal_input_float_changed(name String, value f64)
}

pub interface ISignalXRController3DInputVector2Changed {
    mut:
    signal_input_vector2_changed(name String, value Vector2)
}

pub interface ISignalXRInterfacePlayAreaChanged {
    mut:
    signal_play_area_changed(mode i64)
}

pub interface ISignalXRNode3DTrackingChanged {
    mut:
    signal_tracking_changed(tracking bool)
}

pub interface ISignalXRPositionalTrackerPoseChanged {
    mut:
    signal_pose_changed(pose XRPose)
}

pub interface ISignalXRPositionalTrackerPoseLostTracking {
    mut:
    signal_pose_lost_tracking(pose XRPose)
}

pub interface ISignalXRPositionalTrackerButtonPressed {
    mut:
    signal_button_pressed(name String)
}

pub interface ISignalXRPositionalTrackerButtonReleased {
    mut:
    signal_button_released(name String)
}

pub interface ISignalXRPositionalTrackerInputFloatChanged {
    mut:
    signal_input_float_changed(name String, value f64)
}

pub interface ISignalXRPositionalTrackerInputVector2Changed {
    mut:
    signal_input_vector2_changed(name String, vector Vector2)
}

pub interface ISignalXRPositionalTrackerProfileChanged {
    mut:
    signal_profile_changed(role String)
}

pub interface ISignalXRServerInterfaceAdded {
    mut:
    signal_interface_added(interface_name StringName)
}

pub interface ISignalXRServerInterfaceRemoved {
    mut:
    signal_interface_removed(interface_name StringName)
}

pub interface ISignalXRServerTrackerAdded {
    mut:
    signal_tracker_added(tracker_name StringName, type_name i64)
}

pub interface ISignalXRServerTrackerUpdated {
    mut:
    signal_tracker_updated(tracker_name StringName, type_name i64)
}

pub interface ISignalXRServerTrackerRemoved {
    mut:
    signal_tracker_removed(tracker_name StringName, type_name i64)
}

fn isignalacceptdialogconfirmed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAcceptDialogConfirmed(*t)
    i.signal_confirmed()
}
fn isignalacceptdialogcanceled_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAcceptDialogCanceled(*t)
    i.signal_canceled()
}
fn isignalacceptdialogcustomaction_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAcceptDialogCustomAction(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_custom_action(arg_0)
}
fn isignalanimatedsprite2dspriteframeschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite2DSpriteFramesChanged(*t)
    i.signal_sprite_frames_changed()
}
fn isignalanimatedsprite2danimationchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite2DAnimationChanged(*t)
    i.signal_animation_changed()
}
fn isignalanimatedsprite2dframechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite2DFrameChanged(*t)
    i.signal_frame_changed()
}
fn isignalanimatedsprite2danimationlooped_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite2DAnimationLooped(*t)
    i.signal_animation_looped()
}
fn isignalanimatedsprite2danimationfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite2DAnimationFinished(*t)
    i.signal_animation_finished()
}
fn isignalanimatedsprite3dspriteframeschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite3DSpriteFramesChanged(*t)
    i.signal_sprite_frames_changed()
}
fn isignalanimatedsprite3danimationchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite3DAnimationChanged(*t)
    i.signal_animation_changed()
}
fn isignalanimatedsprite3dframechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite3DFrameChanged(*t)
    i.signal_frame_changed()
}
fn isignalanimatedsprite3danimationlooped_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite3DAnimationLooped(*t)
    i.signal_animation_looped()
}
fn isignalanimatedsprite3danimationfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimatedSprite3DAnimationFinished(*t)
    i.signal_animation_finished()
}
fn isignalanimationlibraryanimationadded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationLibraryAnimationAdded(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_animation_added(arg_0)
}
fn isignalanimationlibraryanimationremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationLibraryAnimationRemoved(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_animation_removed(arg_0)
}
fn isignalanimationlibraryanimationrenamed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationLibraryAnimationRenamed(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&StringName(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_animation_renamed(arg_0, arg_1)
}
fn isignalanimationlibraryanimationchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationLibraryAnimationChanged(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_animation_changed(arg_0)
}
fn isignalanimationmixermixerupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationMixerMixerUpdated(*t)
    i.signal_mixer_updated()
}
fn isignalanimationmixeranimationlistchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationMixerAnimationListChanged(*t)
    i.signal_animation_list_changed()
}
fn isignalanimationmixeranimationlibrariesupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationMixerAnimationLibrariesUpdated(*t)
    i.signal_animation_libraries_updated()
}
fn isignalanimationmixeranimationfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationMixerAnimationFinished(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_animation_finished(arg_0)
}
fn isignalanimationmixeranimationstarted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationMixerAnimationStarted(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_animation_started(arg_0)
}
fn isignalanimationmixercachescleared_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationMixerCachesCleared(*t)
    i.signal_caches_cleared()
}
fn isignalanimationnodetreechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationNodeTreeChanged(*t)
    i.signal_tree_changed()
}
fn isignalanimationnodeanimationnoderenamed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationNodeAnimationNodeRenamed(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&String(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&String(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_animation_node_renamed(arg_0, arg_1, arg_2)
}
fn isignalanimationnodeanimationnoderemoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationNodeAnimationNodeRemoved(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&String(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_animation_node_removed(arg_0, arg_1)
}
fn isignalanimationnodeblendspace2dtrianglesupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationNodeBlendSpace2DTrianglesUpdated(*t)
    i.signal_triangles_updated()
}
fn isignalanimationnodeblendtreenodechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationNodeBlendTreeNodeChanged(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_node_changed(arg_0)
}
fn isignalanimationnodestatemachinetransitionadvanceconditionchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationNodeStateMachineTransitionAdvanceConditionChanged(*t)
    i.signal_advance_condition_changed()
}
fn isignalanimationplayercurrentanimationchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationPlayerCurrentAnimationChanged(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_current_animation_changed(arg_0)
}
fn isignalanimationplayeranimationchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationPlayerAnimationChanged(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&StringName(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_animation_changed(arg_0, arg_1)
}
fn isignalanimationtreeanimationplayerchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAnimationTreeAnimationPlayerChanged(*t)
    i.signal_animation_player_changed()
}
fn isignalarea2dbodyshapeentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea2DBodyShapeEntered(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Node2D{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_body_shape_entered(arg_0, arg_1, arg_2, arg_3)
}
fn isignalarea2dbodyshapeexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea2DBodyShapeExited(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Node2D{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_body_shape_exited(arg_0, arg_1, arg_2, arg_3)
}
fn isignalarea2dbodyentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea2DBodyEntered(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node2D{
        ptr: *arg_0_ptr
    }
    i.signal_body_entered(arg_0)
}
fn isignalarea2dbodyexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea2DBodyExited(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node2D{
        ptr: *arg_0_ptr
    }
    i.signal_body_exited(arg_0)
}
fn isignalarea2dareashapeentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea2DAreaShapeEntered(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Area2D{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_area_shape_entered(arg_0, arg_1, arg_2, arg_3)
}
fn isignalarea2dareashapeexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea2DAreaShapeExited(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Area2D{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_area_shape_exited(arg_0, arg_1, arg_2, arg_3)
}
fn isignalarea2dareaentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea2DAreaEntered(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Area2D{
        ptr: *arg_0_ptr
    }
    i.signal_area_entered(arg_0)
}
fn isignalarea2dareaexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea2DAreaExited(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Area2D{
        ptr: *arg_0_ptr
    }
    i.signal_area_exited(arg_0)
}
fn isignalarea3dbodyshapeentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea3DBodyShapeEntered(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Node3D{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_body_shape_entered(arg_0, arg_1, arg_2, arg_3)
}
fn isignalarea3dbodyshapeexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea3DBodyShapeExited(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Node3D{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_body_shape_exited(arg_0, arg_1, arg_2, arg_3)
}
fn isignalarea3dbodyentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea3DBodyEntered(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node3D{
        ptr: *arg_0_ptr
    }
    i.signal_body_entered(arg_0)
}
fn isignalarea3dbodyexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea3DBodyExited(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node3D{
        ptr: *arg_0_ptr
    }
    i.signal_body_exited(arg_0)
}
fn isignalarea3dareashapeentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea3DAreaShapeEntered(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Area3D{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_area_shape_entered(arg_0, arg_1, arg_2, arg_3)
}
fn isignalarea3dareashapeexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea3DAreaShapeExited(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Area3D{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_area_shape_exited(arg_0, arg_1, arg_2, arg_3)
}
fn isignalarea3dareaentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea3DAreaEntered(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Area3D{
        ptr: *arg_0_ptr
    }
    i.signal_area_entered(arg_0)
}
fn isignalarea3dareaexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalArea3DAreaExited(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Area3D{
        ptr: *arg_0_ptr
    }
    i.signal_area_exited(arg_0)
}
fn isignalaudioserverbuslayoutchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAudioServerBusLayoutChanged(*t)
    i.signal_bus_layout_changed()
}
fn isignalaudioserverbusrenamed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAudioServerBusRenamed(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&StringName(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&StringName(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_bus_renamed(arg_0, arg_1, arg_2)
}
fn isignalaudiostreamplayerfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAudioStreamPlayerFinished(*t)
    i.signal_finished()
}
fn isignalaudiostreamplayer2dfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAudioStreamPlayer2DFinished(*t)
    i.signal_finished()
}
fn isignalaudiostreamplayer3dfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalAudioStreamPlayer3DFinished(*t)
    i.signal_finished()
}
fn isignalbasebuttonpressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalBaseButtonPressed(*t)
    i.signal_pressed()
}
fn isignalbasebuttonbuttonup_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalBaseButtonButtonUp(*t)
    i.signal_button_up()
}
fn isignalbasebuttonbuttondown_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalBaseButtonButtonDown(*t)
    i.signal_button_down()
}
fn isignalbasebuttontoggled_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalBaseButtonToggled(*t)
    arg_0_ptr := unsafe{&bool(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_toggled(arg_0)
}
fn isignalbonemapbonemapupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalBoneMapBoneMapUpdated(*t)
    i.signal_bone_map_updated()
}
fn isignalbonemapprofileupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalBoneMapProfileUpdated(*t)
    i.signal_profile_updated()
}
fn isignalbuttongrouppressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalButtonGroupPressed(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := BaseButton{
        ptr: *arg_0_ptr
    }
    i.signal_pressed(arg_0)
}
fn isignalcpuparticles2dfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCPUParticles2DFinished(*t)
    i.signal_finished()
}
fn isignalcpuparticles3dfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCPUParticles3DFinished(*t)
    i.signal_finished()
}
fn isignalcameraservercamerafeedadded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCameraServerCameraFeedAdded(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_camera_feed_added(arg_0)
}
fn isignalcameraservercamerafeedremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCameraServerCameraFeedRemoved(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_camera_feed_removed(arg_0)
}
fn isignalcanvasitemdraw_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCanvasItemDraw(*t)
    i.signal_draw()
}
fn isignalcanvasitemvisibilitychanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCanvasItemVisibilityChanged(*t)
    i.signal_visibility_changed()
}
fn isignalcanvasitemhidden_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCanvasItemHidden(*t)
    i.signal_hidden()
}
fn isignalcanvasitemitemrectchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCanvasItemItemRectChanged(*t)
    i.signal_item_rect_changed()
}
fn isignalcanvaslayervisibilitychanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCanvasLayerVisibilityChanged(*t)
    i.signal_visibility_changed()
}
fn isignalcodeeditbreakpointtoggled_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCodeEditBreakpointToggled(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_breakpoint_toggled(arg_0)
}
fn isignalcodeeditcodecompletionrequested_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCodeEditCodeCompletionRequested(*t)
    i.signal_code_completion_requested()
}
fn isignalcodeeditsymbollookup_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCodeEditSymbolLookup(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_symbol_lookup(arg_0, arg_1, arg_2)
}
fn isignalcodeeditsymbolvalidate_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCodeEditSymbolValidate(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_symbol_validate(arg_0)
}
fn isignalcollisionobject2dinputevent_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCollisionObject2DInputEvent(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := &voidptr(args[1])
    arg_1 := InputEvent{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_input_event(arg_0, arg_1, arg_2)
}
fn isignalcollisionobject2dmouseentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCollisionObject2DMouseEntered(*t)
    i.signal_mouse_entered()
}
fn isignalcollisionobject2dmouseexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCollisionObject2DMouseExited(*t)
    i.signal_mouse_exited()
}
fn isignalcollisionobject2dmouseshapeentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCollisionObject2DMouseShapeEntered(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_mouse_shape_entered(arg_0)
}
fn isignalcollisionobject2dmouseshapeexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCollisionObject2DMouseShapeExited(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_mouse_shape_exited(arg_0)
}
fn isignalcollisionobject3dinputevent_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCollisionObject3DInputEvent(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := &voidptr(args[1])
    arg_1 := InputEvent{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&Vector3(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&Vector3(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    arg_4_ptr := unsafe{&i64(voidptr(args[4]))}
    arg_4 := *arg_4_ptr
    i.signal_input_event(arg_0, arg_1, arg_2, arg_3, arg_4)
}
fn isignalcollisionobject3dmouseentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCollisionObject3DMouseEntered(*t)
    i.signal_mouse_entered()
}
fn isignalcollisionobject3dmouseexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCollisionObject3DMouseExited(*t)
    i.signal_mouse_exited()
}
fn isignalcolorpickercolorchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalColorPickerColorChanged(*t)
    arg_0_ptr := unsafe{&Color(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_color_changed(arg_0)
}
fn isignalcolorpickerpresetadded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalColorPickerPresetAdded(*t)
    arg_0_ptr := unsafe{&Color(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_preset_added(arg_0)
}
fn isignalcolorpickerpresetremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalColorPickerPresetRemoved(*t)
    arg_0_ptr := unsafe{&Color(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_preset_removed(arg_0)
}
fn isignalcolorpickerbuttoncolorchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalColorPickerButtonColorChanged(*t)
    arg_0_ptr := unsafe{&Color(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_color_changed(arg_0)
}
fn isignalcolorpickerbuttonpopupclosed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalColorPickerButtonPopupClosed(*t)
    i.signal_popup_closed()
}
fn isignalcolorpickerbuttonpickercreated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalColorPickerButtonPickerCreated(*t)
    i.signal_picker_created()
}
fn isignalcontainerpresortchildren_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalContainerPreSortChildren(*t)
    i.signal_pre_sort_children()
}
fn isignalcontainersortchildren_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalContainerSortChildren(*t)
    i.signal_sort_children()
}
fn isignalcontrolresized_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlResized(*t)
    i.signal_resized()
}
fn isignalcontrolguiinput_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlGuiInput(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := InputEvent{
        ptr: *arg_0_ptr
    }
    i.signal_gui_input(arg_0)
}
fn isignalcontrolmouseentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlMouseEntered(*t)
    i.signal_mouse_entered()
}
fn isignalcontrolmouseexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlMouseExited(*t)
    i.signal_mouse_exited()
}
fn isignalcontrolfocusentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlFocusEntered(*t)
    i.signal_focus_entered()
}
fn isignalcontrolfocusexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlFocusExited(*t)
    i.signal_focus_exited()
}
fn isignalcontrolsizeflagschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlSizeFlagsChanged(*t)
    i.signal_size_flags_changed()
}
fn isignalcontrolminimumsizechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlMinimumSizeChanged(*t)
    i.signal_minimum_size_changed()
}
fn isignalcontrolthemechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalControlThemeChanged(*t)
    i.signal_theme_changed()
}
fn isignalcurverangechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalCurveRangeChanged(*t)
    i.signal_range_changed()
}
fn isignaleditordebuggersessionstarted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorDebuggerSessionStarted(*t)
    i.signal_started()
}
fn isignaleditordebuggersessionstopped_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorDebuggerSessionStopped(*t)
    i.signal_stopped()
}
fn isignaleditordebuggersessionbreaked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorDebuggerSessionBreaked(*t)
    arg_0_ptr := unsafe{&bool(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_breaked(arg_0)
}
fn isignaleditordebuggersessioncontinued_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorDebuggerSessionContinued(*t)
    i.signal_continued()
}
fn isignaleditorfiledialogfileselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorFileDialogFileSelected(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_file_selected(arg_0)
}
fn isignaleditorfiledialogfilesselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorFileDialogFilesSelected(*t)
    arg_0_ptr := unsafe{&PackedStringArray(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_files_selected(arg_0)
}
fn isignaleditorfiledialogdirselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorFileDialogDirSelected(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_dir_selected(arg_0)
}
fn isignaleditorfilesystemfilesystemchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorFileSystemFilesystemChanged(*t)
    i.signal_filesystem_changed()
}
fn isignaleditorfilesystemscriptclassesupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorFileSystemScriptClassesUpdated(*t)
    i.signal_script_classes_updated()
}
fn isignaleditorfilesystemsourceschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorFileSystemSourcesChanged(*t)
    arg_0_ptr := unsafe{&bool(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_sources_changed(arg_0)
}
fn isignaleditorfilesystemresourcesreimported_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorFileSystemResourcesReimported(*t)
    arg_0_ptr := unsafe{&PackedStringArray(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_resources_reimported(arg_0)
}
fn isignaleditorfilesystemresourcesreload_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorFileSystemResourcesReload(*t)
    arg_0_ptr := unsafe{&PackedStringArray(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_resources_reload(arg_0)
}
fn isignaleditorinspectorpropertyselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorPropertySelected(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_property_selected(arg_0)
}
fn isignaleditorinspectorpropertykeyed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorPropertyKeyed(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&Variant(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&bool(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_property_keyed(arg_0, arg_1, arg_2)
}
fn isignaleditorinspectorpropertydeleted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorPropertyDeleted(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_property_deleted(arg_0)
}
fn isignaleditorinspectorresourceselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorResourceSelected(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Resource{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := unsafe{&String(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_resource_selected(arg_0, arg_1)
}
fn isignaleditorinspectorobjectidselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorObjectIdSelected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_object_id_selected(arg_0)
}
fn isignaleditorinspectorpropertyedited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorPropertyEdited(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_property_edited(arg_0)
}
fn isignaleditorinspectorpropertytoggled_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorPropertyToggled(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_property_toggled(arg_0, arg_1)
}
fn isignaleditorinspectoreditedobjectchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorEditedObjectChanged(*t)
    i.signal_edited_object_changed()
}
fn isignaleditorinspectorrestartrequested_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorInspectorRestartRequested(*t)
    i.signal_restart_requested()
}
fn isignaleditorpluginscenechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPluginSceneChanged(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_scene_changed(arg_0)
}
fn isignaleditorpluginsceneclosed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPluginSceneClosed(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_scene_closed(arg_0)
}
fn isignaleditorpluginmainscreenchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPluginMainScreenChanged(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_main_screen_changed(arg_0)
}
fn isignaleditorpluginresourcesaved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPluginResourceSaved(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Resource{
        ptr: *arg_0_ptr
    }
    i.signal_resource_saved(arg_0)
}
fn isignaleditorpluginprojectsettingschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPluginProjectSettingsChanged(*t)
    i.signal_project_settings_changed()
}
fn isignaleditorpropertypropertychanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyPropertyChanged(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&Variant(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&StringName(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&bool(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_property_changed(arg_0, arg_1, arg_2, arg_3)
}
fn isignaleditorpropertymultiplepropertieschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyMultiplePropertiesChanged(*t)
    arg_0_ptr := unsafe{&PackedStringArray(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&Array(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_multiple_properties_changed(arg_0, arg_1)
}
fn isignaleditorpropertypropertykeyed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyPropertyKeyed(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_property_keyed(arg_0)
}
fn isignaleditorpropertypropertydeleted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyPropertyDeleted(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_property_deleted(arg_0)
}
fn isignaleditorpropertypropertykeyedwithvalue_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyPropertyKeyedWithValue(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&Variant(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_property_keyed_with_value(arg_0, arg_1)
}
fn isignaleditorpropertypropertychecked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyPropertyChecked(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_property_checked(arg_0, arg_1)
}
fn isignaleditorpropertypropertypinned_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyPropertyPinned(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_property_pinned(arg_0, arg_1)
}
fn isignaleditorpropertypropertycanrevertchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyPropertyCanRevertChanged(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_property_can_revert_changed(arg_0, arg_1)
}
fn isignaleditorpropertyresourceselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyResourceSelected(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Resource{
        ptr: *arg_1_ptr
    }
    i.signal_resource_selected(arg_0, arg_1)
}
fn isignaleditorpropertyobjectidselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertyObjectIdSelected(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_object_id_selected(arg_0, arg_1)
}
fn isignaleditorpropertyselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorPropertySelected(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_selected(arg_0, arg_1)
}
fn isignaleditorresourcepickerresourceselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorResourcePickerResourceSelected(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Resource{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_resource_selected(arg_0, arg_1)
}
fn isignaleditorresourcepickerresourcechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorResourcePickerResourceChanged(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Resource{
        ptr: *arg_0_ptr
    }
    i.signal_resource_changed(arg_0)
}
fn isignaleditorresourcepreviewpreviewinvalidated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorResourcePreviewPreviewInvalidated(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_preview_invalidated(arg_0)
}
fn isignaleditorselectionselectionchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorSelectionSelectionChanged(*t)
    i.signal_selection_changed()
}
fn isignaleditorsettingssettingschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorSettingsSettingsChanged(*t)
    i.signal_settings_changed()
}
fn isignaleditorspinslidergrabbed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorSpinSliderGrabbed(*t)
    i.signal_grabbed()
}
fn isignaleditorspinsliderungrabbed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorSpinSliderUngrabbed(*t)
    i.signal_ungrabbed()
}
fn isignaleditorspinslidervaluefocusentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorSpinSliderValueFocusEntered(*t)
    i.signal_value_focus_entered()
}
fn isignaleditorspinslidervaluefocusexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorSpinSliderValueFocusExited(*t)
    i.signal_value_focus_exited()
}
fn isignaleditorundoredomanagerhistorychanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorUndoRedoManagerHistoryChanged(*t)
    i.signal_history_changed()
}
fn isignaleditorundoredomanagerversionchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalEditorUndoRedoManagerVersionChanged(*t)
    i.signal_version_changed()
}
fn isignalfiledialogfileselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileDialogFileSelected(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_file_selected(arg_0)
}
fn isignalfiledialogfilesselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileDialogFilesSelected(*t)
    arg_0_ptr := unsafe{&PackedStringArray(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_files_selected(arg_0)
}
fn isignalfiledialogdirselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileDialogDirSelected(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_dir_selected(arg_0)
}
fn isignalfilesystemdockinherit_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileSystemDockInherit(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_inherit(arg_0)
}
fn isignalfilesystemdockinstantiate_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileSystemDockInstantiate(*t)
    arg_0_ptr := unsafe{&PackedStringArray(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_instantiate(arg_0)
}
fn isignalfilesystemdockresourceremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileSystemDockResourceRemoved(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Resource{
        ptr: *arg_0_ptr
    }
    i.signal_resource_removed(arg_0)
}
fn isignalfilesystemdockfileremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileSystemDockFileRemoved(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_file_removed(arg_0)
}
fn isignalfilesystemdockfolderremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileSystemDockFolderRemoved(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_folder_removed(arg_0)
}
fn isignalfilesystemdockfilesmoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileSystemDockFilesMoved(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&String(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_files_moved(arg_0, arg_1)
}
fn isignalfilesystemdockfoldermoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileSystemDockFolderMoved(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&String(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_folder_moved(arg_0, arg_1)
}
fn isignalfilesystemdockdisplaymodechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalFileSystemDockDisplayModeChanged(*t)
    i.signal_display_mode_changed()
}
fn isignalgdextensionmanagerextensionsreloaded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGDExtensionManagerExtensionsReloaded(*t)
    i.signal_extensions_reloaded()
}
fn isignalgpuparticles2dfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGPUParticles2DFinished(*t)
    i.signal_finished()
}
fn isignalgpuparticles3dfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGPUParticles3DFinished(*t)
    i.signal_finished()
}
fn isignalgrapheditconnectionrequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditConnectionRequest(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&StringName(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_connection_request(arg_0, arg_1, arg_2, arg_3)
}
fn isignalgrapheditdisconnectionrequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditDisconnectionRequest(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&StringName(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_disconnection_request(arg_0, arg_1, arg_2, arg_3)
}
fn isignalgrapheditconnectiontoempty_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditConnectionToEmpty(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&Vector2(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_connection_to_empty(arg_0, arg_1, arg_2)
}
fn isignalgrapheditconnectionfromempty_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditConnectionFromEmpty(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&Vector2(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_connection_from_empty(arg_0, arg_1, arg_2)
}
fn isignalgrapheditconnectiondragstarted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditConnectionDragStarted(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&bool(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_connection_drag_started(arg_0, arg_1, arg_2)
}
fn isignalgrapheditconnectiondragended_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditConnectionDragEnded(*t)
    i.signal_connection_drag_ended()
}
fn isignalgrapheditcopynodesrequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditCopyNodesRequest(*t)
    i.signal_copy_nodes_request()
}
fn isignalgrapheditpastenodesrequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditPasteNodesRequest(*t)
    i.signal_paste_nodes_request()
}
fn isignalgrapheditduplicatenodesrequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditDuplicateNodesRequest(*t)
    i.signal_duplicate_nodes_request()
}
fn isignalgrapheditdeletenodesrequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditDeleteNodesRequest(*t)
    arg_0_ptr := unsafe{&Array(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_delete_nodes_request(arg_0)
}
fn isignalgrapheditnodeselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditNodeSelected(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_node_selected(arg_0)
}
fn isignalgrapheditnodedeselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditNodeDeselected(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_node_deselected(arg_0)
}
fn isignalgrapheditpopuprequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditPopupRequest(*t)
    arg_0_ptr := unsafe{&Vector2(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_popup_request(arg_0)
}
fn isignalgrapheditbeginnodemove_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditBeginNodeMove(*t)
    i.signal_begin_node_move()
}
fn isignalgrapheditendnodemove_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditEndNodeMove(*t)
    i.signal_end_node_move()
}
fn isignalgrapheditscrolloffsetchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphEditScrollOffsetChanged(*t)
    arg_0_ptr := unsafe{&Vector2(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_scroll_offset_changed(arg_0)
}
fn isignalgraphelementnodeselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphElementNodeSelected(*t)
    i.signal_node_selected()
}
fn isignalgraphelementnodedeselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphElementNodeDeselected(*t)
    i.signal_node_deselected()
}
fn isignalgraphelementraiserequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphElementRaiseRequest(*t)
    i.signal_raise_request()
}
fn isignalgraphelementdeleterequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphElementDeleteRequest(*t)
    i.signal_delete_request()
}
fn isignalgraphelementresizerequest_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphElementResizeRequest(*t)
    arg_0_ptr := unsafe{&Vector2(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_resize_request(arg_0)
}
fn isignalgraphelementdragged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphElementDragged(*t)
    arg_0_ptr := unsafe{&Vector2(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&Vector2(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_dragged(arg_0, arg_1)
}
fn isignalgraphelementpositionoffsetchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphElementPositionOffsetChanged(*t)
    i.signal_position_offset_changed()
}
fn isignalgraphnodeslotupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGraphNodeSlotUpdated(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_slot_updated(arg_0)
}
fn isignalgridmapcellsizechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGridMapCellSizeChanged(*t)
    arg_0_ptr := unsafe{&Vector3(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_cell_size_changed(arg_0)
}
fn isignalgridmapchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalGridMapChanged(*t)
    i.signal_changed()
}
fn isignalhttprequestrequestcompleted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalHTTPRequestRequestCompleted(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&PackedStringArray(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&PackedByteArray(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_request_completed(arg_0, arg_1, arg_2, arg_3)
}
fn isignalinputjoyconnectionchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalInputJoyConnectionChanged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_joy_connection_changed(arg_0, arg_1)
}
fn isignalitemlistitemselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalItemListItemSelected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_item_selected(arg_0)
}
fn isignalitemlistemptyclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalItemListEmptyClicked(*t)
    arg_0_ptr := unsafe{&Vector2(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_empty_clicked(arg_0, arg_1)
}
fn isignalitemlistitemclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalItemListItemClicked(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&Vector2(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_item_clicked(arg_0, arg_1, arg_2)
}
fn isignalitemlistmultiselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalItemListMultiSelected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_multi_selected(arg_0, arg_1)
}
fn isignalitemlistitemactivated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalItemListItemActivated(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_item_activated(arg_0)
}
fn isignaljavascriptbridgepwaupdateavailable_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalJavaScriptBridgePwaUpdateAvailable(*t)
    i.signal_pwa_update_available()
}
fn isignallineedittextchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalLineEditTextChanged(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_text_changed(arg_0)
}
fn isignallineedittextchangerejected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalLineEditTextChangeRejected(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_text_change_rejected(arg_0)
}
fn isignallineedittextsubmitted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalLineEditTextSubmitted(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_text_submitted(arg_0)
}
fn isignalmainlooponrequestpermissionsresult_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMainLoopOnRequestPermissionsResult(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_on_request_permissions_result(arg_0, arg_1)
}
fn isignalmenubuttonabouttopopup_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMenuButtonAboutToPopup(*t)
    i.signal_about_to_popup()
}
fn isignalmeshinstance2dtexturechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMeshInstance2DTextureChanged(*t)
    i.signal_texture_changed()
}
fn isignalmultimeshinstance2dtexturechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiMeshInstance2DTextureChanged(*t)
    i.signal_texture_changed()
}
fn isignalmultiplayerapipeerconnected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerAPIPeerConnected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_peer_connected(arg_0)
}
fn isignalmultiplayerapipeerdisconnected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerAPIPeerDisconnected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_peer_disconnected(arg_0)
}
fn isignalmultiplayerapiconnectedtoserver_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerAPIConnectedToServer(*t)
    i.signal_connected_to_server()
}
fn isignalmultiplayerapiconnectionfailed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerAPIConnectionFailed(*t)
    i.signal_connection_failed()
}
fn isignalmultiplayerapiserverdisconnected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerAPIServerDisconnected(*t)
    i.signal_server_disconnected()
}
fn isignalmultiplayerpeerpeerconnected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerPeerPeerConnected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_peer_connected(arg_0)
}
fn isignalmultiplayerpeerpeerdisconnected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerPeerPeerDisconnected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_peer_disconnected(arg_0)
}
fn isignalmultiplayerspawnerdespawned_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerSpawnerDespawned(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_despawned(arg_0)
}
fn isignalmultiplayerspawnerspawned_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerSpawnerSpawned(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_spawned(arg_0)
}
fn isignalmultiplayersynchronizersynchronized_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerSynchronizerSynchronized(*t)
    i.signal_synchronized()
}
fn isignalmultiplayersynchronizerdeltasynchronized_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerSynchronizerDeltaSynchronized(*t)
    i.signal_delta_synchronized()
}
fn isignalmultiplayersynchronizervisibilitychanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalMultiplayerSynchronizerVisibilityChanged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_visibility_changed(arg_0)
}
fn isignalnavigationagent2dpathchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent2DPathChanged(*t)
    i.signal_path_changed()
}
fn isignalnavigationagent2dtargetreached_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent2DTargetReached(*t)
    i.signal_target_reached()
}
fn isignalnavigationagent2dwaypointreached_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent2DWaypointReached(*t)
    arg_0_ptr := unsafe{&Dictionary(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_waypoint_reached(arg_0)
}
fn isignalnavigationagent2dlinkreached_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent2DLinkReached(*t)
    arg_0_ptr := unsafe{&Dictionary(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_link_reached(arg_0)
}
fn isignalnavigationagent2dnavigationfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent2DNavigationFinished(*t)
    i.signal_navigation_finished()
}
fn isignalnavigationagent2dvelocitycomputed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent2DVelocityComputed(*t)
    arg_0_ptr := unsafe{&Vector2(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_velocity_computed(arg_0)
}
fn isignalnavigationagent3dpathchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent3DPathChanged(*t)
    i.signal_path_changed()
}
fn isignalnavigationagent3dtargetreached_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent3DTargetReached(*t)
    i.signal_target_reached()
}
fn isignalnavigationagent3dwaypointreached_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent3DWaypointReached(*t)
    arg_0_ptr := unsafe{&Dictionary(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_waypoint_reached(arg_0)
}
fn isignalnavigationagent3dlinkreached_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent3DLinkReached(*t)
    arg_0_ptr := unsafe{&Dictionary(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_link_reached(arg_0)
}
fn isignalnavigationagent3dnavigationfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent3DNavigationFinished(*t)
    i.signal_navigation_finished()
}
fn isignalnavigationagent3dvelocitycomputed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationAgent3DVelocityComputed(*t)
    arg_0_ptr := unsafe{&Vector3(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_velocity_computed(arg_0)
}
fn isignalnavigationregion2dnavigationpolygonchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationRegion2DNavigationPolygonChanged(*t)
    i.signal_navigation_polygon_changed()
}
fn isignalnavigationregion2dbakefinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationRegion2DBakeFinished(*t)
    i.signal_bake_finished()
}
fn isignalnavigationregion3dnavigationmeshchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationRegion3DNavigationMeshChanged(*t)
    i.signal_navigation_mesh_changed()
}
fn isignalnavigationregion3dbakefinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationRegion3DBakeFinished(*t)
    i.signal_bake_finished()
}
fn isignalnavigationserver2dmapchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationServer2DMapChanged(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_map_changed(arg_0)
}
fn isignalnavigationserver2dnavigationdebugchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationServer2DNavigationDebugChanged(*t)
    i.signal_navigation_debug_changed()
}
fn isignalnavigationserver3dmapchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationServer3DMapChanged(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_map_changed(arg_0)
}
fn isignalnavigationserver3dnavigationdebugchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationServer3DNavigationDebugChanged(*t)
    i.signal_navigation_debug_changed()
}
fn isignalnavigationserver3davoidancedebugchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNavigationServer3DAvoidanceDebugChanged(*t)
    i.signal_avoidance_debug_changed()
}
fn isignalninepatchrecttexturechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNinePatchRectTextureChanged(*t)
    i.signal_texture_changed()
}
fn isignalnodeready_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeReady(*t)
    i.signal_ready()
}
fn isignalnoderenamed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeRenamed(*t)
    i.signal_renamed()
}
fn isignalnodetreeentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeTreeEntered(*t)
    i.signal_tree_entered()
}
fn isignalnodetreeexiting_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeTreeExiting(*t)
    i.signal_tree_exiting()
}
fn isignalnodetreeexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeTreeExited(*t)
    i.signal_tree_exited()
}
fn isignalnodechildenteredtree_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeChildEnteredTree(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_child_entered_tree(arg_0)
}
fn isignalnodechildexitingtree_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeChildExitingTree(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_child_exiting_tree(arg_0)
}
fn isignalnodechildorderchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeChildOrderChanged(*t)
    i.signal_child_order_changed()
}
fn isignalnodereplacingby_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNodeReplacingBy(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_replacing_by(arg_0)
}
fn isignalnode3dvisibilitychanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalNode3DVisibilityChanged(*t)
    i.signal_visibility_changed()
}
fn isignalobjectscriptchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalObjectScriptChanged(*t)
    i.signal_script_changed()
}
fn isignalobjectpropertylistchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalObjectPropertyListChanged(*t)
    i.signal_property_list_changed()
}
fn isignalopenxrinterfacesessionbegun_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalOpenXRInterfaceSessionBegun(*t)
    i.signal_session_begun()
}
fn isignalopenxrinterfacesessionstopping_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalOpenXRInterfaceSessionStopping(*t)
    i.signal_session_stopping()
}
fn isignalopenxrinterfacesessionfocussed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalOpenXRInterfaceSessionFocussed(*t)
    i.signal_session_focussed()
}
fn isignalopenxrinterfacesessionvisible_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalOpenXRInterfaceSessionVisible(*t)
    i.signal_session_visible()
}
fn isignalopenxrinterfaceposerecentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalOpenXRInterfacePoseRecentered(*t)
    i.signal_pose_recentered()
}
fn isignaloptionbuttonitemselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalOptionButtonItemSelected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_item_selected(arg_0)
}
fn isignaloptionbuttonitemfocused_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalOptionButtonItemFocused(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_item_focused(arg_0)
}
fn isignalpath3dcurvechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalPath3DCurveChanged(*t)
    i.signal_curve_changed()
}
fn isignalpopuppopuphide_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalPopupPopupHide(*t)
    i.signal_popup_hide()
}
fn isignalpopupmenuidpressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalPopupMenuIdPressed(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_id_pressed(arg_0)
}
fn isignalpopupmenuidfocused_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalPopupMenuIdFocused(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_id_focused(arg_0)
}
fn isignalpopupmenuindexpressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalPopupMenuIndexPressed(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_index_pressed(arg_0)
}
fn isignalpopupmenumenuchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalPopupMenuMenuChanged(*t)
    i.signal_menu_changed()
}
fn isignalprojectsettingssettingschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalProjectSettingsSettingsChanged(*t)
    i.signal_settings_changed()
}
fn isignalrangevaluechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRangeValueChanged(*t)
    arg_0_ptr := unsafe{&f64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_value_changed(arg_0)
}
fn isignalrangechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRangeChanged(*t)
    i.signal_changed()
}
fn isignalrenderingserverframepredraw_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRenderingServerFramePreDraw(*t)
    i.signal_frame_pre_draw()
}
fn isignalrenderingserverframepostdraw_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRenderingServerFramePostDraw(*t)
    i.signal_frame_post_draw()
}
fn isignalresourcechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalResourceChanged(*t)
    i.signal_changed()
}
fn isignalresourcesetuplocaltoscenerequested_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalResourceSetupLocalToSceneRequested(*t)
    i.signal_setup_local_to_scene_requested()
}
fn isignalrichtextlabelmetaclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRichTextLabelMetaClicked(*t)
    arg_0_ptr := unsafe{&Variant(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_meta_clicked(arg_0)
}
fn isignalrichtextlabelmetahoverstarted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRichTextLabelMetaHoverStarted(*t)
    arg_0_ptr := unsafe{&Variant(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_meta_hover_started(arg_0)
}
fn isignalrichtextlabelmetahoverended_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRichTextLabelMetaHoverEnded(*t)
    arg_0_ptr := unsafe{&Variant(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_meta_hover_ended(arg_0)
}
fn isignalrichtextlabelfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRichTextLabelFinished(*t)
    i.signal_finished()
}
fn isignalrigidbody2dbodyshapeentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody2DBodyShapeEntered(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Node{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_body_shape_entered(arg_0, arg_1, arg_2, arg_3)
}
fn isignalrigidbody2dbodyshapeexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody2DBodyShapeExited(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Node{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_body_shape_exited(arg_0, arg_1, arg_2, arg_3)
}
fn isignalrigidbody2dbodyentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody2DBodyEntered(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_body_entered(arg_0)
}
fn isignalrigidbody2dbodyexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody2DBodyExited(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_body_exited(arg_0)
}
fn isignalrigidbody2dsleepingstatechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody2DSleepingStateChanged(*t)
    i.signal_sleeping_state_changed()
}
fn isignalrigidbody3dbodyshapeentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody3DBodyShapeEntered(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Node{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_body_shape_entered(arg_0, arg_1, arg_2, arg_3)
}
fn isignalrigidbody3dbodyshapeexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody3DBodyShapeExited(*t)
    arg_0_ptr := unsafe{&RID(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := &voidptr(args[1])
    arg_1 := Node{
        ptr: *arg_1_ptr
    }
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_body_shape_exited(arg_0, arg_1, arg_2, arg_3)
}
fn isignalrigidbody3dbodyentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody3DBodyEntered(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_body_entered(arg_0)
}
fn isignalrigidbody3dbodyexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody3DBodyExited(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_body_exited(arg_0)
}
fn isignalrigidbody3dsleepingstatechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalRigidBody3DSleepingStateChanged(*t)
    i.signal_sleeping_state_changed()
}
fn isignalscenemultiplayerpeerauthenticating_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneMultiplayerPeerAuthenticating(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_peer_authenticating(arg_0)
}
fn isignalscenemultiplayerpeerauthenticationfailed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneMultiplayerPeerAuthenticationFailed(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_peer_authentication_failed(arg_0)
}
fn isignalscenemultiplayerpeerpacket_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneMultiplayerPeerPacket(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&PackedByteArray(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_peer_packet(arg_0, arg_1)
}
fn isignalscenetreetreechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreeTreeChanged(*t)
    i.signal_tree_changed()
}
fn isignalscenetreetreeprocessmodechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreeTreeProcessModeChanged(*t)
    i.signal_tree_process_mode_changed()
}
fn isignalscenetreenodeadded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreeNodeAdded(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_node_added(arg_0)
}
fn isignalscenetreenoderemoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreeNodeRemoved(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_node_removed(arg_0)
}
fn isignalscenetreenoderenamed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreeNodeRenamed(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_node_renamed(arg_0)
}
fn isignalscenetreenodeconfigurationwarningchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreeNodeConfigurationWarningChanged(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Node{
        ptr: *arg_0_ptr
    }
    i.signal_node_configuration_warning_changed(arg_0)
}
fn isignalscenetreeprocessframe_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreeProcessFrame(*t)
    i.signal_process_frame()
}
fn isignalscenetreephysicsframe_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreePhysicsFrame(*t)
    i.signal_physics_frame()
}
fn isignalscenetreetimertimeout_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSceneTreeTimerTimeout(*t)
    i.signal_timeout()
}
fn isignalscriptcreatedialogscriptcreated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptCreateDialogScriptCreated(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Script{
        ptr: *arg_0_ptr
    }
    i.signal_script_created(arg_0)
}
fn isignalscripteditoreditorscriptchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorEditorScriptChanged(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Script{
        ptr: *arg_0_ptr
    }
    i.signal_editor_script_changed(arg_0)
}
fn isignalscripteditorscriptclose_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorScriptClose(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Script{
        ptr: *arg_0_ptr
    }
    i.signal_script_close(arg_0)
}
fn isignalscripteditorbasenamechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseNameChanged(*t)
    i.signal_name_changed()
}
fn isignalscripteditorbaseeditedscriptchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseEditedScriptChanged(*t)
    i.signal_edited_script_changed()
}
fn isignalscripteditorbaserequesthelp_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseRequestHelp(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_request_help(arg_0)
}
fn isignalscripteditorbaserequestopenscriptatline_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseRequestOpenScriptAtLine(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Object{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_request_open_script_at_line(arg_0, arg_1)
}
fn isignalscripteditorbaserequestsavehistory_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseRequestSaveHistory(*t)
    i.signal_request_save_history()
}
fn isignalscripteditorbasegotohelp_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseGoToHelp(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_go_to_help(arg_0)
}
fn isignalscripteditorbasesearchinfilesrequested_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseSearchInFilesRequested(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_search_in_files_requested(arg_0)
}
fn isignalscripteditorbasereplaceinfilesrequested_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseReplaceInFilesRequested(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_replace_in_files_requested(arg_0)
}
fn isignalscripteditorbasegotomethod_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScriptEditorBaseGoToMethod(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Object{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := unsafe{&String(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_go_to_method(arg_0, arg_1)
}
fn isignalscrollbarscrolling_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScrollBarScrolling(*t)
    i.signal_scrolling()
}
fn isignalscrollcontainerscrollstarted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScrollContainerScrollStarted(*t)
    i.signal_scroll_started()
}
fn isignalscrollcontainerscrollended_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalScrollContainerScrollEnded(*t)
    i.signal_scroll_ended()
}
fn isignalskeleton2dbonesetupchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSkeleton2DBoneSetupChanged(*t)
    i.signal_bone_setup_changed()
}
fn isignalskeleton3dposeupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSkeleton3DPoseUpdated(*t)
    i.signal_pose_updated()
}
fn isignalskeleton3dboneposechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSkeleton3DBonePoseChanged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_bone_pose_changed(arg_0)
}
fn isignalskeleton3dboneenabledchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSkeleton3DBoneEnabledChanged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_bone_enabled_changed(arg_0)
}
fn isignalskeleton3dshowrestonlychanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSkeleton3DShowRestOnlyChanged(*t)
    i.signal_show_rest_only_changed()
}
fn isignalskeletonprofileprofileupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSkeletonProfileProfileUpdated(*t)
    i.signal_profile_updated()
}
fn isignalsliderdragstarted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSliderDragStarted(*t)
    i.signal_drag_started()
}
fn isignalsliderdragended_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSliderDragEnded(*t)
    arg_0_ptr := unsafe{&bool(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_drag_ended(arg_0)
}
fn isignalsplitcontainerdragged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSplitContainerDragged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_dragged(arg_0)
}
fn isignalsprite2dframechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSprite2DFrameChanged(*t)
    i.signal_frame_changed()
}
fn isignalsprite2dtexturechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSprite2DTextureChanged(*t)
    i.signal_texture_changed()
}
fn isignalsprite3dframechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSprite3DFrameChanged(*t)
    i.signal_frame_changed()
}
fn isignalsprite3dtexturechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalSprite3DTextureChanged(*t)
    i.signal_texture_changed()
}
fn isignaltabbartabselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabBarTabSelected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_selected(arg_0)
}
fn isignaltabbartabchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabBarTabChanged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_changed(arg_0)
}
fn isignaltabbartabclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabBarTabClicked(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_clicked(arg_0)
}
fn isignaltabbartabrmbclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabBarTabRmbClicked(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_rmb_clicked(arg_0)
}
fn isignaltabbartabclosepressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabBarTabClosePressed(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_close_pressed(arg_0)
}
fn isignaltabbartabbuttonpressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabBarTabButtonPressed(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_button_pressed(arg_0)
}
fn isignaltabbartabhovered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabBarTabHovered(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_hovered(arg_0)
}
fn isignaltabbaractivetabrearranged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabBarActiveTabRearranged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_active_tab_rearranged(arg_0)
}
fn isignaltabcontaineractivetabrearranged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabContainerActiveTabRearranged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_active_tab_rearranged(arg_0)
}
fn isignaltabcontainertabchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabContainerTabChanged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_changed(arg_0)
}
fn isignaltabcontainertabclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabContainerTabClicked(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_clicked(arg_0)
}
fn isignaltabcontainertabhovered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabContainerTabHovered(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_hovered(arg_0)
}
fn isignaltabcontainertabselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabContainerTabSelected(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_selected(arg_0)
}
fn isignaltabcontainertabbuttonpressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabContainerTabButtonPressed(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tab_button_pressed(arg_0)
}
fn isignaltabcontainerprepopuppressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTabContainerPrePopupPressed(*t)
    i.signal_pre_popup_pressed()
}
fn isignaltextedittextset_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextEditTextSet(*t)
    i.signal_text_set()
}
fn isignaltextedittextchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextEditTextChanged(*t)
    i.signal_text_changed()
}
fn isignaltexteditlineseditedfrom_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextEditLinesEditedFrom(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_lines_edited_from(arg_0, arg_1)
}
fn isignaltexteditcaretchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextEditCaretChanged(*t)
    i.signal_caret_changed()
}
fn isignaltexteditgutterclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextEditGutterClicked(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_gutter_clicked(arg_0, arg_1)
}
fn isignaltexteditgutteradded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextEditGutterAdded(*t)
    i.signal_gutter_added()
}
fn isignaltexteditgutterremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextEditGutterRemoved(*t)
    i.signal_gutter_removed()
}
fn isignaltextservermanagerinterfaceadded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextServerManagerInterfaceAdded(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_interface_added(arg_0)
}
fn isignaltextservermanagerinterfaceremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTextServerManagerInterfaceRemoved(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_interface_removed(arg_0)
}
fn isignalthemedbfallbackchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalThemeDBFallbackChanged(*t)
    i.signal_fallback_changed()
}
fn isignaltiledatachanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTileDataChanged(*t)
    i.signal_changed()
}
fn isignaltilemapchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTileMapChanged(*t)
    i.signal_changed()
}
fn isignaltimertimeout_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTimerTimeout(*t)
    i.signal_timeout()
}
fn isignaltouchscreenbuttonpressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTouchScreenButtonPressed(*t)
    i.signal_pressed()
}
fn isignaltouchscreenbuttonreleased_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTouchScreenButtonReleased(*t)
    i.signal_released()
}
fn isignaltreeitemselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeItemSelected(*t)
    i.signal_item_selected()
}
fn isignaltreecellselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeCellSelected(*t)
    i.signal_cell_selected()
}
fn isignaltreemultiselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeMultiSelected(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := TreeItem{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&bool(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_multi_selected(arg_0, arg_1, arg_2)
}
fn isignaltreeitemmouseselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeItemMouseSelected(*t)
    arg_0_ptr := unsafe{&Vector2(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_item_mouse_selected(arg_0, arg_1)
}
fn isignaltreeemptyclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeEmptyClicked(*t)
    arg_0_ptr := unsafe{&Vector2(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_empty_clicked(arg_0, arg_1)
}
fn isignaltreeitemedited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeItemEdited(*t)
    i.signal_item_edited()
}
fn isignaltreecustomitemclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeCustomItemClicked(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_custom_item_clicked(arg_0)
}
fn isignaltreeitemicondoubleclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeItemIconDoubleClicked(*t)
    i.signal_item_icon_double_clicked()
}
fn isignaltreeitemcollapsed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeItemCollapsed(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := TreeItem{
        ptr: *arg_0_ptr
    }
    i.signal_item_collapsed(arg_0)
}
fn isignaltreecheckpropagatedtoitem_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeCheckPropagatedToItem(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := TreeItem{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_check_propagated_to_item(arg_0, arg_1)
}
fn isignaltreebuttonclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeButtonClicked(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := TreeItem{
        ptr: *arg_0_ptr
    }
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&i64(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    arg_3_ptr := unsafe{&i64(voidptr(args[3]))}
    arg_3 := *arg_3_ptr
    i.signal_button_clicked(arg_0, arg_1, arg_2, arg_3)
}
fn isignaltreecustompopupedited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeCustomPopupEdited(*t)
    arg_0_ptr := unsafe{&bool(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_custom_popup_edited(arg_0)
}
fn isignaltreeitemactivated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeItemActivated(*t)
    i.signal_item_activated()
}
fn isignaltreecolumntitleclicked_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeColumnTitleClicked(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_column_title_clicked(arg_0, arg_1)
}
fn isignaltreenothingselected_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTreeNothingSelected(*t)
    i.signal_nothing_selected()
}
fn isignaltweenstepfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTweenStepFinished(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_step_finished(arg_0)
}
fn isignaltweenloopfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTweenLoopFinished(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_loop_finished(arg_0)
}
fn isignaltweenfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTweenFinished(*t)
    i.signal_finished()
}
fn isignaltweenerfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalTweenerFinished(*t)
    i.signal_finished()
}
fn isignalundoredoversionchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalUndoRedoVersionChanged(*t)
    i.signal_version_changed()
}
fn isignalvideostreamplayerfinished_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalVideoStreamPlayerFinished(*t)
    i.signal_finished()
}
fn isignalviewportsizechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalViewportSizeChanged(*t)
    i.signal_size_changed()
}
fn isignalviewportguifocuschanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalViewportGuiFocusChanged(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := Control{
        ptr: *arg_0_ptr
    }
    i.signal_gui_focus_changed(arg_0)
}
fn isignalvisibleonscreennotifier2dscreenentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalVisibleOnScreenNotifier2DScreenEntered(*t)
    i.signal_screen_entered()
}
fn isignalvisibleonscreennotifier2dscreenexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalVisibleOnScreenNotifier2DScreenExited(*t)
    i.signal_screen_exited()
}
fn isignalvisibleonscreennotifier3dscreenentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalVisibleOnScreenNotifier3DScreenEntered(*t)
    i.signal_screen_entered()
}
fn isignalvisibleonscreennotifier3dscreenexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalVisibleOnScreenNotifier3DScreenExited(*t)
    i.signal_screen_exited()
}
fn isignalvisualshadernodeinputinputtypechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalVisualShaderNodeInputInputTypeChanged(*t)
    i.signal_input_type_changed()
}
fn isignalwebrtcpeerconnectionsessiondescriptioncreated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebRTCPeerConnectionSessionDescriptionCreated(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&String(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_session_description_created(arg_0, arg_1)
}
fn isignalwebrtcpeerconnectionicecandidatecreated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebRTCPeerConnectionIceCandidateCreated(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    arg_2_ptr := unsafe{&String(voidptr(args[2]))}
    arg_2 := *arg_2_ptr
    i.signal_ice_candidate_created(arg_0, arg_1, arg_2)
}
fn isignalwebrtcpeerconnectiondatachannelreceived_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebRTCPeerConnectionDataChannelReceived(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := WebRTCDataChannel{
        ptr: *arg_0_ptr
    }
    i.signal_data_channel_received(arg_0)
}
fn isignalwebxrinterfacesessionsupported_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSessionSupported(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&bool(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_session_supported(arg_0, arg_1)
}
fn isignalwebxrinterfacesessionstarted_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSessionStarted(*t)
    i.signal_session_started()
}
fn isignalwebxrinterfacesessionended_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSessionEnded(*t)
    i.signal_session_ended()
}
fn isignalwebxrinterfacesessionfailed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSessionFailed(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_session_failed(arg_0)
}
fn isignalwebxrinterfaceselectstart_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSelectstart(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_selectstart(arg_0)
}
fn isignalwebxrinterfaceselect_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSelect(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_gdselect(arg_0)
}
fn isignalwebxrinterfaceselectend_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSelectend(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_selectend(arg_0)
}
fn isignalwebxrinterfacesqueezestart_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSqueezestart(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_squeezestart(arg_0)
}
fn isignalwebxrinterfacesqueeze_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSqueeze(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_squeeze(arg_0)
}
fn isignalwebxrinterfacesqueezeend_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceSqueezeend(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_squeezeend(arg_0)
}
fn isignalwebxrinterfacevisibilitystatechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceVisibilityStateChanged(*t)
    i.signal_visibility_state_changed()
}
fn isignalwebxrinterfacereferencespacereset_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceReferenceSpaceReset(*t)
    i.signal_reference_space_reset()
}
fn isignalwebxrinterfacedisplayrefreshratechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWebXRInterfaceDisplayRefreshRateChanged(*t)
    i.signal_display_refresh_rate_changed()
}
fn isignalwindowwindowinput_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowWindowInput(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := InputEvent{
        ptr: *arg_0_ptr
    }
    i.signal_window_input(arg_0)
}
fn isignalwindowfilesdropped_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowFilesDropped(*t)
    arg_0_ptr := unsafe{&PackedStringArray(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_files_dropped(arg_0)
}
fn isignalwindowmouseentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowMouseEntered(*t)
    i.signal_mouse_entered()
}
fn isignalwindowmouseexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowMouseExited(*t)
    i.signal_mouse_exited()
}
fn isignalwindowfocusentered_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowFocusEntered(*t)
    i.signal_focus_entered()
}
fn isignalwindowfocusexited_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowFocusExited(*t)
    i.signal_focus_exited()
}
fn isignalwindowcloserequested_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowCloseRequested(*t)
    i.signal_close_requested()
}
fn isignalwindowgobackrequested_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowGoBackRequested(*t)
    i.signal_go_back_requested()
}
fn isignalwindowvisibilitychanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowVisibilityChanged(*t)
    i.signal_visibility_changed()
}
fn isignalwindowabouttopopup_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowAboutToPopup(*t)
    i.signal_about_to_popup()
}
fn isignalwindowthemechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowThemeChanged(*t)
    i.signal_theme_changed()
}
fn isignalwindowdpichanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowDpiChanged(*t)
    i.signal_dpi_changed()
}
fn isignalwindowtitlebarchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalWindowTitlebarChanged(*t)
    i.signal_titlebar_changed()
}
fn isignalxrcontroller3dbuttonpressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRController3DButtonPressed(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_button_pressed(arg_0)
}
fn isignalxrcontroller3dbuttonreleased_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRController3DButtonReleased(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_button_released(arg_0)
}
fn isignalxrcontroller3dinputfloatchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRController3DInputFloatChanged(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&f64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_input_float_changed(arg_0, arg_1)
}
fn isignalxrcontroller3dinputvector2changed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRController3DInputVector2Changed(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&Vector2(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_input_vector2_changed(arg_0, arg_1)
}
fn isignalxrinterfaceplayareachanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRInterfacePlayAreaChanged(*t)
    arg_0_ptr := unsafe{&i64(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_play_area_changed(arg_0)
}
fn isignalxrnode3dtrackingchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRNode3DTrackingChanged(*t)
    arg_0_ptr := unsafe{&bool(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_tracking_changed(arg_0)
}
fn isignalxrpositionaltrackerposechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRPositionalTrackerPoseChanged(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := XRPose{
        ptr: *arg_0_ptr
    }
    i.signal_pose_changed(arg_0)
}
fn isignalxrpositionaltrackerposelosttracking_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRPositionalTrackerPoseLostTracking(*t)
    arg_0_ptr := &voidptr(args[0])
    arg_0 := XRPose{
        ptr: *arg_0_ptr
    }
    i.signal_pose_lost_tracking(arg_0)
}
fn isignalxrpositionaltrackerbuttonpressed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRPositionalTrackerButtonPressed(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_button_pressed(arg_0)
}
fn isignalxrpositionaltrackerbuttonreleased_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRPositionalTrackerButtonReleased(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_button_released(arg_0)
}
fn isignalxrpositionaltrackerinputfloatchanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRPositionalTrackerInputFloatChanged(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&f64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_input_float_changed(arg_0, arg_1)
}
fn isignalxrpositionaltrackerinputvector2changed_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRPositionalTrackerInputVector2Changed(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&Vector2(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_input_vector2_changed(arg_0, arg_1)
}
fn isignalxrpositionaltrackerprofilechanged_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRPositionalTrackerProfileChanged(*t)
    arg_0_ptr := unsafe{&String(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_profile_changed(arg_0)
}
fn isignalxrserverinterfaceadded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRServerInterfaceAdded(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_interface_added(arg_0)
}
fn isignalxrserverinterfaceremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRServerInterfaceRemoved(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    i.signal_interface_removed(arg_0)
}
fn isignalxrservertrackeradded_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRServerTrackerAdded(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_tracker_added(arg_0, arg_1)
}
fn isignalxrservertrackerupdated_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRServerTrackerUpdated(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_tracker_updated(arg_0, arg_1)
}
fn isignalxrservertrackerremoved_ptrcall[T](method_userdata voidptr, inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    t := unsafe{&T(voidptr(inst))}
    mut i := ISignalXRServerTrackerRemoved(*t)
    arg_0_ptr := unsafe{&StringName(voidptr(args[0]))}
    arg_0 := *arg_0_ptr
    arg_1_ptr := unsafe{&i64(voidptr(args[1]))}
    arg_1 := *arg_1_ptr
    i.signal_tracker_removed(arg_0, arg_1)
}
pub fn register_signal_methods[T](mut ci ClassInfo) {
    $if T is ISignalAcceptDialogConfirmed {{
        method_name := StringName.new("signal_confirmed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalacceptdialogconfirmed_ptrcall[T])
            ptrcall_func: isignalacceptdialogconfirmed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAcceptDialogCanceled {{
        method_name := StringName.new("signal_canceled")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalacceptdialogcanceled_ptrcall[T])
            ptrcall_func: isignalacceptdialogcanceled_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAcceptDialogCustomAction {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("action")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_custom_action")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalacceptdialogcustomaction_ptrcall[T])
            ptrcall_func: isignalacceptdialogcustomaction_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite2DSpriteFramesChanged {{
        method_name := StringName.new("signal_sprite_frames_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite2dspriteframeschanged_ptrcall[T])
            ptrcall_func: isignalanimatedsprite2dspriteframeschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite2DAnimationChanged {{
        method_name := StringName.new("signal_animation_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite2danimationchanged_ptrcall[T])
            ptrcall_func: isignalanimatedsprite2danimationchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite2DFrameChanged {{
        method_name := StringName.new("signal_frame_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite2dframechanged_ptrcall[T])
            ptrcall_func: isignalanimatedsprite2dframechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite2DAnimationLooped {{
        method_name := StringName.new("signal_animation_looped")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite2danimationlooped_ptrcall[T])
            ptrcall_func: isignalanimatedsprite2danimationlooped_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite2DAnimationFinished {{
        method_name := StringName.new("signal_animation_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite2danimationfinished_ptrcall[T])
            ptrcall_func: isignalanimatedsprite2danimationfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite3DSpriteFramesChanged {{
        method_name := StringName.new("signal_sprite_frames_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite3dspriteframeschanged_ptrcall[T])
            ptrcall_func: isignalanimatedsprite3dspriteframeschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite3DAnimationChanged {{
        method_name := StringName.new("signal_animation_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite3danimationchanged_ptrcall[T])
            ptrcall_func: isignalanimatedsprite3danimationchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite3DFrameChanged {{
        method_name := StringName.new("signal_frame_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite3dframechanged_ptrcall[T])
            ptrcall_func: isignalanimatedsprite3dframechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite3DAnimationLooped {{
        method_name := StringName.new("signal_animation_looped")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite3danimationlooped_ptrcall[T])
            ptrcall_func: isignalanimatedsprite3danimationlooped_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimatedSprite3DAnimationFinished {{
        method_name := StringName.new("signal_animation_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimatedsprite3danimationfinished_ptrcall[T])
            ptrcall_func: isignalanimatedsprite3danimationfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationLibraryAnimationAdded {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_added")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationlibraryanimationadded_ptrcall[T])
            ptrcall_func: isignalanimationlibraryanimationadded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationLibraryAnimationRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationlibraryanimationremoved_ptrcall[T])
            ptrcall_func: isignalanimationlibraryanimationremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationLibraryAnimationRenamed {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("to_name")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_renamed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationlibraryanimationrenamed_ptrcall[T])
            ptrcall_func: isignalanimationlibraryanimationrenamed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationLibraryAnimationChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationlibraryanimationchanged_ptrcall[T])
            ptrcall_func: isignalanimationlibraryanimationchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationMixerMixerUpdated {{
        method_name := StringName.new("signal_mixer_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationmixermixerupdated_ptrcall[T])
            ptrcall_func: isignalanimationmixermixerupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationMixerAnimationListChanged {{
        method_name := StringName.new("signal_animation_list_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationmixeranimationlistchanged_ptrcall[T])
            ptrcall_func: isignalanimationmixeranimationlistchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationMixerAnimationLibrariesUpdated {{
        method_name := StringName.new("signal_animation_libraries_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationmixeranimationlibrariesupdated_ptrcall[T])
            ptrcall_func: isignalanimationmixeranimationlibrariesupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationMixerAnimationFinished {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("anim_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationmixeranimationfinished_ptrcall[T])
            ptrcall_func: isignalanimationmixeranimationfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationMixerAnimationStarted {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("anim_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_started")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationmixeranimationstarted_ptrcall[T])
            ptrcall_func: isignalanimationmixeranimationstarted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationMixerCachesCleared {{
        method_name := StringName.new("signal_caches_cleared")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationmixercachescleared_ptrcall[T])
            ptrcall_func: isignalanimationmixercachescleared_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationNodeTreeChanged {{
        method_name := StringName.new("signal_tree_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationnodetreechanged_ptrcall[T])
            ptrcall_func: isignalanimationnodetreechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationNodeAnimationNodeRenamed {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("object_id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("old_name")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("new_name")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_node_renamed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationnodeanimationnoderenamed_ptrcall[T])
            ptrcall_func: isignalanimationnodeanimationnoderenamed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationNodeAnimationNodeRemoved {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("object_id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("name")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_node_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationnodeanimationnoderemoved_ptrcall[T])
            ptrcall_func: isignalanimationnodeanimationnoderemoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationNodeBlendSpace2DTrianglesUpdated {{
        method_name := StringName.new("signal_triangles_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationnodeblendspace2dtrianglesupdated_ptrcall[T])
            ptrcall_func: isignalanimationnodeblendspace2dtrianglesupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationNodeBlendTreeNodeChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_node_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationnodeblendtreenodechanged_ptrcall[T])
            ptrcall_func: isignalanimationnodeblendtreenodechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationNodeStateMachineTransitionAdvanceConditionChanged {{
        method_name := StringName.new("signal_advance_condition_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationnodestatemachinetransitionadvanceconditionchanged_ptrcall[T])
            ptrcall_func: isignalanimationnodestatemachinetransitionadvanceconditionchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationPlayerCurrentAnimationChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_current_animation_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationplayercurrentanimationchanged_ptrcall[T])
            ptrcall_func: isignalanimationplayercurrentanimationchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationPlayerAnimationChanged {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("old_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("new_name")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_animation_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationplayeranimationchanged_ptrcall[T])
            ptrcall_func: isignalanimationplayeranimationchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAnimationTreeAnimationPlayerChanged {{
        method_name := StringName.new("signal_animation_player_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalanimationtreeanimationplayerchanged_ptrcall[T])
            ptrcall_func: isignalanimationtreeanimationplayerchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea2DBodyShapeEntered {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("body")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("body_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_body_shape_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea2dbodyshapeentered_ptrcall[T])
            ptrcall_func: isignalarea2dbodyshapeentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea2DBodyShapeExited {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("body")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("body_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_body_shape_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea2dbodyshapeexited_ptrcall[T])
            ptrcall_func: isignalarea2dbodyshapeexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea2DBodyEntered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_body_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea2dbodyentered_ptrcall[T])
            ptrcall_func: isignalarea2dbodyentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea2DBodyExited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_body_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea2dbodyexited_ptrcall[T])
            ptrcall_func: isignalarea2dbodyexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea2DAreaShapeEntered {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("area_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("area")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("area_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_area_shape_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea2dareashapeentered_ptrcall[T])
            ptrcall_func: isignalarea2dareashapeentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea2DAreaShapeExited {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("area_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("area")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("area_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_area_shape_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea2dareashapeexited_ptrcall[T])
            ptrcall_func: isignalarea2dareashapeexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea2DAreaEntered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("area")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_area_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea2dareaentered_ptrcall[T])
            ptrcall_func: isignalarea2dareaentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea2DAreaExited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("area")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_area_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea2dareaexited_ptrcall[T])
            ptrcall_func: isignalarea2dareaexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea3DBodyShapeEntered {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("body")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("body_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_body_shape_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea3dbodyshapeentered_ptrcall[T])
            ptrcall_func: isignalarea3dbodyshapeentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea3DBodyShapeExited {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("body")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("body_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_body_shape_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea3dbodyshapeexited_ptrcall[T])
            ptrcall_func: isignalarea3dbodyshapeexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea3DBodyEntered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_body_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea3dbodyentered_ptrcall[T])
            ptrcall_func: isignalarea3dbodyentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea3DBodyExited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_body_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea3dbodyexited_ptrcall[T])
            ptrcall_func: isignalarea3dbodyexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea3DAreaShapeEntered {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("area_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("area")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("area_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_area_shape_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea3dareashapeentered_ptrcall[T])
            ptrcall_func: isignalarea3dareashapeentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea3DAreaShapeExited {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("area_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("area")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("area_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_area_shape_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea3dareashapeexited_ptrcall[T])
            ptrcall_func: isignalarea3dareashapeexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea3DAreaEntered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("area")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_area_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea3dareaentered_ptrcall[T])
            ptrcall_func: isignalarea3dareaentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalArea3DAreaExited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("area")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_area_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalarea3dareaexited_ptrcall[T])
            ptrcall_func: isignalarea3dareaexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAudioServerBusLayoutChanged {{
        method_name := StringName.new("signal_bus_layout_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalaudioserverbuslayoutchanged_ptrcall[T])
            ptrcall_func: isignalaudioserverbuslayoutchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAudioServerBusRenamed {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("bus_index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("old_name")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("new_name")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_bus_renamed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalaudioserverbusrenamed_ptrcall[T])
            ptrcall_func: isignalaudioserverbusrenamed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAudioStreamPlayerFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalaudiostreamplayerfinished_ptrcall[T])
            ptrcall_func: isignalaudiostreamplayerfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAudioStreamPlayer2DFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalaudiostreamplayer2dfinished_ptrcall[T])
            ptrcall_func: isignalaudiostreamplayer2dfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalAudioStreamPlayer3DFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalaudiostreamplayer3dfinished_ptrcall[T])
            ptrcall_func: isignalaudiostreamplayer3dfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalBaseButtonPressed {{
        method_name := StringName.new("signal_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalbasebuttonpressed_ptrcall[T])
            ptrcall_func: isignalbasebuttonpressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalBaseButtonButtonUp {{
        method_name := StringName.new("signal_button_up")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalbasebuttonbuttonup_ptrcall[T])
            ptrcall_func: isignalbasebuttonbuttonup_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalBaseButtonButtonDown {{
        method_name := StringName.new("signal_button_down")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalbasebuttonbuttondown_ptrcall[T])
            ptrcall_func: isignalbasebuttonbuttondown_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalBaseButtonToggled {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("toggled_on")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_toggled")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalbasebuttontoggled_ptrcall[T])
            ptrcall_func: isignalbasebuttontoggled_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalBoneMapBoneMapUpdated {{
        method_name := StringName.new("signal_bone_map_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalbonemapbonemapupdated_ptrcall[T])
            ptrcall_func: isignalbonemapbonemapupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalBoneMapProfileUpdated {{
        method_name := StringName.new("signal_profile_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalbonemapprofileupdated_ptrcall[T])
            ptrcall_func: isignalbonemapprofileupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalButtonGroupPressed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("button")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalbuttongrouppressed_ptrcall[T])
            ptrcall_func: isignalbuttongrouppressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCPUParticles2DFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcpuparticles2dfinished_ptrcall[T])
            ptrcall_func: isignalcpuparticles2dfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCPUParticles3DFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcpuparticles3dfinished_ptrcall[T])
            ptrcall_func: isignalcpuparticles3dfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCameraServerCameraFeedAdded {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_camera_feed_added")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcameraservercamerafeedadded_ptrcall[T])
            ptrcall_func: isignalcameraservercamerafeedadded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCameraServerCameraFeedRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_camera_feed_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcameraservercamerafeedremoved_ptrcall[T])
            ptrcall_func: isignalcameraservercamerafeedremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCanvasItemDraw {{
        method_name := StringName.new("signal_draw")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcanvasitemdraw_ptrcall[T])
            ptrcall_func: isignalcanvasitemdraw_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCanvasItemVisibilityChanged {{
        method_name := StringName.new("signal_visibility_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcanvasitemvisibilitychanged_ptrcall[T])
            ptrcall_func: isignalcanvasitemvisibilitychanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCanvasItemHidden {{
        method_name := StringName.new("signal_hidden")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcanvasitemhidden_ptrcall[T])
            ptrcall_func: isignalcanvasitemhidden_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCanvasItemItemRectChanged {{
        method_name := StringName.new("signal_item_rect_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcanvasitemitemrectchanged_ptrcall[T])
            ptrcall_func: isignalcanvasitemitemrectchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCanvasLayerVisibilityChanged {{
        method_name := StringName.new("signal_visibility_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcanvaslayervisibilitychanged_ptrcall[T])
            ptrcall_func: isignalcanvaslayervisibilitychanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCodeEditBreakpointToggled {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("line")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_breakpoint_toggled")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcodeeditbreakpointtoggled_ptrcall[T])
            ptrcall_func: isignalcodeeditbreakpointtoggled_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCodeEditCodeCompletionRequested {{
        method_name := StringName.new("signal_code_completion_requested")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcodeeditcodecompletionrequested_ptrcall[T])
            ptrcall_func: isignalcodeeditcodecompletionrequested_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCodeEditSymbolLookup {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("symbol")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("line")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("column")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_symbol_lookup")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcodeeditsymbollookup_ptrcall[T])
            ptrcall_func: isignalcodeeditsymbollookup_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCodeEditSymbolValidate {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("symbol")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_symbol_validate")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcodeeditsymbolvalidate_ptrcall[T])
            ptrcall_func: isignalcodeeditsymbolvalidate_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCollisionObject2DInputEvent {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("viewport")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("event")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("shape_idx")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_input_event")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcollisionobject2dinputevent_ptrcall[T])
            ptrcall_func: isignalcollisionobject2dinputevent_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCollisionObject2DMouseEntered {{
        method_name := StringName.new("signal_mouse_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcollisionobject2dmouseentered_ptrcall[T])
            ptrcall_func: isignalcollisionobject2dmouseentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCollisionObject2DMouseExited {{
        method_name := StringName.new("signal_mouse_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcollisionobject2dmouseexited_ptrcall[T])
            ptrcall_func: isignalcollisionobject2dmouseexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCollisionObject2DMouseShapeEntered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("shape_idx")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_mouse_shape_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcollisionobject2dmouseshapeentered_ptrcall[T])
            ptrcall_func: isignalcollisionobject2dmouseshapeentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCollisionObject2DMouseShapeExited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("shape_idx")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_mouse_shape_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcollisionobject2dmouseshapeexited_ptrcall[T])
            ptrcall_func: isignalcollisionobject2dmouseshapeexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCollisionObject3DInputEvent {{
        mut argument_props := [5]GDExtensionPropertyInfo{}
        mut argument_metadata := [5]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("camera")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("event")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("position")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_vector3
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        mut arg_name_3 := StringName.new("normal")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_vector3
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_none
        mut arg_name_4 := StringName.new("shape_idx")
        mut arg_hint_4 := String.new("")
        argument_props[4] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_4
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_4
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[4] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_input_event")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcollisionobject3dinputevent_ptrcall[T])
            ptrcall_func: isignalcollisionobject3dinputevent_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 5
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCollisionObject3DMouseEntered {{
        method_name := StringName.new("signal_mouse_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcollisionobject3dmouseentered_ptrcall[T])
            ptrcall_func: isignalcollisionobject3dmouseentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCollisionObject3DMouseExited {{
        method_name := StringName.new("signal_mouse_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcollisionobject3dmouseexited_ptrcall[T])
            ptrcall_func: isignalcollisionobject3dmouseexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalColorPickerColorChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("color")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_color
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_color_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcolorpickercolorchanged_ptrcall[T])
            ptrcall_func: isignalcolorpickercolorchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalColorPickerPresetAdded {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("color")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_color
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_preset_added")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcolorpickerpresetadded_ptrcall[T])
            ptrcall_func: isignalcolorpickerpresetadded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalColorPickerPresetRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("color")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_color
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_preset_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcolorpickerpresetremoved_ptrcall[T])
            ptrcall_func: isignalcolorpickerpresetremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalColorPickerButtonColorChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("color")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_color
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_color_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcolorpickerbuttoncolorchanged_ptrcall[T])
            ptrcall_func: isignalcolorpickerbuttoncolorchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalColorPickerButtonPopupClosed {{
        method_name := StringName.new("signal_popup_closed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcolorpickerbuttonpopupclosed_ptrcall[T])
            ptrcall_func: isignalcolorpickerbuttonpopupclosed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalColorPickerButtonPickerCreated {{
        method_name := StringName.new("signal_picker_created")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcolorpickerbuttonpickercreated_ptrcall[T])
            ptrcall_func: isignalcolorpickerbuttonpickercreated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalContainerPreSortChildren {{
        method_name := StringName.new("signal_pre_sort_children")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontainerpresortchildren_ptrcall[T])
            ptrcall_func: isignalcontainerpresortchildren_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalContainerSortChildren {{
        method_name := StringName.new("signal_sort_children")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontainersortchildren_ptrcall[T])
            ptrcall_func: isignalcontainersortchildren_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlResized {{
        method_name := StringName.new("signal_resized")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolresized_ptrcall[T])
            ptrcall_func: isignalcontrolresized_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlGuiInput {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("event")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_gui_input")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolguiinput_ptrcall[T])
            ptrcall_func: isignalcontrolguiinput_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlMouseEntered {{
        method_name := StringName.new("signal_mouse_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolmouseentered_ptrcall[T])
            ptrcall_func: isignalcontrolmouseentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlMouseExited {{
        method_name := StringName.new("signal_mouse_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolmouseexited_ptrcall[T])
            ptrcall_func: isignalcontrolmouseexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlFocusEntered {{
        method_name := StringName.new("signal_focus_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolfocusentered_ptrcall[T])
            ptrcall_func: isignalcontrolfocusentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlFocusExited {{
        method_name := StringName.new("signal_focus_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolfocusexited_ptrcall[T])
            ptrcall_func: isignalcontrolfocusexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlSizeFlagsChanged {{
        method_name := StringName.new("signal_size_flags_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolsizeflagschanged_ptrcall[T])
            ptrcall_func: isignalcontrolsizeflagschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlMinimumSizeChanged {{
        method_name := StringName.new("signal_minimum_size_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolminimumsizechanged_ptrcall[T])
            ptrcall_func: isignalcontrolminimumsizechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalControlThemeChanged {{
        method_name := StringName.new("signal_theme_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcontrolthemechanged_ptrcall[T])
            ptrcall_func: isignalcontrolthemechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalCurveRangeChanged {{
        method_name := StringName.new("signal_range_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalcurverangechanged_ptrcall[T])
            ptrcall_func: isignalcurverangechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorDebuggerSessionStarted {{
        method_name := StringName.new("signal_started")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditordebuggersessionstarted_ptrcall[T])
            ptrcall_func: isignaleditordebuggersessionstarted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorDebuggerSessionStopped {{
        method_name := StringName.new("signal_stopped")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditordebuggersessionstopped_ptrcall[T])
            ptrcall_func: isignaleditordebuggersessionstopped_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorDebuggerSessionBreaked {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("can_debug")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_breaked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditordebuggersessionbreaked_ptrcall[T])
            ptrcall_func: isignaleditordebuggersessionbreaked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorDebuggerSessionContinued {{
        method_name := StringName.new("signal_continued")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditordebuggersessioncontinued_ptrcall[T])
            ptrcall_func: isignaleditordebuggersessioncontinued_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorFileDialogFileSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("path")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_file_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorfiledialogfileselected_ptrcall[T])
            ptrcall_func: isignaleditorfiledialogfileselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorFileDialogFilesSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("paths")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_packedstringarray
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_files_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorfiledialogfilesselected_ptrcall[T])
            ptrcall_func: isignaleditorfiledialogfilesselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorFileDialogDirSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("dir")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_dir_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorfiledialogdirselected_ptrcall[T])
            ptrcall_func: isignaleditorfiledialogdirselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorFileSystemFilesystemChanged {{
        method_name := StringName.new("signal_filesystem_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorfilesystemfilesystemchanged_ptrcall[T])
            ptrcall_func: isignaleditorfilesystemfilesystemchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorFileSystemScriptClassesUpdated {{
        method_name := StringName.new("signal_script_classes_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorfilesystemscriptclassesupdated_ptrcall[T])
            ptrcall_func: isignaleditorfilesystemscriptclassesupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorFileSystemSourcesChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("exist")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_sources_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorfilesystemsourceschanged_ptrcall[T])
            ptrcall_func: isignaleditorfilesystemsourceschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorFileSystemResourcesReimported {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("resources")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_packedstringarray
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resources_reimported")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorfilesystemresourcesreimported_ptrcall[T])
            ptrcall_func: isignaleditorfilesystemresourcesreimported_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorFileSystemResourcesReload {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("resources")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_packedstringarray
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resources_reload")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorfilesystemresourcesreload_ptrcall[T])
            ptrcall_func: isignaleditorfilesystemresourcesreload_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorPropertySelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectorpropertyselected_ptrcall[T])
            ptrcall_func: isignaleditorinspectorpropertyselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorPropertyKeyed {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("value")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_nil
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("advance")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_keyed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectorpropertykeyed_ptrcall[T])
            ptrcall_func: isignaleditorinspectorpropertykeyed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorPropertyDeleted {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_deleted")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectorpropertydeleted_ptrcall[T])
            ptrcall_func: isignaleditorinspectorpropertydeleted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorResourceSelected {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("resource")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("path")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resource_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectorresourceselected_ptrcall[T])
            ptrcall_func: isignaleditorinspectorresourceselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorObjectIdSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_object_id_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectorobjectidselected_ptrcall[T])
            ptrcall_func: isignaleditorinspectorobjectidselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorPropertyEdited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_edited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectorpropertyedited_ptrcall[T])
            ptrcall_func: isignaleditorinspectorpropertyedited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorPropertyToggled {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("checked")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_toggled")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectorpropertytoggled_ptrcall[T])
            ptrcall_func: isignaleditorinspectorpropertytoggled_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorEditedObjectChanged {{
        method_name := StringName.new("signal_edited_object_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectoreditedobjectchanged_ptrcall[T])
            ptrcall_func: isignaleditorinspectoreditedobjectchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorInspectorRestartRequested {{
        method_name := StringName.new("signal_restart_requested")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorinspectorrestartrequested_ptrcall[T])
            ptrcall_func: isignaleditorinspectorrestartrequested_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPluginSceneChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("scene_root")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_scene_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpluginscenechanged_ptrcall[T])
            ptrcall_func: isignaleditorpluginscenechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPluginSceneClosed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("filepath")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_scene_closed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpluginsceneclosed_ptrcall[T])
            ptrcall_func: isignaleditorpluginsceneclosed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPluginMainScreenChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("screen_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_main_screen_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpluginmainscreenchanged_ptrcall[T])
            ptrcall_func: isignaleditorpluginmainscreenchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPluginResourceSaved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("resource")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resource_saved")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpluginresourcesaved_ptrcall[T])
            ptrcall_func: isignaleditorpluginresourcesaved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPluginProjectSettingsChanged {{
        method_name := StringName.new("signal_project_settings_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpluginprojectsettingschanged_ptrcall[T])
            ptrcall_func: isignaleditorpluginprojectsettingschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyPropertyChanged {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("value")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_nil
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("field")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        mut arg_name_3 := StringName.new("changing")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertypropertychanged_ptrcall[T])
            ptrcall_func: isignaleditorpropertypropertychanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyMultiplePropertiesChanged {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("properties")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_packedstringarray
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("value")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_array
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_multiple_properties_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertymultiplepropertieschanged_ptrcall[T])
            ptrcall_func: isignaleditorpropertymultiplepropertieschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyPropertyKeyed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_keyed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertypropertykeyed_ptrcall[T])
            ptrcall_func: isignaleditorpropertypropertykeyed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyPropertyDeleted {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_deleted")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertypropertydeleted_ptrcall[T])
            ptrcall_func: isignaleditorpropertypropertydeleted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyPropertyKeyedWithValue {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("value")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_nil
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_keyed_with_value")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertypropertykeyedwithvalue_ptrcall[T])
            ptrcall_func: isignaleditorpropertypropertykeyedwithvalue_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyPropertyChecked {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("checked")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_checked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertypropertychecked_ptrcall[T])
            ptrcall_func: isignaleditorpropertypropertychecked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyPropertyPinned {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("pinned")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_pinned")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertypropertypinned_ptrcall[T])
            ptrcall_func: isignaleditorpropertypropertypinned_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyPropertyCanRevertChanged {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("can_revert")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_property_can_revert_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertypropertycanrevertchanged_ptrcall[T])
            ptrcall_func: isignaleditorpropertypropertycanrevertchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyResourceSelected {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("path")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("resource")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resource_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertyresourceselected_ptrcall[T])
            ptrcall_func: isignaleditorpropertyresourceselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertyObjectIdSelected {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("property")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("id")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_object_id_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertyobjectidselected_ptrcall[T])
            ptrcall_func: isignaleditorpropertyobjectidselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorPropertySelected {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("path")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("focusable_idx")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorpropertyselected_ptrcall[T])
            ptrcall_func: isignaleditorpropertyselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorResourcePickerResourceSelected {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("resource")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("inspect")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resource_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorresourcepickerresourceselected_ptrcall[T])
            ptrcall_func: isignaleditorresourcepickerresourceselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorResourcePickerResourceChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("resource")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resource_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorresourcepickerresourcechanged_ptrcall[T])
            ptrcall_func: isignaleditorresourcepickerresourcechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorResourcePreviewPreviewInvalidated {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("path")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_preview_invalidated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorresourcepreviewpreviewinvalidated_ptrcall[T])
            ptrcall_func: isignaleditorresourcepreviewpreviewinvalidated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorSelectionSelectionChanged {{
        method_name := StringName.new("signal_selection_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorselectionselectionchanged_ptrcall[T])
            ptrcall_func: isignaleditorselectionselectionchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorSettingsSettingsChanged {{
        method_name := StringName.new("signal_settings_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorsettingssettingschanged_ptrcall[T])
            ptrcall_func: isignaleditorsettingssettingschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorSpinSliderGrabbed {{
        method_name := StringName.new("signal_grabbed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorspinslidergrabbed_ptrcall[T])
            ptrcall_func: isignaleditorspinslidergrabbed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorSpinSliderUngrabbed {{
        method_name := StringName.new("signal_ungrabbed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorspinsliderungrabbed_ptrcall[T])
            ptrcall_func: isignaleditorspinsliderungrabbed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorSpinSliderValueFocusEntered {{
        method_name := StringName.new("signal_value_focus_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorspinslidervaluefocusentered_ptrcall[T])
            ptrcall_func: isignaleditorspinslidervaluefocusentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorSpinSliderValueFocusExited {{
        method_name := StringName.new("signal_value_focus_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorspinslidervaluefocusexited_ptrcall[T])
            ptrcall_func: isignaleditorspinslidervaluefocusexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorUndoRedoManagerHistoryChanged {{
        method_name := StringName.new("signal_history_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorundoredomanagerhistorychanged_ptrcall[T])
            ptrcall_func: isignaleditorundoredomanagerhistorychanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalEditorUndoRedoManagerVersionChanged {{
        method_name := StringName.new("signal_version_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaleditorundoredomanagerversionchanged_ptrcall[T])
            ptrcall_func: isignaleditorundoredomanagerversionchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileDialogFileSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("path")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_file_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfiledialogfileselected_ptrcall[T])
            ptrcall_func: isignalfiledialogfileselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileDialogFilesSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("paths")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_packedstringarray
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_files_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfiledialogfilesselected_ptrcall[T])
            ptrcall_func: isignalfiledialogfilesselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileDialogDirSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("dir")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_dir_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfiledialogdirselected_ptrcall[T])
            ptrcall_func: isignalfiledialogdirselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileSystemDockInherit {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("file")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_inherit")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfilesystemdockinherit_ptrcall[T])
            ptrcall_func: isignalfilesystemdockinherit_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileSystemDockInstantiate {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("files")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_packedstringarray
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_instantiate")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfilesystemdockinstantiate_ptrcall[T])
            ptrcall_func: isignalfilesystemdockinstantiate_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileSystemDockResourceRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("resource")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resource_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfilesystemdockresourceremoved_ptrcall[T])
            ptrcall_func: isignalfilesystemdockresourceremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileSystemDockFileRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("file")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_file_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfilesystemdockfileremoved_ptrcall[T])
            ptrcall_func: isignalfilesystemdockfileremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileSystemDockFolderRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("folder")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_folder_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfilesystemdockfolderremoved_ptrcall[T])
            ptrcall_func: isignalfilesystemdockfolderremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileSystemDockFilesMoved {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("old_file")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("new_file")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_files_moved")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfilesystemdockfilesmoved_ptrcall[T])
            ptrcall_func: isignalfilesystemdockfilesmoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileSystemDockFolderMoved {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("old_folder")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("new_folder")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_folder_moved")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfilesystemdockfoldermoved_ptrcall[T])
            ptrcall_func: isignalfilesystemdockfoldermoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalFileSystemDockDisplayModeChanged {{
        method_name := StringName.new("signal_display_mode_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalfilesystemdockdisplaymodechanged_ptrcall[T])
            ptrcall_func: isignalfilesystemdockdisplaymodechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGDExtensionManagerExtensionsReloaded {{
        method_name := StringName.new("signal_extensions_reloaded")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgdextensionmanagerextensionsreloaded_ptrcall[T])
            ptrcall_func: isignalgdextensionmanagerextensionsreloaded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGPUParticles2DFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgpuparticles2dfinished_ptrcall[T])
            ptrcall_func: isignalgpuparticles2dfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGPUParticles3DFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgpuparticles3dfinished_ptrcall[T])
            ptrcall_func: isignalgpuparticles3dfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditConnectionRequest {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("from_node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("from_port")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("to_node")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        mut arg_name_3 := StringName.new("to_port")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_connection_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditconnectionrequest_ptrcall[T])
            ptrcall_func: isignalgrapheditconnectionrequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditDisconnectionRequest {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("from_node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("from_port")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("to_node")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        mut arg_name_3 := StringName.new("to_port")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_disconnection_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditdisconnectionrequest_ptrcall[T])
            ptrcall_func: isignalgrapheditdisconnectionrequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditConnectionToEmpty {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("from_node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("from_port")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("release_position")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_connection_to_empty")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditconnectiontoempty_ptrcall[T])
            ptrcall_func: isignalgrapheditconnectiontoempty_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditConnectionFromEmpty {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("to_node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("to_port")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("release_position")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_connection_from_empty")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditconnectionfromempty_ptrcall[T])
            ptrcall_func: isignalgrapheditconnectionfromempty_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditConnectionDragStarted {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("from_node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("from_port")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("is_output")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_connection_drag_started")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditconnectiondragstarted_ptrcall[T])
            ptrcall_func: isignalgrapheditconnectiondragstarted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditConnectionDragEnded {{
        method_name := StringName.new("signal_connection_drag_ended")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditconnectiondragended_ptrcall[T])
            ptrcall_func: isignalgrapheditconnectiondragended_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditCopyNodesRequest {{
        method_name := StringName.new("signal_copy_nodes_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditcopynodesrequest_ptrcall[T])
            ptrcall_func: isignalgrapheditcopynodesrequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditPasteNodesRequest {{
        method_name := StringName.new("signal_paste_nodes_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditpastenodesrequest_ptrcall[T])
            ptrcall_func: isignalgrapheditpastenodesrequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditDuplicateNodesRequest {{
        method_name := StringName.new("signal_duplicate_nodes_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditduplicatenodesrequest_ptrcall[T])
            ptrcall_func: isignalgrapheditduplicatenodesrequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditDeleteNodesRequest {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("nodes")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_array
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_delete_nodes_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditdeletenodesrequest_ptrcall[T])
            ptrcall_func: isignalgrapheditdeletenodesrequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditNodeSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_node_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditnodeselected_ptrcall[T])
            ptrcall_func: isignalgrapheditnodeselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditNodeDeselected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_node_deselected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditnodedeselected_ptrcall[T])
            ptrcall_func: isignalgrapheditnodedeselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditPopupRequest {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("position")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_popup_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditpopuprequest_ptrcall[T])
            ptrcall_func: isignalgrapheditpopuprequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditBeginNodeMove {{
        method_name := StringName.new("signal_begin_node_move")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditbeginnodemove_ptrcall[T])
            ptrcall_func: isignalgrapheditbeginnodemove_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditEndNodeMove {{
        method_name := StringName.new("signal_end_node_move")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditendnodemove_ptrcall[T])
            ptrcall_func: isignalgrapheditendnodemove_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphEditScrollOffsetChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("offset")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_scroll_offset_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgrapheditscrolloffsetchanged_ptrcall[T])
            ptrcall_func: isignalgrapheditscrolloffsetchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphElementNodeSelected {{
        method_name := StringName.new("signal_node_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgraphelementnodeselected_ptrcall[T])
            ptrcall_func: isignalgraphelementnodeselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphElementNodeDeselected {{
        method_name := StringName.new("signal_node_deselected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgraphelementnodedeselected_ptrcall[T])
            ptrcall_func: isignalgraphelementnodedeselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphElementRaiseRequest {{
        method_name := StringName.new("signal_raise_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgraphelementraiserequest_ptrcall[T])
            ptrcall_func: isignalgraphelementraiserequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphElementDeleteRequest {{
        method_name := StringName.new("signal_delete_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgraphelementdeleterequest_ptrcall[T])
            ptrcall_func: isignalgraphelementdeleterequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphElementResizeRequest {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("new_minsize")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_resize_request")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgraphelementresizerequest_ptrcall[T])
            ptrcall_func: isignalgraphelementresizerequest_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphElementDragged {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("from")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("to")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_dragged")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgraphelementdragged_ptrcall[T])
            ptrcall_func: isignalgraphelementdragged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphElementPositionOffsetChanged {{
        method_name := StringName.new("signal_position_offset_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgraphelementpositionoffsetchanged_ptrcall[T])
            ptrcall_func: isignalgraphelementpositionoffsetchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGraphNodeSlotUpdated {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("slot_index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_slot_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgraphnodeslotupdated_ptrcall[T])
            ptrcall_func: isignalgraphnodeslotupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGridMapCellSizeChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("cell_size")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector3
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_cell_size_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgridmapcellsizechanged_ptrcall[T])
            ptrcall_func: isignalgridmapcellsizechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalGridMapChanged {{
        method_name := StringName.new("signal_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalgridmapchanged_ptrcall[T])
            ptrcall_func: isignalgridmapchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalHTTPRequestRequestCompleted {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("result")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("response_code")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("headers")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_packedstringarray
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        mut arg_name_3 := StringName.new("body")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_packedbytearray
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_request_completed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalhttprequestrequestcompleted_ptrcall[T])
            ptrcall_func: isignalhttprequestrequestcompleted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalInputJoyConnectionChanged {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("device")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("connected")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_joy_connection_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalinputjoyconnectionchanged_ptrcall[T])
            ptrcall_func: isignalinputjoyconnectionchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalItemListItemSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_item_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalitemlistitemselected_ptrcall[T])
            ptrcall_func: isignalitemlistitemselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalItemListEmptyClicked {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("at_position")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("mouse_button_index")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_empty_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalitemlistemptyclicked_ptrcall[T])
            ptrcall_func: isignalitemlistemptyclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalItemListItemClicked {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("at_position")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("mouse_button_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_item_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalitemlistitemclicked_ptrcall[T])
            ptrcall_func: isignalitemlistitemclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalItemListMultiSelected {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("selected")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_multi_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalitemlistmultiselected_ptrcall[T])
            ptrcall_func: isignalitemlistmultiselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalItemListItemActivated {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_item_activated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalitemlistitemactivated_ptrcall[T])
            ptrcall_func: isignalitemlistitemactivated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalJavaScriptBridgePwaUpdateAvailable {{
        method_name := StringName.new("signal_pwa_update_available")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaljavascriptbridgepwaupdateavailable_ptrcall[T])
            ptrcall_func: isignaljavascriptbridgepwaupdateavailable_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalLineEditTextChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("new_text")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_text_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignallineedittextchanged_ptrcall[T])
            ptrcall_func: isignallineedittextchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalLineEditTextChangeRejected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("rejected_substring")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_text_change_rejected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignallineedittextchangerejected_ptrcall[T])
            ptrcall_func: isignallineedittextchangerejected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalLineEditTextSubmitted {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("new_text")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_text_submitted")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignallineedittextsubmitted_ptrcall[T])
            ptrcall_func: isignallineedittextsubmitted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMainLoopOnRequestPermissionsResult {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("permission")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("granted")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_on_request_permissions_result")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmainlooponrequestpermissionsresult_ptrcall[T])
            ptrcall_func: isignalmainlooponrequestpermissionsresult_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMenuButtonAboutToPopup {{
        method_name := StringName.new("signal_about_to_popup")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmenubuttonabouttopopup_ptrcall[T])
            ptrcall_func: isignalmenubuttonabouttopopup_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMeshInstance2DTextureChanged {{
        method_name := StringName.new("signal_texture_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmeshinstance2dtexturechanged_ptrcall[T])
            ptrcall_func: isignalmeshinstance2dtexturechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiMeshInstance2DTextureChanged {{
        method_name := StringName.new("signal_texture_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultimeshinstance2dtexturechanged_ptrcall[T])
            ptrcall_func: isignalmultimeshinstance2dtexturechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerAPIPeerConnected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_peer_connected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerapipeerconnected_ptrcall[T])
            ptrcall_func: isignalmultiplayerapipeerconnected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerAPIPeerDisconnected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_peer_disconnected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerapipeerdisconnected_ptrcall[T])
            ptrcall_func: isignalmultiplayerapipeerdisconnected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerAPIConnectedToServer {{
        method_name := StringName.new("signal_connected_to_server")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerapiconnectedtoserver_ptrcall[T])
            ptrcall_func: isignalmultiplayerapiconnectedtoserver_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerAPIConnectionFailed {{
        method_name := StringName.new("signal_connection_failed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerapiconnectionfailed_ptrcall[T])
            ptrcall_func: isignalmultiplayerapiconnectionfailed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerAPIServerDisconnected {{
        method_name := StringName.new("signal_server_disconnected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerapiserverdisconnected_ptrcall[T])
            ptrcall_func: isignalmultiplayerapiserverdisconnected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerPeerPeerConnected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_peer_connected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerpeerpeerconnected_ptrcall[T])
            ptrcall_func: isignalmultiplayerpeerpeerconnected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerPeerPeerDisconnected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_peer_disconnected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerpeerpeerdisconnected_ptrcall[T])
            ptrcall_func: isignalmultiplayerpeerpeerdisconnected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerSpawnerDespawned {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_despawned")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerspawnerdespawned_ptrcall[T])
            ptrcall_func: isignalmultiplayerspawnerdespawned_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerSpawnerSpawned {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_spawned")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayerspawnerspawned_ptrcall[T])
            ptrcall_func: isignalmultiplayerspawnerspawned_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerSynchronizerSynchronized {{
        method_name := StringName.new("signal_synchronized")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayersynchronizersynchronized_ptrcall[T])
            ptrcall_func: isignalmultiplayersynchronizersynchronized_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerSynchronizerDeltaSynchronized {{
        method_name := StringName.new("signal_delta_synchronized")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayersynchronizerdeltasynchronized_ptrcall[T])
            ptrcall_func: isignalmultiplayersynchronizerdeltasynchronized_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalMultiplayerSynchronizerVisibilityChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("for_peer")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_visibility_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalmultiplayersynchronizervisibilitychanged_ptrcall[T])
            ptrcall_func: isignalmultiplayersynchronizervisibilitychanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent2DPathChanged {{
        method_name := StringName.new("signal_path_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent2dpathchanged_ptrcall[T])
            ptrcall_func: isignalnavigationagent2dpathchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent2DTargetReached {{
        method_name := StringName.new("signal_target_reached")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent2dtargetreached_ptrcall[T])
            ptrcall_func: isignalnavigationagent2dtargetreached_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent2DWaypointReached {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("details")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_dictionary
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_waypoint_reached")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent2dwaypointreached_ptrcall[T])
            ptrcall_func: isignalnavigationagent2dwaypointreached_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent2DLinkReached {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("details")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_dictionary
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_link_reached")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent2dlinkreached_ptrcall[T])
            ptrcall_func: isignalnavigationagent2dlinkreached_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent2DNavigationFinished {{
        method_name := StringName.new("signal_navigation_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent2dnavigationfinished_ptrcall[T])
            ptrcall_func: isignalnavigationagent2dnavigationfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent2DVelocityComputed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("safe_velocity")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_velocity_computed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent2dvelocitycomputed_ptrcall[T])
            ptrcall_func: isignalnavigationagent2dvelocitycomputed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent3DPathChanged {{
        method_name := StringName.new("signal_path_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent3dpathchanged_ptrcall[T])
            ptrcall_func: isignalnavigationagent3dpathchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent3DTargetReached {{
        method_name := StringName.new("signal_target_reached")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent3dtargetreached_ptrcall[T])
            ptrcall_func: isignalnavigationagent3dtargetreached_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent3DWaypointReached {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("details")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_dictionary
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_waypoint_reached")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent3dwaypointreached_ptrcall[T])
            ptrcall_func: isignalnavigationagent3dwaypointreached_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent3DLinkReached {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("details")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_dictionary
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_link_reached")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent3dlinkreached_ptrcall[T])
            ptrcall_func: isignalnavigationagent3dlinkreached_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent3DNavigationFinished {{
        method_name := StringName.new("signal_navigation_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent3dnavigationfinished_ptrcall[T])
            ptrcall_func: isignalnavigationagent3dnavigationfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationAgent3DVelocityComputed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("safe_velocity")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector3
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_velocity_computed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationagent3dvelocitycomputed_ptrcall[T])
            ptrcall_func: isignalnavigationagent3dvelocitycomputed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationRegion2DNavigationPolygonChanged {{
        method_name := StringName.new("signal_navigation_polygon_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationregion2dnavigationpolygonchanged_ptrcall[T])
            ptrcall_func: isignalnavigationregion2dnavigationpolygonchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationRegion2DBakeFinished {{
        method_name := StringName.new("signal_bake_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationregion2dbakefinished_ptrcall[T])
            ptrcall_func: isignalnavigationregion2dbakefinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationRegion3DNavigationMeshChanged {{
        method_name := StringName.new("signal_navigation_mesh_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationregion3dnavigationmeshchanged_ptrcall[T])
            ptrcall_func: isignalnavigationregion3dnavigationmeshchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationRegion3DBakeFinished {{
        method_name := StringName.new("signal_bake_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationregion3dbakefinished_ptrcall[T])
            ptrcall_func: isignalnavigationregion3dbakefinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationServer2DMapChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("mape")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_map_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationserver2dmapchanged_ptrcall[T])
            ptrcall_func: isignalnavigationserver2dmapchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationServer2DNavigationDebugChanged {{
        method_name := StringName.new("signal_navigation_debug_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationserver2dnavigationdebugchanged_ptrcall[T])
            ptrcall_func: isignalnavigationserver2dnavigationdebugchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationServer3DMapChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("mape")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_map_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationserver3dmapchanged_ptrcall[T])
            ptrcall_func: isignalnavigationserver3dmapchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationServer3DNavigationDebugChanged {{
        method_name := StringName.new("signal_navigation_debug_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationserver3dnavigationdebugchanged_ptrcall[T])
            ptrcall_func: isignalnavigationserver3dnavigationdebugchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNavigationServer3DAvoidanceDebugChanged {{
        method_name := StringName.new("signal_avoidance_debug_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnavigationserver3davoidancedebugchanged_ptrcall[T])
            ptrcall_func: isignalnavigationserver3davoidancedebugchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNinePatchRectTextureChanged {{
        method_name := StringName.new("signal_texture_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalninepatchrecttexturechanged_ptrcall[T])
            ptrcall_func: isignalninepatchrecttexturechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeReady {{
        method_name := StringName.new("signal_ready")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnodeready_ptrcall[T])
            ptrcall_func: isignalnodeready_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeRenamed {{
        method_name := StringName.new("signal_renamed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnoderenamed_ptrcall[T])
            ptrcall_func: isignalnoderenamed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeTreeEntered {{
        method_name := StringName.new("signal_tree_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnodetreeentered_ptrcall[T])
            ptrcall_func: isignalnodetreeentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeTreeExiting {{
        method_name := StringName.new("signal_tree_exiting")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnodetreeexiting_ptrcall[T])
            ptrcall_func: isignalnodetreeexiting_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeTreeExited {{
        method_name := StringName.new("signal_tree_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnodetreeexited_ptrcall[T])
            ptrcall_func: isignalnodetreeexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeChildEnteredTree {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_child_entered_tree")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnodechildenteredtree_ptrcall[T])
            ptrcall_func: isignalnodechildenteredtree_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeChildExitingTree {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_child_exiting_tree")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnodechildexitingtree_ptrcall[T])
            ptrcall_func: isignalnodechildexitingtree_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeChildOrderChanged {{
        method_name := StringName.new("signal_child_order_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnodechildorderchanged_ptrcall[T])
            ptrcall_func: isignalnodechildorderchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNodeReplacingBy {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_replacing_by")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnodereplacingby_ptrcall[T])
            ptrcall_func: isignalnodereplacingby_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalNode3DVisibilityChanged {{
        method_name := StringName.new("signal_visibility_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalnode3dvisibilitychanged_ptrcall[T])
            ptrcall_func: isignalnode3dvisibilitychanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalObjectScriptChanged {{
        method_name := StringName.new("signal_script_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalobjectscriptchanged_ptrcall[T])
            ptrcall_func: isignalobjectscriptchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalObjectPropertyListChanged {{
        method_name := StringName.new("signal_property_list_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalobjectpropertylistchanged_ptrcall[T])
            ptrcall_func: isignalobjectpropertylistchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalOpenXRInterfaceSessionBegun {{
        method_name := StringName.new("signal_session_begun")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalopenxrinterfacesessionbegun_ptrcall[T])
            ptrcall_func: isignalopenxrinterfacesessionbegun_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalOpenXRInterfaceSessionStopping {{
        method_name := StringName.new("signal_session_stopping")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalopenxrinterfacesessionstopping_ptrcall[T])
            ptrcall_func: isignalopenxrinterfacesessionstopping_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalOpenXRInterfaceSessionFocussed {{
        method_name := StringName.new("signal_session_focussed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalopenxrinterfacesessionfocussed_ptrcall[T])
            ptrcall_func: isignalopenxrinterfacesessionfocussed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalOpenXRInterfaceSessionVisible {{
        method_name := StringName.new("signal_session_visible")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalopenxrinterfacesessionvisible_ptrcall[T])
            ptrcall_func: isignalopenxrinterfacesessionvisible_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalOpenXRInterfacePoseRecentered {{
        method_name := StringName.new("signal_pose_recentered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalopenxrinterfaceposerecentered_ptrcall[T])
            ptrcall_func: isignalopenxrinterfaceposerecentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalOptionButtonItemSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_item_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaloptionbuttonitemselected_ptrcall[T])
            ptrcall_func: isignaloptionbuttonitemselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalOptionButtonItemFocused {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_item_focused")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaloptionbuttonitemfocused_ptrcall[T])
            ptrcall_func: isignaloptionbuttonitemfocused_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalPath3DCurveChanged {{
        method_name := StringName.new("signal_curve_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalpath3dcurvechanged_ptrcall[T])
            ptrcall_func: isignalpath3dcurvechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalPopupPopupHide {{
        method_name := StringName.new("signal_popup_hide")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalpopuppopuphide_ptrcall[T])
            ptrcall_func: isignalpopuppopuphide_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalPopupMenuIdPressed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_id_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalpopupmenuidpressed_ptrcall[T])
            ptrcall_func: isignalpopupmenuidpressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalPopupMenuIdFocused {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_id_focused")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalpopupmenuidfocused_ptrcall[T])
            ptrcall_func: isignalpopupmenuidfocused_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalPopupMenuIndexPressed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_index_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalpopupmenuindexpressed_ptrcall[T])
            ptrcall_func: isignalpopupmenuindexpressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalPopupMenuMenuChanged {{
        method_name := StringName.new("signal_menu_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalpopupmenumenuchanged_ptrcall[T])
            ptrcall_func: isignalpopupmenumenuchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalProjectSettingsSettingsChanged {{
        method_name := StringName.new("signal_settings_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalprojectsettingssettingschanged_ptrcall[T])
            ptrcall_func: isignalprojectsettingssettingschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRangeValueChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("value")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_f64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_real_is_double
        method_name := StringName.new("signal_value_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrangevaluechanged_ptrcall[T])
            ptrcall_func: isignalrangevaluechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRangeChanged {{
        method_name := StringName.new("signal_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrangechanged_ptrcall[T])
            ptrcall_func: isignalrangechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRenderingServerFramePreDraw {{
        method_name := StringName.new("signal_frame_pre_draw")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrenderingserverframepredraw_ptrcall[T])
            ptrcall_func: isignalrenderingserverframepredraw_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRenderingServerFramePostDraw {{
        method_name := StringName.new("signal_frame_post_draw")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrenderingserverframepostdraw_ptrcall[T])
            ptrcall_func: isignalrenderingserverframepostdraw_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalResourceChanged {{
        method_name := StringName.new("signal_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalresourcechanged_ptrcall[T])
            ptrcall_func: isignalresourcechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalResourceSetupLocalToSceneRequested {{
        method_name := StringName.new("signal_setup_local_to_scene_requested")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalresourcesetuplocaltoscenerequested_ptrcall[T])
            ptrcall_func: isignalresourcesetuplocaltoscenerequested_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRichTextLabelMetaClicked {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("meta")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_nil
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_meta_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrichtextlabelmetaclicked_ptrcall[T])
            ptrcall_func: isignalrichtextlabelmetaclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRichTextLabelMetaHoverStarted {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("meta")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_nil
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_meta_hover_started")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrichtextlabelmetahoverstarted_ptrcall[T])
            ptrcall_func: isignalrichtextlabelmetahoverstarted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRichTextLabelMetaHoverEnded {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("meta")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_nil
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_meta_hover_ended")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrichtextlabelmetahoverended_ptrcall[T])
            ptrcall_func: isignalrichtextlabelmetahoverended_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRichTextLabelFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrichtextlabelfinished_ptrcall[T])
            ptrcall_func: isignalrichtextlabelfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody2DBodyShapeEntered {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("body")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("body_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_body_shape_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody2dbodyshapeentered_ptrcall[T])
            ptrcall_func: isignalrigidbody2dbodyshapeentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody2DBodyShapeExited {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("body")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("body_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_body_shape_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody2dbodyshapeexited_ptrcall[T])
            ptrcall_func: isignalrigidbody2dbodyshapeexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody2DBodyEntered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_body_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody2dbodyentered_ptrcall[T])
            ptrcall_func: isignalrigidbody2dbodyentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody2DBodyExited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_body_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody2dbodyexited_ptrcall[T])
            ptrcall_func: isignalrigidbody2dbodyexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody2DSleepingStateChanged {{
        method_name := StringName.new("signal_sleeping_state_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody2dsleepingstatechanged_ptrcall[T])
            ptrcall_func: isignalrigidbody2dsleepingstatechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody3DBodyShapeEntered {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("body")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("body_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_body_shape_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody3dbodyshapeentered_ptrcall[T])
            ptrcall_func: isignalrigidbody3dbodyshapeentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody3DBodyShapeExited {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body_rid")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_rid
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("body")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        mut arg_name_2 := StringName.new("body_shape_index")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("local_shape_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_body_shape_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody3dbodyshapeexited_ptrcall[T])
            ptrcall_func: isignalrigidbody3dbodyshapeexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody3DBodyEntered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_body_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody3dbodyentered_ptrcall[T])
            ptrcall_func: isignalrigidbody3dbodyentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody3DBodyExited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("body")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_body_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody3dbodyexited_ptrcall[T])
            ptrcall_func: isignalrigidbody3dbodyexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalRigidBody3DSleepingStateChanged {{
        method_name := StringName.new("signal_sleeping_state_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalrigidbody3dsleepingstatechanged_ptrcall[T])
            ptrcall_func: isignalrigidbody3dsleepingstatechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneMultiplayerPeerAuthenticating {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_peer_authenticating")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenemultiplayerpeerauthenticating_ptrcall[T])
            ptrcall_func: isignalscenemultiplayerpeerauthenticating_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneMultiplayerPeerAuthenticationFailed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_peer_authentication_failed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenemultiplayerpeerauthenticationfailed_ptrcall[T])
            ptrcall_func: isignalscenemultiplayerpeerauthenticationfailed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneMultiplayerPeerPacket {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("packet")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_packedbytearray
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_peer_packet")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenemultiplayerpeerpacket_ptrcall[T])
            ptrcall_func: isignalscenemultiplayerpeerpacket_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreeTreeChanged {{
        method_name := StringName.new("signal_tree_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreetreechanged_ptrcall[T])
            ptrcall_func: isignalscenetreetreechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreeTreeProcessModeChanged {{
        method_name := StringName.new("signal_tree_process_mode_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreetreeprocessmodechanged_ptrcall[T])
            ptrcall_func: isignalscenetreetreeprocessmodechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreeNodeAdded {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_node_added")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreenodeadded_ptrcall[T])
            ptrcall_func: isignalscenetreenodeadded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreeNodeRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_node_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreenoderemoved_ptrcall[T])
            ptrcall_func: isignalscenetreenoderemoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreeNodeRenamed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_node_renamed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreenoderenamed_ptrcall[T])
            ptrcall_func: isignalscenetreenoderenamed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreeNodeConfigurationWarningChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_node_configuration_warning_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreenodeconfigurationwarningchanged_ptrcall[T])
            ptrcall_func: isignalscenetreenodeconfigurationwarningchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreeProcessFrame {{
        method_name := StringName.new("signal_process_frame")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreeprocessframe_ptrcall[T])
            ptrcall_func: isignalscenetreeprocessframe_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreePhysicsFrame {{
        method_name := StringName.new("signal_physics_frame")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreephysicsframe_ptrcall[T])
            ptrcall_func: isignalscenetreephysicsframe_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSceneTreeTimerTimeout {{
        method_name := StringName.new("signal_timeout")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscenetreetimertimeout_ptrcall[T])
            ptrcall_func: isignalscenetreetimertimeout_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptCreateDialogScriptCreated {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("script")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_script_created")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscriptcreatedialogscriptcreated_ptrcall[T])
            ptrcall_func: isignalscriptcreatedialogscriptcreated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorEditorScriptChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("script")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_editor_script_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditoreditorscriptchanged_ptrcall[T])
            ptrcall_func: isignalscripteditoreditorscriptchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorScriptClose {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("script")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_script_close")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorscriptclose_ptrcall[T])
            ptrcall_func: isignalscripteditorscriptclose_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseNameChanged {{
        method_name := StringName.new("signal_name_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbasenamechanged_ptrcall[T])
            ptrcall_func: isignalscripteditorbasenamechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseEditedScriptChanged {{
        method_name := StringName.new("signal_edited_script_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbaseeditedscriptchanged_ptrcall[T])
            ptrcall_func: isignalscripteditorbaseeditedscriptchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseRequestHelp {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("topic")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_request_help")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbaserequesthelp_ptrcall[T])
            ptrcall_func: isignalscripteditorbaserequesthelp_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseRequestOpenScriptAtLine {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("script")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("line")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_request_open_script_at_line")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbaserequestopenscriptatline_ptrcall[T])
            ptrcall_func: isignalscripteditorbaserequestopenscriptatline_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseRequestSaveHistory {{
        method_name := StringName.new("signal_request_save_history")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbaserequestsavehistory_ptrcall[T])
            ptrcall_func: isignalscripteditorbaserequestsavehistory_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseGoToHelp {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("what")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_go_to_help")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbasegotohelp_ptrcall[T])
            ptrcall_func: isignalscripteditorbasegotohelp_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseSearchInFilesRequested {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("text")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_search_in_files_requested")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbasesearchinfilesrequested_ptrcall[T])
            ptrcall_func: isignalscripteditorbasesearchinfilesrequested_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseReplaceInFilesRequested {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("text")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_replace_in_files_requested")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbasereplaceinfilesrequested_ptrcall[T])
            ptrcall_func: isignalscripteditorbasereplaceinfilesrequested_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScriptEditorBaseGoToMethod {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("script")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("method")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_go_to_method")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscripteditorbasegotomethod_ptrcall[T])
            ptrcall_func: isignalscripteditorbasegotomethod_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScrollBarScrolling {{
        method_name := StringName.new("signal_scrolling")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscrollbarscrolling_ptrcall[T])
            ptrcall_func: isignalscrollbarscrolling_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScrollContainerScrollStarted {{
        method_name := StringName.new("signal_scroll_started")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscrollcontainerscrollstarted_ptrcall[T])
            ptrcall_func: isignalscrollcontainerscrollstarted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalScrollContainerScrollEnded {{
        method_name := StringName.new("signal_scroll_ended")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalscrollcontainerscrollended_ptrcall[T])
            ptrcall_func: isignalscrollcontainerscrollended_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSkeleton2DBoneSetupChanged {{
        method_name := StringName.new("signal_bone_setup_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalskeleton2dbonesetupchanged_ptrcall[T])
            ptrcall_func: isignalskeleton2dbonesetupchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSkeleton3DPoseUpdated {{
        method_name := StringName.new("signal_pose_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalskeleton3dposeupdated_ptrcall[T])
            ptrcall_func: isignalskeleton3dposeupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSkeleton3DBonePoseChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("bone_idx")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_bone_pose_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalskeleton3dboneposechanged_ptrcall[T])
            ptrcall_func: isignalskeleton3dboneposechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSkeleton3DBoneEnabledChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("bone_idx")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_bone_enabled_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalskeleton3dboneenabledchanged_ptrcall[T])
            ptrcall_func: isignalskeleton3dboneenabledchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSkeleton3DShowRestOnlyChanged {{
        method_name := StringName.new("signal_show_rest_only_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalskeleton3dshowrestonlychanged_ptrcall[T])
            ptrcall_func: isignalskeleton3dshowrestonlychanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSkeletonProfileProfileUpdated {{
        method_name := StringName.new("signal_profile_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalskeletonprofileprofileupdated_ptrcall[T])
            ptrcall_func: isignalskeletonprofileprofileupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSliderDragStarted {{
        method_name := StringName.new("signal_drag_started")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalsliderdragstarted_ptrcall[T])
            ptrcall_func: isignalsliderdragstarted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSliderDragEnded {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("value_changed")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_drag_ended")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalsliderdragended_ptrcall[T])
            ptrcall_func: isignalsliderdragended_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSplitContainerDragged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("offset")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_dragged")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalsplitcontainerdragged_ptrcall[T])
            ptrcall_func: isignalsplitcontainerdragged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSprite2DFrameChanged {{
        method_name := StringName.new("signal_frame_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalsprite2dframechanged_ptrcall[T])
            ptrcall_func: isignalsprite2dframechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSprite2DTextureChanged {{
        method_name := StringName.new("signal_texture_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalsprite2dtexturechanged_ptrcall[T])
            ptrcall_func: isignalsprite2dtexturechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSprite3DFrameChanged {{
        method_name := StringName.new("signal_frame_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalsprite3dframechanged_ptrcall[T])
            ptrcall_func: isignalsprite3dframechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalSprite3DTextureChanged {{
        method_name := StringName.new("signal_texture_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalsprite3dtexturechanged_ptrcall[T])
            ptrcall_func: isignalsprite3dtexturechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabBarTabSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabbartabselected_ptrcall[T])
            ptrcall_func: isignaltabbartabselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabBarTabChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabbartabchanged_ptrcall[T])
            ptrcall_func: isignaltabbartabchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabBarTabClicked {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabbartabclicked_ptrcall[T])
            ptrcall_func: isignaltabbartabclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabBarTabRmbClicked {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_rmb_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabbartabrmbclicked_ptrcall[T])
            ptrcall_func: isignaltabbartabrmbclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabBarTabClosePressed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_close_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabbartabclosepressed_ptrcall[T])
            ptrcall_func: isignaltabbartabclosepressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabBarTabButtonPressed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_button_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabbartabbuttonpressed_ptrcall[T])
            ptrcall_func: isignaltabbartabbuttonpressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabBarTabHovered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_hovered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabbartabhovered_ptrcall[T])
            ptrcall_func: isignaltabbartabhovered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabBarActiveTabRearranged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("idx_to")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_active_tab_rearranged")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabbaractivetabrearranged_ptrcall[T])
            ptrcall_func: isignaltabbaractivetabrearranged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabContainerActiveTabRearranged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("idx_to")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_active_tab_rearranged")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabcontaineractivetabrearranged_ptrcall[T])
            ptrcall_func: isignaltabcontaineractivetabrearranged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabContainerTabChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabcontainertabchanged_ptrcall[T])
            ptrcall_func: isignaltabcontainertabchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabContainerTabClicked {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabcontainertabclicked_ptrcall[T])
            ptrcall_func: isignaltabcontainertabclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabContainerTabHovered {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_hovered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabcontainertabhovered_ptrcall[T])
            ptrcall_func: isignaltabcontainertabhovered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabContainerTabSelected {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabcontainertabselected_ptrcall[T])
            ptrcall_func: isignaltabcontainertabselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabContainerTabButtonPressed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tab")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tab_button_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabcontainertabbuttonpressed_ptrcall[T])
            ptrcall_func: isignaltabcontainertabbuttonpressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTabContainerPrePopupPressed {{
        method_name := StringName.new("signal_pre_popup_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltabcontainerprepopuppressed_ptrcall[T])
            ptrcall_func: isignaltabcontainerprepopuppressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextEditTextSet {{
        method_name := StringName.new("signal_text_set")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltextedittextset_ptrcall[T])
            ptrcall_func: isignaltextedittextset_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextEditTextChanged {{
        method_name := StringName.new("signal_text_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltextedittextchanged_ptrcall[T])
            ptrcall_func: isignaltextedittextchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextEditLinesEditedFrom {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("from_line")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("to_line")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_lines_edited_from")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltexteditlineseditedfrom_ptrcall[T])
            ptrcall_func: isignaltexteditlineseditedfrom_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextEditCaretChanged {{
        method_name := StringName.new("signal_caret_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltexteditcaretchanged_ptrcall[T])
            ptrcall_func: isignaltexteditcaretchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextEditGutterClicked {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("line")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("gutter")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_gutter_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltexteditgutterclicked_ptrcall[T])
            ptrcall_func: isignaltexteditgutterclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextEditGutterAdded {{
        method_name := StringName.new("signal_gutter_added")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltexteditgutteradded_ptrcall[T])
            ptrcall_func: isignaltexteditgutteradded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextEditGutterRemoved {{
        method_name := StringName.new("signal_gutter_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltexteditgutterremoved_ptrcall[T])
            ptrcall_func: isignaltexteditgutterremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextServerManagerInterfaceAdded {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("interface_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_interface_added")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltextservermanagerinterfaceadded_ptrcall[T])
            ptrcall_func: isignaltextservermanagerinterfaceadded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTextServerManagerInterfaceRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("interface_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_interface_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltextservermanagerinterfaceremoved_ptrcall[T])
            ptrcall_func: isignaltextservermanagerinterfaceremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalThemeDBFallbackChanged {{
        method_name := StringName.new("signal_fallback_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalthemedbfallbackchanged_ptrcall[T])
            ptrcall_func: isignalthemedbfallbackchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTileDataChanged {{
        method_name := StringName.new("signal_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltiledatachanged_ptrcall[T])
            ptrcall_func: isignaltiledatachanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTileMapChanged {{
        method_name := StringName.new("signal_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltilemapchanged_ptrcall[T])
            ptrcall_func: isignaltilemapchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTimerTimeout {{
        method_name := StringName.new("signal_timeout")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltimertimeout_ptrcall[T])
            ptrcall_func: isignaltimertimeout_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTouchScreenButtonPressed {{
        method_name := StringName.new("signal_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltouchscreenbuttonpressed_ptrcall[T])
            ptrcall_func: isignaltouchscreenbuttonpressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTouchScreenButtonReleased {{
        method_name := StringName.new("signal_released")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltouchscreenbuttonreleased_ptrcall[T])
            ptrcall_func: isignaltouchscreenbuttonreleased_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeItemSelected {{
        method_name := StringName.new("signal_item_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreeitemselected_ptrcall[T])
            ptrcall_func: isignaltreeitemselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeCellSelected {{
        method_name := StringName.new("signal_cell_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreecellselected_ptrcall[T])
            ptrcall_func: isignaltreecellselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeMultiSelected {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("item")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("column")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("selected")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_multi_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreemultiselected_ptrcall[T])
            ptrcall_func: isignaltreemultiselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeItemMouseSelected {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("position")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("mouse_button_index")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_item_mouse_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreeitemmouseselected_ptrcall[T])
            ptrcall_func: isignaltreeitemmouseselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeEmptyClicked {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("position")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("mouse_button_index")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_empty_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreeemptyclicked_ptrcall[T])
            ptrcall_func: isignaltreeemptyclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeItemEdited {{
        method_name := StringName.new("signal_item_edited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreeitemedited_ptrcall[T])
            ptrcall_func: isignaltreeitemedited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeCustomItemClicked {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("mouse_button_index")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_custom_item_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreecustomitemclicked_ptrcall[T])
            ptrcall_func: isignaltreecustomitemclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeItemIconDoubleClicked {{
        method_name := StringName.new("signal_item_icon_double_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreeitemicondoubleclicked_ptrcall[T])
            ptrcall_func: isignaltreeitemicondoubleclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeItemCollapsed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("item")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_item_collapsed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreeitemcollapsed_ptrcall[T])
            ptrcall_func: isignaltreeitemcollapsed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeCheckPropagatedToItem {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("item")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("column")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_check_propagated_to_item")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreecheckpropagatedtoitem_ptrcall[T])
            ptrcall_func: isignaltreecheckpropagatedtoitem_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeButtonClicked {{
        mut argument_props := [4]GDExtensionPropertyInfo{}
        mut argument_metadata := [4]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("item")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("column")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("id")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_3 := StringName.new("mouse_button_index")
        mut arg_hint_3 := String.new("")
        argument_props[3] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_3
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_3
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[3] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_button_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreebuttonclicked_ptrcall[T])
            ptrcall_func: isignaltreebuttonclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 4
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeCustomPopupEdited {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("arrow_clicked")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_custom_popup_edited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreecustompopupedited_ptrcall[T])
            ptrcall_func: isignaltreecustompopupedited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeItemActivated {{
        method_name := StringName.new("signal_item_activated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreeitemactivated_ptrcall[T])
            ptrcall_func: isignaltreeitemactivated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeColumnTitleClicked {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("column")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_1 := StringName.new("mouse_button_index")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_column_title_clicked")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreecolumntitleclicked_ptrcall[T])
            ptrcall_func: isignaltreecolumntitleclicked_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTreeNothingSelected {{
        method_name := StringName.new("signal_nothing_selected")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltreenothingselected_ptrcall[T])
            ptrcall_func: isignaltreenothingselected_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTweenStepFinished {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("idx")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_step_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltweenstepfinished_ptrcall[T])
            ptrcall_func: isignaltweenstepfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTweenLoopFinished {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("loop_count")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_loop_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltweenloopfinished_ptrcall[T])
            ptrcall_func: isignaltweenloopfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTweenFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltweenfinished_ptrcall[T])
            ptrcall_func: isignaltweenfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalTweenerFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignaltweenerfinished_ptrcall[T])
            ptrcall_func: isignaltweenerfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalUndoRedoVersionChanged {{
        method_name := StringName.new("signal_version_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalundoredoversionchanged_ptrcall[T])
            ptrcall_func: isignalundoredoversionchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalVideoStreamPlayerFinished {{
        method_name := StringName.new("signal_finished")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalvideostreamplayerfinished_ptrcall[T])
            ptrcall_func: isignalvideostreamplayerfinished_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalViewportSizeChanged {{
        method_name := StringName.new("signal_size_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalviewportsizechanged_ptrcall[T])
            ptrcall_func: isignalviewportsizechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalViewportGuiFocusChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("node")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_gui_focus_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalviewportguifocuschanged_ptrcall[T])
            ptrcall_func: isignalviewportguifocuschanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalVisibleOnScreenNotifier2DScreenEntered {{
        method_name := StringName.new("signal_screen_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalvisibleonscreennotifier2dscreenentered_ptrcall[T])
            ptrcall_func: isignalvisibleonscreennotifier2dscreenentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalVisibleOnScreenNotifier2DScreenExited {{
        method_name := StringName.new("signal_screen_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalvisibleonscreennotifier2dscreenexited_ptrcall[T])
            ptrcall_func: isignalvisibleonscreennotifier2dscreenexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalVisibleOnScreenNotifier3DScreenEntered {{
        method_name := StringName.new("signal_screen_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalvisibleonscreennotifier3dscreenentered_ptrcall[T])
            ptrcall_func: isignalvisibleonscreennotifier3dscreenentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalVisibleOnScreenNotifier3DScreenExited {{
        method_name := StringName.new("signal_screen_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalvisibleonscreennotifier3dscreenexited_ptrcall[T])
            ptrcall_func: isignalvisibleonscreennotifier3dscreenexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalVisualShaderNodeInputInputTypeChanged {{
        method_name := StringName.new("signal_input_type_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalvisualshadernodeinputinputtypechanged_ptrcall[T])
            ptrcall_func: isignalvisualshadernodeinputinputtypechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebRTCPeerConnectionSessionDescriptionCreated {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("type_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("sdp")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_session_description_created")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebrtcpeerconnectionsessiondescriptioncreated_ptrcall[T])
            ptrcall_func: isignalwebrtcpeerconnectionsessiondescriptioncreated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebRTCPeerConnectionIceCandidateCreated {{
        mut argument_props := [3]GDExtensionPropertyInfo{}
        mut argument_metadata := [3]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("media")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("index")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        mut arg_name_2 := StringName.new("name")
        mut arg_hint_2 := String.new("")
        argument_props[2] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_2
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_2
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[2] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_ice_candidate_created")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebrtcpeerconnectionicecandidatecreated_ptrcall[T])
            ptrcall_func: isignalwebrtcpeerconnectionicecandidatecreated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 3
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebRTCPeerConnectionDataChannelReceived {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("channel")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_data_channel_received")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebrtcpeerconnectiondatachannelreceived_ptrcall[T])
            ptrcall_func: isignalwebrtcpeerconnectiondatachannelreceived_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSessionSupported {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("session_mode")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("supported")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_session_supported")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacesessionsupported_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacesessionsupported_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSessionStarted {{
        method_name := StringName.new("signal_session_started")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacesessionstarted_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacesessionstarted_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSessionEnded {{
        method_name := StringName.new("signal_session_ended")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacesessionended_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacesessionended_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSessionFailed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("message")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_session_failed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacesessionfailed_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacesessionfailed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSelectstart {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("input_source_id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_selectstart")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfaceselectstart_ptrcall[T])
            ptrcall_func: isignalwebxrinterfaceselectstart_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSelect {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("input_source_id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_gdselect")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfaceselect_ptrcall[T])
            ptrcall_func: isignalwebxrinterfaceselect_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSelectend {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("input_source_id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_selectend")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfaceselectend_ptrcall[T])
            ptrcall_func: isignalwebxrinterfaceselectend_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSqueezestart {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("input_source_id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_squeezestart")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacesqueezestart_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacesqueezestart_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSqueeze {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("input_source_id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_squeeze")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacesqueeze_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacesqueeze_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceSqueezeend {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("input_source_id")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_squeezeend")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacesqueezeend_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacesqueezeend_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceVisibilityStateChanged {{
        method_name := StringName.new("signal_visibility_state_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacevisibilitystatechanged_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacevisibilitystatechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceReferenceSpaceReset {{
        method_name := StringName.new("signal_reference_space_reset")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacereferencespacereset_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacereferencespacereset_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWebXRInterfaceDisplayRefreshRateChanged {{
        method_name := StringName.new("signal_display_refresh_rate_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwebxrinterfacedisplayrefreshratechanged_ptrcall[T])
            ptrcall_func: isignalwebxrinterfacedisplayrefreshratechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowWindowInput {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("event")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_window_input")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowwindowinput_ptrcall[T])
            ptrcall_func: isignalwindowwindowinput_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowFilesDropped {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("files")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_packedstringarray
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_files_dropped")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowfilesdropped_ptrcall[T])
            ptrcall_func: isignalwindowfilesdropped_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowMouseEntered {{
        method_name := StringName.new("signal_mouse_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowmouseentered_ptrcall[T])
            ptrcall_func: isignalwindowmouseentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowMouseExited {{
        method_name := StringName.new("signal_mouse_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowmouseexited_ptrcall[T])
            ptrcall_func: isignalwindowmouseexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowFocusEntered {{
        method_name := StringName.new("signal_focus_entered")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowfocusentered_ptrcall[T])
            ptrcall_func: isignalwindowfocusentered_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowFocusExited {{
        method_name := StringName.new("signal_focus_exited")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowfocusexited_ptrcall[T])
            ptrcall_func: isignalwindowfocusexited_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowCloseRequested {{
        method_name := StringName.new("signal_close_requested")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowcloserequested_ptrcall[T])
            ptrcall_func: isignalwindowcloserequested_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowGoBackRequested {{
        method_name := StringName.new("signal_go_back_requested")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowgobackrequested_ptrcall[T])
            ptrcall_func: isignalwindowgobackrequested_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowVisibilityChanged {{
        method_name := StringName.new("signal_visibility_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowvisibilitychanged_ptrcall[T])
            ptrcall_func: isignalwindowvisibilitychanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowAboutToPopup {{
        method_name := StringName.new("signal_about_to_popup")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowabouttopopup_ptrcall[T])
            ptrcall_func: isignalwindowabouttopopup_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowThemeChanged {{
        method_name := StringName.new("signal_theme_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowthemechanged_ptrcall[T])
            ptrcall_func: isignalwindowthemechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowDpiChanged {{
        method_name := StringName.new("signal_dpi_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowdpichanged_ptrcall[T])
            ptrcall_func: isignalwindowdpichanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalWindowTitlebarChanged {{
        method_name := StringName.new("signal_titlebar_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalwindowtitlebarchanged_ptrcall[T])
            ptrcall_func: isignalwindowtitlebarchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 0
            arguments_info: unsafe{nil}
            arguments_metadata: unsafe{nil}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRController3DButtonPressed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_button_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrcontroller3dbuttonpressed_ptrcall[T])
            ptrcall_func: isignalxrcontroller3dbuttonpressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRController3DButtonReleased {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_button_released")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrcontroller3dbuttonreleased_ptrcall[T])
            ptrcall_func: isignalxrcontroller3dbuttonreleased_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRController3DInputFloatChanged {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("value")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_f64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_real_is_double
        method_name := StringName.new("signal_input_float_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrcontroller3dinputfloatchanged_ptrcall[T])
            ptrcall_func: isignalxrcontroller3dinputfloatchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRController3DInputVector2Changed {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("value")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_input_vector2_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrcontroller3dinputvector2changed_ptrcall[T])
            ptrcall_func: isignalxrcontroller3dinputvector2changed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRInterfacePlayAreaChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("mode")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_play_area_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrinterfaceplayareachanged_ptrcall[T])
            ptrcall_func: isignalxrinterfaceplayareachanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRNode3DTrackingChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tracking")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_bool
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_tracking_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrnode3dtrackingchanged_ptrcall[T])
            ptrcall_func: isignalxrnode3dtrackingchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRPositionalTrackerPoseChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("pose")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_pose_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrpositionaltrackerposechanged_ptrcall[T])
            ptrcall_func: isignalxrpositionaltrackerposechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRPositionalTrackerPoseLostTracking {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("pose")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_object
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_pose_lost_tracking")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrpositionaltrackerposelosttracking_ptrcall[T])
            ptrcall_func: isignalxrpositionaltrackerposelosttracking_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRPositionalTrackerButtonPressed {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_button_pressed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrpositionaltrackerbuttonpressed_ptrcall[T])
            ptrcall_func: isignalxrpositionaltrackerbuttonpressed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRPositionalTrackerButtonReleased {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_button_released")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrpositionaltrackerbuttonreleased_ptrcall[T])
            ptrcall_func: isignalxrpositionaltrackerbuttonreleased_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRPositionalTrackerInputFloatChanged {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("value")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_f64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_real_is_double
        method_name := StringName.new("signal_input_float_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrpositionaltrackerinputfloatchanged_ptrcall[T])
            ptrcall_func: isignalxrpositionaltrackerinputfloatchanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRPositionalTrackerInputVector2Changed {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("vector")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_vector2
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_input_vector2_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrpositionaltrackerinputvector2changed_ptrcall[T])
            ptrcall_func: isignalxrpositionaltrackerinputvector2changed_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRPositionalTrackerProfileChanged {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("role")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_string
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_profile_changed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrpositionaltrackerprofilechanged_ptrcall[T])
            ptrcall_func: isignalxrpositionaltrackerprofilechanged_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRServerInterfaceAdded {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("interface_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_interface_added")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrserverinterfaceadded_ptrcall[T])
            ptrcall_func: isignalxrserverinterfaceadded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRServerInterfaceRemoved {{
        mut argument_props := [1]GDExtensionPropertyInfo{}
        mut argument_metadata := [1]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("interface_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        method_name := StringName.new("signal_interface_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrserverinterfaceremoved_ptrcall[T])
            ptrcall_func: isignalxrserverinterfaceremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 1
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRServerTrackerAdded {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tracker_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("type_name")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tracker_added")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrservertrackeradded_ptrcall[T])
            ptrcall_func: isignalxrservertrackeradded_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRServerTrackerUpdated {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tracker_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("type_name")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tracker_updated")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrservertrackerupdated_ptrcall[T])
            ptrcall_func: isignalxrservertrackerupdated_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
    $if T is ISignalXRServerTrackerRemoved {{
        mut argument_props := [2]GDExtensionPropertyInfo{}
        mut argument_metadata := [2]GDExtensionClassMethodArgumentMetadata{}
        mut arg_name_0 := StringName.new("tracker_name")
        mut arg_hint_0 := String.new("")
        argument_props[0] = GDExtensionPropertyInfo {
            type_: .type_stringname
            name: &arg_name_0
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_0
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[0] = .gdextension_method_argument_metadata_none
        mut arg_name_1 := StringName.new("type_name")
        mut arg_hint_1 := String.new("")
        argument_props[1] = GDExtensionPropertyInfo {
            type_: .type_i64
            name: &arg_name_1
            class_name: &ci.class_name
            hint: u32(PropertyHint.property_hint_none)
            hint_string: &arg_hint_1
            usage: u32(PropertyUsageFlags.property_usage_default)
        }
        argument_metadata[1] = .gdextension_method_argument_metadata_int_is_int64
        method_name := StringName.new("signal_tracker_removed")
        method_info := GDExtensionClassMethodInfo {
            name: &method_name
            method_userdata: unsafe{nil}
            call_func: ptrcall_to_call(isignalxrservertrackerremoved_ptrcall[T])
            ptrcall_func: isignalxrservertrackerremoved_ptrcall[T]
            method_flags: 1
            has_return_value: GDExtensionBool(false)
            return_value_info: unsafe{nil}
            return_value_metadata: GDExtensionClassMethodArgumentMetadata{}
            argument_count: 2
            arguments_info: unsafe{&argument_props[0]}
            arguments_metadata: unsafe{&argument_metadata[0]}
            default_argument_count: 0
            default_arguments: unsafe{nil}
        }
        gdf.classdb_register_extension_class_method(gdf.clp, ci.class_name, method_info)
    }}
}
