module vgdextension

fn astar2d_uestimate_cost[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAStar2DEstimateCost(unsafe{&T(voidptr(inst))})
    from_id := unsafe{&i64(args[0])}
    to_id := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_estimate_cost(from_id, to_id)
}

fn astar2d_ucompute_cost[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAStar2DComputeCost(unsafe{&T(voidptr(inst))})
    from_id := unsafe{&i64(args[0])}
    to_id := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_compute_cost(from_id, to_id)
}

fn astar3d_uestimate_cost[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAStar3DEstimateCost(unsafe{&T(voidptr(inst))})
    from_id := unsafe{&i64(args[0])}
    to_id := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_estimate_cost(from_id, to_id)
}

fn astar3d_ucompute_cost[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAStar3DComputeCost(unsafe{&T(voidptr(inst))})
    from_id := unsafe{&i64(args[0])}
    to_id := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_compute_cost(from_id, to_id)
}

fn astargrid2d_uestimate_cost[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAStarGrid2DEstimateCost(unsafe{&T(voidptr(inst))})
    from_id := unsafe{&Vector2i(args[0])}
    to_id := unsafe{&Vector2i(args[1])}
    *(&f64(ret)) := i.virt_estimate_cost(from_id, to_id)
}

fn astargrid2d_ucompute_cost[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAStarGrid2DComputeCost(unsafe{&T(voidptr(inst))})
    from_id := unsafe{&Vector2i(args[0])}
    to_id := unsafe{&Vector2i(args[1])}
    *(&f64(ret)) := i.virt_compute_cost(from_id, to_id)
}

fn animationmixer_upost_process_key_value[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationMixerPostProcessKeyValue(unsafe{&T(voidptr(inst))})
    animation := unsafe{&Animation(args[0])}
    track := unsafe{&i32(args[1])}
    value := unsafe{&Variant(args[2])}
    object := unsafe{&Object(args[3])}
    object_idx := unsafe{&i32(args[4])}
    *(&Variant(ret)) := i.virt_post_process_key_value(animation, track, value, object, object_idx)
}

fn animationnode_uget_child_nodes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationNodeGetChildNodes(unsafe{&T(voidptr(inst))})
    *(&Dictionary(ret)) := i.virt_get_child_nodes()
}

fn animationnode_uget_parameter_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationNodeGetParameterList(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_parameter_list()
}

fn animationnode_uget_child_by_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationNodeGetChildByName(unsafe{&T(voidptr(inst))})
    name := unsafe{&StringName(args[0])}
    *(&AnimationNode(ret)) := i.virt_get_child_by_name(name)
}

fn animationnode_uget_parameter_default_value[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationNodeGetParameterDefaultValue(unsafe{&T(voidptr(inst))})
    parameter := unsafe{&StringName(args[0])}
    *(&Variant(ret)) := i.virt_get_parameter_default_value(parameter)
}

fn animationnode_uis_parameter_read_only[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationNodeIsParameterReadOnly(unsafe{&T(voidptr(inst))})
    parameter := unsafe{&StringName(args[0])}
    *(&bool(ret)) := i.virt_is_parameter_read_only(parameter)
}

fn animationnode_uprocess[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationNodeProcess(unsafe{&T(voidptr(inst))})
    time := unsafe{&f64(args[0])}
    seek := unsafe{&bool(args[1])}
    is_external_seeking := unsafe{&bool(args[2])}
    test_only := unsafe{&bool(args[3])}
    *(&f64(ret)) := i.virt_process(time, seek, is_external_seeking, test_only)
}

fn animationnode_uget_caption[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationNodeGetCaption(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_caption()
}

fn animationnode_uhas_filter[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAnimationNodeHasFilter(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_has_filter()
}

fn audioeffect_uinstantiate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioEffectInstantiate(unsafe{&T(voidptr(inst))})
    *(&AudioEffectInstance(ret)) := i.virt_instantiate()
}

fn audioeffectinstance_uprocess[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioEffectInstanceProcess(unsafe{&T(voidptr(inst))})
    src_buffer := unsafe{&voidptr(args[0])}
    dst_buffer := unsafe{&&AudioFrame(args[1])}
    frame_count := unsafe{&i32(args[2])}
    i.virt_process(src_buffer, dst_buffer, frame_count)
}

fn audioeffectinstance_uprocess_silence[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioEffectInstanceProcessSilence(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_process_silence()
}

fn audiostream_uinstantiate_playback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamInstantiatePlayback(unsafe{&T(voidptr(inst))})
    *(&AudioStreamPlayback(ret)) := i.virt_instantiate_playback()
}

fn audiostream_uget_stream_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamGetStreamName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_stream_name()
}

fn audiostream_uget_length[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamGetLength(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_length()
}

fn audiostream_uis_monophonic[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamIsMonophonic(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_monophonic()
}

fn audiostream_uget_bpm[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamGetBpm(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_bpm()
}

fn audiostream_uget_beat_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamGetBeatCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_beat_count()
}

fn audiostreamplayback_ustart[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackStart(unsafe{&T(voidptr(inst))})
    from_pos := unsafe{&f64(args[0])}
    i.virt_start(from_pos)
}

fn audiostreamplayback_ustop[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackStop(unsafe{&T(voidptr(inst))})
    i.virt_stop()
}

fn audiostreamplayback_uis_playing[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackIsPlaying(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_playing()
}

fn audiostreamplayback_uget_loop_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackGetLoopCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_loop_count()
}

fn audiostreamplayback_uget_playback_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackGetPlaybackPosition(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_playback_position()
}

fn audiostreamplayback_useek[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackSeek(unsafe{&T(voidptr(inst))})
    position := unsafe{&f64(args[0])}
    i.virt_seek(position)
}

fn audiostreamplayback_umix[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackMix(unsafe{&T(voidptr(inst))})
    buffer := unsafe{&&AudioFrame(args[0])}
    rate_scale := unsafe{&f64(args[1])}
    frames := unsafe{&i32(args[2])}
    *(&i32(ret)) := i.virt_mix(buffer, rate_scale, frames)
}

fn audiostreamplayback_utag_used_streams[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackTagUsedStreams(unsafe{&T(voidptr(inst))})
    i.virt_tag_used_streams()
}

fn audiostreamplaybackresampled_umix_resampled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackResampledMixResampled(unsafe{&T(voidptr(inst))})
    dst_buffer := unsafe{&&AudioFrame(args[0])}
    frame_count := unsafe{&i32(args[1])}
    *(&i32(ret)) := i.virt_mix_resampled(dst_buffer, frame_count)
}

fn audiostreamplaybackresampled_uget_stream_sampling_rate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IAudioStreamPlaybackResampledGetStreamSamplingRate(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_stream_sampling_rate()
}

fn basebutton_upressed[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IBaseButtonPressed(unsafe{&T(voidptr(inst))})
    i.virt_pressed()
}

fn basebutton_utoggled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IBaseButtonToggled(unsafe{&T(voidptr(inst))})
    toggled_on := unsafe{&bool(args[0])}
    i.virt_toggled(toggled_on)
}

fn canvasitem_udraw[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICanvasItemDraw(unsafe{&T(voidptr(inst))})
    i.virt_draw()
}

fn codeedit_uconfirm_code_completion[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICodeEditConfirmCodeCompletion(unsafe{&T(voidptr(inst))})
    replace := unsafe{&bool(args[0])}
    i.virt_confirm_code_completion(replace)
}

fn codeedit_urequest_code_completion[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICodeEditRequestCodeCompletion(unsafe{&T(voidptr(inst))})
    force := unsafe{&bool(args[0])}
    i.virt_request_code_completion(force)
}

fn codeedit_ufilter_code_completion_candidates[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICodeEditFilterCodeCompletionCandidates(unsafe{&T(voidptr(inst))})
    candidates := unsafe{&Array(args[0])}
    *(&Array(ret)) := i.virt_filter_code_completion_candidates(candidates)
}

fn collisionobject2d_uinput_event[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICollisionObject2DInputEvent(unsafe{&T(voidptr(inst))})
    viewport := unsafe{&Viewport(args[0])}
    event := unsafe{&InputEvent(args[1])}
    shape_idx := unsafe{&i32(args[2])}
    i.virt_input_event(viewport, event, shape_idx)
}

fn collisionobject2d_umouse_enter[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICollisionObject2DMouseEnter(unsafe{&T(voidptr(inst))})
    i.virt_mouse_enter()
}

fn collisionobject2d_umouse_exit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICollisionObject2DMouseExit(unsafe{&T(voidptr(inst))})
    i.virt_mouse_exit()
}

fn collisionobject2d_umouse_shape_enter[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICollisionObject2DMouseShapeEnter(unsafe{&T(voidptr(inst))})
    shape_idx := unsafe{&i32(args[0])}
    i.virt_mouse_shape_enter(shape_idx)
}

fn collisionobject2d_umouse_shape_exit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICollisionObject2DMouseShapeExit(unsafe{&T(voidptr(inst))})
    shape_idx := unsafe{&i32(args[0])}
    i.virt_mouse_shape_exit(shape_idx)
}

fn collisionobject3d_uinput_event[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICollisionObject3DInputEvent(unsafe{&T(voidptr(inst))})
    camera := unsafe{&Camera3D(args[0])}
    event := unsafe{&InputEvent(args[1])}
    position := unsafe{&Vector3(args[2])}
    normal := unsafe{&Vector3(args[3])}
    shape_idx := unsafe{&i32(args[4])}
    i.virt_input_event(camera, event, position, normal, shape_idx)
}

fn collisionobject3d_umouse_enter[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICollisionObject3DMouseEnter(unsafe{&T(voidptr(inst))})
    i.virt_mouse_enter()
}

fn collisionobject3d_umouse_exit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ICollisionObject3DMouseExit(unsafe{&T(voidptr(inst))})
    i.virt_mouse_exit()
}

fn container_uget_allowed_size_flags_horizontal[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IContainerGetAllowedSizeFlagsHorizontal(unsafe{&T(voidptr(inst))})
    *(&PackedInt32Array(ret)) := i.virt_get_allowed_size_flags_horizontal()
}

fn container_uget_allowed_size_flags_vertical[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IContainerGetAllowedSizeFlagsVertical(unsafe{&T(voidptr(inst))})
    *(&PackedInt32Array(ret)) := i.virt_get_allowed_size_flags_vertical()
}

fn control_uhas_point[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlHasPoint(unsafe{&T(voidptr(inst))})
    point := unsafe{&Vector2(args[0])}
    *(&bool(ret)) := i.virt_has_point(point)
}

fn control_ustructured_text_parser[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlStructuredTextParser(unsafe{&T(voidptr(inst))})
    gdargs := unsafe{&Array(args[0])}
    text := unsafe{&String(args[1])}
    *(&Array(ret)) := i.virt_structured_text_parser(gdargs, text)
}

fn control_uget_minimum_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlGetMinimumSize(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_minimum_size()
}

fn control_uget_tooltip[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlGetTooltip(unsafe{&T(voidptr(inst))})
    at_position := unsafe{&Vector2(args[0])}
    *(&String(ret)) := i.virt_get_tooltip(at_position)
}

fn control_uget_drag_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlGetDragData(unsafe{&T(voidptr(inst))})
    at_position := unsafe{&Vector2(args[0])}
    *(&Variant(ret)) := i.virt_get_drag_data(at_position)
}

fn control_ucan_drop_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlCanDropData(unsafe{&T(voidptr(inst))})
    at_position := unsafe{&Vector2(args[0])}
    data := unsafe{&Variant(args[1])}
    *(&bool(ret)) := i.virt_can_drop_data(at_position, data)
}

fn control_udrop_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlDropData(unsafe{&T(voidptr(inst))})
    at_position := unsafe{&Vector2(args[0])}
    data := unsafe{&Variant(args[1])}
    i.virt_drop_data(at_position, data)
}

fn control_umake_custom_tooltip[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlMakeCustomTooltip(unsafe{&T(voidptr(inst))})
    for_text := unsafe{&String(args[0])}
    *(&Object(ret)) := i.virt_make_custom_tooltip(for_text)
}

fn control_ugui_input[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IControlGuiInput(unsafe{&T(voidptr(inst))})
    event := unsafe{&InputEvent(args[0])}
    i.virt_gui_input(event)
}

fn editordebuggerplugin_usetup_session[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorDebuggerPluginSetupSession(unsafe{&T(voidptr(inst))})
    session_id := unsafe{&i32(args[0])}
    i.virt_setup_session(session_id)
}

fn editordebuggerplugin_uhas_capture[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorDebuggerPluginHasCapture(unsafe{&T(voidptr(inst))})
    capture := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_has_capture(capture)
}

fn editordebuggerplugin_ucapture[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorDebuggerPluginCapture(unsafe{&T(voidptr(inst))})
    message := unsafe{&String(args[0])}
    data := unsafe{&Array(args[1])}
    session_id := unsafe{&i32(args[2])}
    *(&bool(ret)) := i.virt_capture(message, data, session_id)
}

fn editorexportplugin_uexport_file[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginExportFile(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    type_name := unsafe{&String(args[1])}
    features := unsafe{&PackedStringArray(args[2])}
    i.virt_export_file(path, type_name, features)
}

fn editorexportplugin_uexport_begin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginExportBegin(unsafe{&T(voidptr(inst))})
    features := unsafe{&PackedStringArray(args[0])}
    is_debug := unsafe{&bool(args[1])}
    path := unsafe{&String(args[2])}
    flags := unsafe{&u32(args[3])}
    i.virt_export_begin(features, is_debug, path, flags)
}

fn editorexportplugin_uexport_end[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginExportEnd(unsafe{&T(voidptr(inst))})
    i.virt_export_end()
}

fn editorexportplugin_ubegin_customize_resources[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginBeginCustomizeResources(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    features := unsafe{&PackedStringArray(args[1])}
    *(&bool(ret)) := i.virt_begin_customize_resources(platform, features)
}

fn editorexportplugin_ucustomize_resource[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginCustomizeResource(unsafe{&T(voidptr(inst))})
    resource := unsafe{&Resource(args[0])}
    path := unsafe{&String(args[1])}
    *(&Resource(ret)) := i.virt_customize_resource(resource, path)
}

fn editorexportplugin_ubegin_customize_scenes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginBeginCustomizeScenes(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    features := unsafe{&PackedStringArray(args[1])}
    *(&bool(ret)) := i.virt_begin_customize_scenes(platform, features)
}

fn editorexportplugin_ucustomize_scene[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginCustomizeScene(unsafe{&T(voidptr(inst))})
    scene := unsafe{&Node(args[0])}
    path := unsafe{&String(args[1])}
    *(&Node(ret)) := i.virt_customize_scene(scene, path)
}

fn editorexportplugin_uget_customization_configuration_hash[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetCustomizationConfigurationHash(unsafe{&T(voidptr(inst))})
    *(&u64(ret)) := i.virt_get_customization_configuration_hash()
}

fn editorexportplugin_uend_customize_scenes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginEndCustomizeScenes(unsafe{&T(voidptr(inst))})
    i.virt_end_customize_scenes()
}

fn editorexportplugin_uend_customize_resources[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginEndCustomizeResources(unsafe{&T(voidptr(inst))})
    i.virt_end_customize_resources()
}

fn editorexportplugin_uget_export_options[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetExportOptions(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    *(&Array(ret)) := i.virt_get_export_options(platform)
}

fn editorexportplugin_ushould_update_export_options[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginShouldUpdateExportOptions(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    *(&bool(ret)) := i.virt_should_update_export_options(platform)
}

fn editorexportplugin_uget_export_option_warning[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetExportOptionWarning(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    option := unsafe{&String(args[1])}
    *(&String(ret)) := i.virt_get_export_option_warning(platform, option)
}

fn editorexportplugin_uget_export_features[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetExportFeatures(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    debug := unsafe{&bool(args[1])}
    *(&PackedStringArray(ret)) := i.virt_get_export_features(platform, debug)
}

fn editorexportplugin_uget_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_name()
}

fn editorexportplugin_usupports_platform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginSupportsPlatform(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    *(&bool(ret)) := i.virt_supports_platform(platform)
}

fn editorexportplugin_uget_android_dependencies[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetAndroidDependencies(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    debug := unsafe{&bool(args[1])}
    *(&PackedStringArray(ret)) := i.virt_get_android_dependencies(platform, debug)
}

fn editorexportplugin_uget_android_dependencies_maven_repos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetAndroidDependenciesMavenRepos(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    debug := unsafe{&bool(args[1])}
    *(&PackedStringArray(ret)) := i.virt_get_android_dependencies_maven_repos(platform, debug)
}

fn editorexportplugin_uget_android_libraries[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetAndroidLibraries(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    debug := unsafe{&bool(args[1])}
    *(&PackedStringArray(ret)) := i.virt_get_android_libraries(platform, debug)
}

fn editorexportplugin_uget_android_manifest_activity_element_contents[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetAndroidManifestActivityElementContents(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    debug := unsafe{&bool(args[1])}
    *(&String(ret)) := i.virt_get_android_manifest_activity_element_contents(platform, debug)
}

fn editorexportplugin_uget_android_manifest_application_element_contents[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetAndroidManifestApplicationElementContents(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    debug := unsafe{&bool(args[1])}
    *(&String(ret)) := i.virt_get_android_manifest_application_element_contents(platform, debug)
}

fn editorexportplugin_uget_android_manifest_element_contents[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorExportPluginGetAndroidManifestElementContents(unsafe{&T(voidptr(inst))})
    platform := unsafe{&EditorExportPlatform(args[0])}
    debug := unsafe{&bool(args[1])}
    *(&String(ret)) := i.virt_get_android_manifest_element_contents(platform, debug)
}

fn editorfilesystemimportformatsupportquery_uis_active[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorFileSystemImportFormatSupportQueryIsActive(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_active()
}

fn editorfilesystemimportformatsupportquery_uget_file_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorFileSystemImportFormatSupportQueryGetFileExtensions(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_file_extensions()
}

fn editorfilesystemimportformatsupportquery_uquery[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorFileSystemImportFormatSupportQueryQuery(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_query()
}

fn editorimportplugin_uget_importer_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetImporterName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_importer_name()
}

fn editorimportplugin_uget_visible_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetVisibleName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_visible_name()
}

fn editorimportplugin_uget_preset_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetPresetCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_preset_count()
}

fn editorimportplugin_uget_preset_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetPresetName(unsafe{&T(voidptr(inst))})
    preset_index := unsafe{&i32(args[0])}
    *(&String(ret)) := i.virt_get_preset_name(preset_index)
}

fn editorimportplugin_uget_recognized_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetRecognizedExtensions(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_recognized_extensions()
}

fn editorimportplugin_uget_import_options[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetImportOptions(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    preset_index := unsafe{&i32(args[1])}
    *(&Array(ret)) := i.virt_get_import_options(path, preset_index)
}

fn editorimportplugin_uget_save_extension[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetSaveExtension(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_save_extension()
}

fn editorimportplugin_uget_resource_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetResourceType(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_resource_type()
}

fn editorimportplugin_uget_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetPriority(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_priority()
}

fn editorimportplugin_uget_import_order[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetImportOrder(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_import_order()
}

fn editorimportplugin_uget_option_visibility[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginGetOptionVisibility(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    option_name := unsafe{&StringName(args[1])}
    options := unsafe{&Dictionary(args[2])}
    *(&bool(ret)) := i.virt_get_option_visibility(path, option_name, options)
}

fn editorimportplugin_uimport[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorImportPluginImport(unsafe{&T(voidptr(inst))})
    source_file := unsafe{&String(args[0])}
    save_path := unsafe{&String(args[1])}
    options := unsafe{&Dictionary(args[2])}
    platform_variants := unsafe{&Array(args[3])}
    gen_files := unsafe{&Array(args[4])}
    *(&GDError(ret)) := i.virt_import(source_file, save_path, options, platform_variants, gen_files)
}

fn editorinspectorplugin_ucan_handle[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorInspectorPluginCanHandle(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    *(&bool(ret)) := i.virt_can_handle(object)
}

fn editorinspectorplugin_uparse_begin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorInspectorPluginParseBegin(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    i.virt_parse_begin(object)
}

fn editorinspectorplugin_uparse_category[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorInspectorPluginParseCategory(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    category := unsafe{&String(args[1])}
    i.virt_parse_category(object, category)
}

fn editorinspectorplugin_uparse_group[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorInspectorPluginParseGroup(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    group := unsafe{&String(args[1])}
    i.virt_parse_group(object, group)
}

fn editorinspectorplugin_uparse_property[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorInspectorPluginParseProperty(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    type_name := unsafe{&VariantType(args[1])}
    name := unsafe{&String(args[2])}
    hint_type := unsafe{&PropertyHint(args[3])}
    hint_string := unsafe{&String(args[4])}
    usage_flags := unsafe{&PropertyUsageFlags(args[5])}
    wide := unsafe{&bool(args[6])}
    *(&bool(ret)) := i.virt_parse_property(object, type_name, name, hint_type, hint_string, usage_flags, wide)
}

fn editorinspectorplugin_uparse_end[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorInspectorPluginParseEnd(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    i.virt_parse_end(object)
}

fn editornode3dgizmo_uredraw[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoRedraw(unsafe{&T(voidptr(inst))})
    i.virt_redraw()
}

fn editornode3dgizmo_uget_handle_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoGetHandleName(unsafe{&T(voidptr(inst))})
    id := unsafe{&i32(args[0])}
    secondary := unsafe{&bool(args[1])}
    *(&String(ret)) := i.virt_get_handle_name(id, secondary)
}

fn editornode3dgizmo_uis_handle_highlighted[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoIsHandleHighlighted(unsafe{&T(voidptr(inst))})
    id := unsafe{&i32(args[0])}
    secondary := unsafe{&bool(args[1])}
    *(&bool(ret)) := i.virt_is_handle_highlighted(id, secondary)
}

fn editornode3dgizmo_uget_handle_value[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoGetHandleValue(unsafe{&T(voidptr(inst))})
    id := unsafe{&i32(args[0])}
    secondary := unsafe{&bool(args[1])}
    *(&Variant(ret)) := i.virt_get_handle_value(id, secondary)
}

fn editornode3dgizmo_uset_handle[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoSetHandle(unsafe{&T(voidptr(inst))})
    id := unsafe{&i32(args[0])}
    secondary := unsafe{&bool(args[1])}
    camera := unsafe{&Camera3D(args[2])}
    point := unsafe{&Vector2(args[3])}
    i.virt_set_handle(id, secondary, camera, point)
}

fn editornode3dgizmo_ucommit_handle[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoCommitHandle(unsafe{&T(voidptr(inst))})
    id := unsafe{&i32(args[0])}
    secondary := unsafe{&bool(args[1])}
    restore := unsafe{&Variant(args[2])}
    cancel := unsafe{&bool(args[3])}
    i.virt_commit_handle(id, secondary, restore, cancel)
}

fn editornode3dgizmo_usubgizmos_intersect_ray[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoSubgizmosIntersectRay(unsafe{&T(voidptr(inst))})
    camera := unsafe{&Camera3D(args[0])}
    point := unsafe{&Vector2(args[1])}
    *(&i32(ret)) := i.virt_subgizmos_intersect_ray(camera, point)
}

fn editornode3dgizmo_usubgizmos_intersect_frustum[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoSubgizmosIntersectFrustum(unsafe{&T(voidptr(inst))})
    camera := unsafe{&Camera3D(args[0])}
    frustum := unsafe{&Array(args[1])}
    *(&PackedInt32Array(ret)) := i.virt_subgizmos_intersect_frustum(camera, frustum)
}

fn editornode3dgizmo_uset_subgizmo_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoSetSubgizmoTransform(unsafe{&T(voidptr(inst))})
    id := unsafe{&i32(args[0])}
    transform := unsafe{&Transform3D(args[1])}
    i.virt_set_subgizmo_transform(id, transform)
}

fn editornode3dgizmo_uget_subgizmo_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoGetSubgizmoTransform(unsafe{&T(voidptr(inst))})
    id := unsafe{&i32(args[0])}
    *(&Transform3D(ret)) := i.virt_get_subgizmo_transform(id)
}

fn editornode3dgizmo_ucommit_subgizmos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoCommitSubgizmos(unsafe{&T(voidptr(inst))})
    ids := unsafe{&PackedInt32Array(args[0])}
    restores := unsafe{&Array(args[1])}
    cancel := unsafe{&bool(args[2])}
    i.virt_commit_subgizmos(ids, restores, cancel)
}

fn editornode3dgizmoplugin_uhas_gizmo[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginHasGizmo(unsafe{&T(voidptr(inst))})
    for_node_3d := unsafe{&Node3D(args[0])}
    *(&bool(ret)) := i.virt_has_gizmo(for_node_3d)
}

fn editornode3dgizmoplugin_ucreate_gizmo[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginCreateGizmo(unsafe{&T(voidptr(inst))})
    for_node_3d := unsafe{&Node3D(args[0])}
    *(&EditorNode3DGizmo(ret)) := i.virt_create_gizmo(for_node_3d)
}

fn editornode3dgizmoplugin_uget_gizmo_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginGetGizmoName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_gizmo_name()
}

fn editornode3dgizmoplugin_uget_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginGetPriority(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_priority()
}

fn editornode3dgizmoplugin_ucan_be_hidden[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginCanBeHidden(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_can_be_hidden()
}

fn editornode3dgizmoplugin_uis_selectable_when_hidden[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginIsSelectableWhenHidden(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_selectable_when_hidden()
}

fn editornode3dgizmoplugin_uredraw[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginRedraw(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    i.virt_redraw(gizmo)
}

fn editornode3dgizmoplugin_uget_handle_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginGetHandleName(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    handle_id := unsafe{&i32(args[1])}
    secondary := unsafe{&bool(args[2])}
    *(&String(ret)) := i.virt_get_handle_name(gizmo, handle_id, secondary)
}

fn editornode3dgizmoplugin_uis_handle_highlighted[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginIsHandleHighlighted(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    handle_id := unsafe{&i32(args[1])}
    secondary := unsafe{&bool(args[2])}
    *(&bool(ret)) := i.virt_is_handle_highlighted(gizmo, handle_id, secondary)
}

fn editornode3dgizmoplugin_uget_handle_value[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginGetHandleValue(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    handle_id := unsafe{&i32(args[1])}
    secondary := unsafe{&bool(args[2])}
    *(&Variant(ret)) := i.virt_get_handle_value(gizmo, handle_id, secondary)
}

fn editornode3dgizmoplugin_uset_handle[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginSetHandle(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    handle_id := unsafe{&i32(args[1])}
    secondary := unsafe{&bool(args[2])}
    camera := unsafe{&Camera3D(args[3])}
    screen_pos := unsafe{&Vector2(args[4])}
    i.virt_set_handle(gizmo, handle_id, secondary, camera, screen_pos)
}

fn editornode3dgizmoplugin_ucommit_handle[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginCommitHandle(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    handle_id := unsafe{&i32(args[1])}
    secondary := unsafe{&bool(args[2])}
    restore := unsafe{&Variant(args[3])}
    cancel := unsafe{&bool(args[4])}
    i.virt_commit_handle(gizmo, handle_id, secondary, restore, cancel)
}

fn editornode3dgizmoplugin_usubgizmos_intersect_ray[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginSubgizmosIntersectRay(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    camera := unsafe{&Camera3D(args[1])}
    screen_pos := unsafe{&Vector2(args[2])}
    *(&i32(ret)) := i.virt_subgizmos_intersect_ray(gizmo, camera, screen_pos)
}

fn editornode3dgizmoplugin_usubgizmos_intersect_frustum[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginSubgizmosIntersectFrustum(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    camera := unsafe{&Camera3D(args[1])}
    frustum_planes := unsafe{&Array(args[2])}
    *(&PackedInt32Array(ret)) := i.virt_subgizmos_intersect_frustum(gizmo, camera, frustum_planes)
}

fn editornode3dgizmoplugin_uget_subgizmo_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginGetSubgizmoTransform(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    subgizmo_id := unsafe{&i32(args[1])}
    *(&Transform3D(ret)) := i.virt_get_subgizmo_transform(gizmo, subgizmo_id)
}

fn editornode3dgizmoplugin_uset_subgizmo_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginSetSubgizmoTransform(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    subgizmo_id := unsafe{&i32(args[1])}
    transform := unsafe{&Transform3D(args[2])}
    i.virt_set_subgizmo_transform(gizmo, subgizmo_id, transform)
}

fn editornode3dgizmoplugin_ucommit_subgizmos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorNode3DGizmoPluginCommitSubgizmos(unsafe{&T(voidptr(inst))})
    gizmo := unsafe{&EditorNode3DGizmo(args[0])}
    ids := unsafe{&PackedInt32Array(args[1])}
    restores := unsafe{&Array(args[2])}
    cancel := unsafe{&bool(args[3])}
    i.virt_commit_subgizmos(gizmo, ids, restores, cancel)
}

fn editorplugin_uforward_canvas_gui_input[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginForwardCanvasGuiInput(unsafe{&T(voidptr(inst))})
    event := unsafe{&InputEvent(args[0])}
    *(&bool(ret)) := i.virt_forward_canvas_gui_input(event)
}

fn editorplugin_uforward_canvas_draw_over_viewport[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginForwardCanvasDrawOverViewport(unsafe{&T(voidptr(inst))})
    viewport_control := unsafe{&Control(args[0])}
    i.virt_forward_canvas_draw_over_viewport(viewport_control)
}

fn editorplugin_uforward_canvas_force_draw_over_viewport[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginForwardCanvasForceDrawOverViewport(unsafe{&T(voidptr(inst))})
    viewport_control := unsafe{&Control(args[0])}
    i.virt_forward_canvas_force_draw_over_viewport(viewport_control)
}

fn editorplugin_uforward_3d_gui_input[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginForward3dGuiInput(unsafe{&T(voidptr(inst))})
    viewport_camera := unsafe{&Camera3D(args[0])}
    event := unsafe{&InputEvent(args[1])}
    *(&i32(ret)) := i.virt_forward_3d_gui_input(viewport_camera, event)
}

fn editorplugin_uforward_3d_draw_over_viewport[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginForward3dDrawOverViewport(unsafe{&T(voidptr(inst))})
    viewport_control := unsafe{&Control(args[0])}
    i.virt_forward_3d_draw_over_viewport(viewport_control)
}

fn editorplugin_uforward_3d_force_draw_over_viewport[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginForward3dForceDrawOverViewport(unsafe{&T(voidptr(inst))})
    viewport_control := unsafe{&Control(args[0])}
    i.virt_forward_3d_force_draw_over_viewport(viewport_control)
}

fn editorplugin_uget_plugin_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginGetPluginName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_plugin_name()
}

fn editorplugin_uget_plugin_icon[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginGetPluginIcon(unsafe{&T(voidptr(inst))})
    *(&Texture2D(ret)) := i.virt_get_plugin_icon()
}

fn editorplugin_uhas_main_screen[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginHasMainScreen(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_has_main_screen()
}

fn editorplugin_umake_visible[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginMakeVisible(unsafe{&T(voidptr(inst))})
    visible := unsafe{&bool(args[0])}
    i.virt_make_visible(visible)
}

fn editorplugin_uedit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginEdit(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    i.virt_edit(object)
}

fn editorplugin_uhandles[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginHandles(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    *(&bool(ret)) := i.virt_handles(object)
}

fn editorplugin_uget_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginGetState(unsafe{&T(voidptr(inst))})
    *(&Dictionary(ret)) := i.virt_get_state()
}

fn editorplugin_uset_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginSetState(unsafe{&T(voidptr(inst))})
    state := unsafe{&Dictionary(args[0])}
    i.virt_set_state(state)
}

fn editorplugin_uclear[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginClear(unsafe{&T(voidptr(inst))})
    i.virt_clear()
}

fn editorplugin_uget_unsaved_status[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginGetUnsavedStatus(unsafe{&T(voidptr(inst))})
    for_scene := unsafe{&String(args[0])}
    *(&String(ret)) := i.virt_get_unsaved_status(for_scene)
}

fn editorplugin_usave_external_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginSaveExternalData(unsafe{&T(voidptr(inst))})
    i.virt_save_external_data()
}

fn editorplugin_uapply_changes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginApplyChanges(unsafe{&T(voidptr(inst))})
    i.virt_apply_changes()
}

fn editorplugin_uget_breakpoints[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginGetBreakpoints(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_breakpoints()
}

fn editorplugin_uset_window_layout[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginSetWindowLayout(unsafe{&T(voidptr(inst))})
    configuration := unsafe{&ConfigFile(args[0])}
    i.virt_set_window_layout(configuration)
}

fn editorplugin_uget_window_layout[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginGetWindowLayout(unsafe{&T(voidptr(inst))})
    configuration := unsafe{&ConfigFile(args[0])}
    i.virt_get_window_layout(configuration)
}

fn editorplugin_ubuild[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginBuild(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_build()
}

fn editorplugin_uenable_plugin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginEnablePlugin(unsafe{&T(voidptr(inst))})
    i.virt_enable_plugin()
}

fn editorplugin_udisable_plugin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPluginDisablePlugin(unsafe{&T(voidptr(inst))})
    i.virt_disable_plugin()
}

fn editorproperty_uupdate_property[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPropertyUpdateProperty(unsafe{&T(voidptr(inst))})
    i.virt_update_property()
}

fn editorproperty_uset_read_only[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorPropertySetReadOnly(unsafe{&T(voidptr(inst))})
    read_only := unsafe{&bool(args[0])}
    i.virt_set_read_only(read_only)
}

fn editorresourceconversionplugin_uconverts_to[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourceConversionPluginConvertsTo(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_converts_to()
}

fn editorresourceconversionplugin_uhandles[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourceConversionPluginHandles(unsafe{&T(voidptr(inst))})
    resource := unsafe{&Resource(args[0])}
    *(&bool(ret)) := i.virt_handles(resource)
}

fn editorresourceconversionplugin_uconvert[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourceConversionPluginConvert(unsafe{&T(voidptr(inst))})
    resource := unsafe{&Resource(args[0])}
    *(&Resource(ret)) := i.virt_convert(resource)
}

fn editorresourcepicker_uset_create_options[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourcePickerSetCreateOptions(unsafe{&T(voidptr(inst))})
    menu_node := unsafe{&Object(args[0])}
    i.virt_set_create_options(menu_node)
}

fn editorresourcepicker_uhandle_menu_selected[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourcePickerHandleMenuSelected(unsafe{&T(voidptr(inst))})
    id := unsafe{&i32(args[0])}
    *(&bool(ret)) := i.virt_handle_menu_selected(id)
}

fn editorresourcepreviewgenerator_uhandles[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourcePreviewGeneratorHandles(unsafe{&T(voidptr(inst))})
    type_name := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_handles(type_name)
}

fn editorresourcepreviewgenerator_ugenerate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourcePreviewGeneratorGenerate(unsafe{&T(voidptr(inst))})
    resource := unsafe{&Resource(args[0])}
    size := unsafe{&Vector2i(args[1])}
    metadata := unsafe{&Dictionary(args[2])}
    *(&Texture2D(ret)) := i.virt_generate(resource, size, metadata)
}

fn editorresourcepreviewgenerator_ugenerate_from_path[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourcePreviewGeneratorGenerateFromPath(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    size := unsafe{&Vector2i(args[1])}
    metadata := unsafe{&Dictionary(args[2])}
    *(&Texture2D(ret)) := i.virt_generate_from_path(path, size, metadata)
}

fn editorresourcepreviewgenerator_ugenerate_small_preview_automatically[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourcePreviewGeneratorGenerateSmallPreviewAutomatically(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_generate_small_preview_automatically()
}

fn editorresourcepreviewgenerator_ucan_generate_small_preview[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourcePreviewGeneratorCanGenerateSmallPreview(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_can_generate_small_preview()
}

fn editorresourcetooltipplugin_uhandles[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourceTooltipPluginHandles(unsafe{&T(voidptr(inst))})
    type_name := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_handles(type_name)
}

fn editorresourcetooltipplugin_umake_tooltip_for_path[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorResourceTooltipPluginMakeTooltipForPath(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    metadata := unsafe{&Dictionary(args[1])}
    base := unsafe{&Control(args[2])}
    *(&Control(ret)) := i.virt_make_tooltip_for_path(path, metadata, base)
}

fn editorsceneformatimporter_uget_import_flags[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorSceneFormatImporterGetImportFlags(unsafe{&T(voidptr(inst))})
    *(&u32(ret)) := i.virt_get_import_flags()
}

fn editorsceneformatimporter_uget_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorSceneFormatImporterGetExtensions(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_extensions()
}

fn editorsceneformatimporter_uimport_scene[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorSceneFormatImporterImportScene(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    flags := unsafe{&u32(args[1])}
    options := unsafe{&Dictionary(args[2])}
    *(&Object(ret)) := i.virt_import_scene(path, flags, options)
}

fn editorsceneformatimporter_uget_import_options[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorSceneFormatImporterGetImportOptions(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    i.virt_get_import_options(path)
}

fn editorsceneformatimporter_uget_option_visibility[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorSceneFormatImporterGetOptionVisibility(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    for_animation := unsafe{&bool(args[1])}
    option := unsafe{&String(args[2])}
    *(&Variant(ret)) := i.virt_get_option_visibility(path, for_animation, option)
}

fn editorscenepostimport_upost_import[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPostImport(unsafe{&T(voidptr(inst))})
    scene := unsafe{&Node(args[0])}
    *(&Object(ret)) := i.virt_post_import(scene)
}

fn editorscenepostimportplugin_uget_internal_import_options[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPluginGetInternalImportOptions(unsafe{&T(voidptr(inst))})
    category := unsafe{&i32(args[0])}
    i.virt_get_internal_import_options(category)
}

fn editorscenepostimportplugin_uget_internal_option_visibility[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPluginGetInternalOptionVisibility(unsafe{&T(voidptr(inst))})
    category := unsafe{&i32(args[0])}
    for_animation := unsafe{&bool(args[1])}
    option := unsafe{&String(args[2])}
    *(&Variant(ret)) := i.virt_get_internal_option_visibility(category, for_animation, option)
}

fn editorscenepostimportplugin_uget_internal_option_update_view_required[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPluginGetInternalOptionUpdateViewRequired(unsafe{&T(voidptr(inst))})
    category := unsafe{&i32(args[0])}
    option := unsafe{&String(args[1])}
    *(&Variant(ret)) := i.virt_get_internal_option_update_view_required(category, option)
}

fn editorscenepostimportplugin_uinternal_process[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPluginInternalProcess(unsafe{&T(voidptr(inst))})
    category := unsafe{&i32(args[0])}
    base_node := unsafe{&Node(args[1])}
    node := unsafe{&Node(args[2])}
    resource := unsafe{&Resource(args[3])}
    i.virt_internal_process(category, base_node, node, resource)
}

fn editorscenepostimportplugin_uget_import_options[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPluginGetImportOptions(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    i.virt_get_import_options(path)
}

fn editorscenepostimportplugin_uget_option_visibility[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPluginGetOptionVisibility(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    for_animation := unsafe{&bool(args[1])}
    option := unsafe{&String(args[2])}
    *(&Variant(ret)) := i.virt_get_option_visibility(path, for_animation, option)
}

fn editorscenepostimportplugin_upre_process[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPluginPreProcess(unsafe{&T(voidptr(inst))})
    scene := unsafe{&Node(args[0])}
    i.virt_pre_process(scene)
}

fn editorscenepostimportplugin_upost_process[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScenePostImportPluginPostProcess(unsafe{&T(voidptr(inst))})
    scene := unsafe{&Node(args[0])}
    i.virt_post_process(scene)
}

fn editorscript_urun[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorScriptRun(unsafe{&T(voidptr(inst))})
    i.virt_run()
}

fn editorsyntaxhighlighter_uget_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorSyntaxHighlighterGetName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_name()
}

fn editorsyntaxhighlighter_uget_supported_languages[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorSyntaxHighlighterGetSupportedLanguages(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_supported_languages()
}

fn editortranslationparserplugin_uparse_file[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorTranslationParserPluginParseFile(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    msgids := unsafe{&Array(args[1])}
    msgids_context_plural := unsafe{&Array(args[2])}
    i.virt_parse_file(path, msgids, msgids_context_plural)
}

fn editortranslationparserplugin_uget_recognized_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorTranslationParserPluginGetRecognizedExtensions(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_recognized_extensions()
}

fn editorvcsinterface_uinitialize[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceInitialize(unsafe{&T(voidptr(inst))})
    project_path := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_initialize(project_path)
}

fn editorvcsinterface_uset_credentials[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceSetCredentials(unsafe{&T(voidptr(inst))})
    username := unsafe{&String(args[0])}
    password := unsafe{&String(args[1])}
    ssh_public_key_path := unsafe{&String(args[2])}
    ssh_private_key_path := unsafe{&String(args[3])}
    ssh_passphrase := unsafe{&String(args[4])}
    i.virt_set_credentials(username, password, ssh_public_key_path, ssh_private_key_path, ssh_passphrase)
}

fn editorvcsinterface_uget_modified_files_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceGetModifiedFilesData(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_modified_files_data()
}

fn editorvcsinterface_ustage_file[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceStageFile(unsafe{&T(voidptr(inst))})
    file_path := unsafe{&String(args[0])}
    i.virt_stage_file(file_path)
}

fn editorvcsinterface_uunstage_file[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceUnstageFile(unsafe{&T(voidptr(inst))})
    file_path := unsafe{&String(args[0])}
    i.virt_unstage_file(file_path)
}

fn editorvcsinterface_udiscard_file[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceDiscardFile(unsafe{&T(voidptr(inst))})
    file_path := unsafe{&String(args[0])}
    i.virt_discard_file(file_path)
}

fn editorvcsinterface_ucommit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceCommit(unsafe{&T(voidptr(inst))})
    msg := unsafe{&String(args[0])}
    i.virt_commit(msg)
}

fn editorvcsinterface_uget_diff[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceGetDiff(unsafe{&T(voidptr(inst))})
    identifier := unsafe{&String(args[0])}
    area := unsafe{&i32(args[1])}
    *(&Array(ret)) := i.virt_get_diff(identifier, area)
}

fn editorvcsinterface_ushut_down[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceShutDown(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_shut_down()
}

fn editorvcsinterface_uget_vcs_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceGetVcsName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_vcs_name()
}

fn editorvcsinterface_uget_previous_commits[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceGetPreviousCommits(unsafe{&T(voidptr(inst))})
    max_commits := unsafe{&i32(args[0])}
    *(&Array(ret)) := i.virt_get_previous_commits(max_commits)
}

fn editorvcsinterface_uget_branch_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceGetBranchList(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_branch_list()
}

fn editorvcsinterface_uget_remotes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceGetRemotes(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_remotes()
}

fn editorvcsinterface_ucreate_branch[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceCreateBranch(unsafe{&T(voidptr(inst))})
    branch_name := unsafe{&String(args[0])}
    i.virt_create_branch(branch_name)
}

fn editorvcsinterface_uremove_branch[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceRemoveBranch(unsafe{&T(voidptr(inst))})
    branch_name := unsafe{&String(args[0])}
    i.virt_remove_branch(branch_name)
}

fn editorvcsinterface_ucreate_remote[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceCreateRemote(unsafe{&T(voidptr(inst))})
    remote_name := unsafe{&String(args[0])}
    remote_url := unsafe{&String(args[1])}
    i.virt_create_remote(remote_name, remote_url)
}

fn editorvcsinterface_uremove_remote[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceRemoveRemote(unsafe{&T(voidptr(inst))})
    remote_name := unsafe{&String(args[0])}
    i.virt_remove_remote(remote_name)
}

fn editorvcsinterface_uget_current_branch_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceGetCurrentBranchName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_current_branch_name()
}

fn editorvcsinterface_ucheckout_branch[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceCheckoutBranch(unsafe{&T(voidptr(inst))})
    branch_name := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_checkout_branch(branch_name)
}

fn editorvcsinterface_upull[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfacePull(unsafe{&T(voidptr(inst))})
    remote := unsafe{&String(args[0])}
    i.virt_pull(remote)
}

fn editorvcsinterface_upush[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfacePush(unsafe{&T(voidptr(inst))})
    remote := unsafe{&String(args[0])}
    force := unsafe{&bool(args[1])}
    i.virt_push(remote, force)
}

fn editorvcsinterface_ufetch[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceFetch(unsafe{&T(voidptr(inst))})
    remote := unsafe{&String(args[0])}
    i.virt_fetch(remote)
}

fn editorvcsinterface_uget_line_diff[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEditorVCSInterfaceGetLineDiff(unsafe{&T(voidptr(inst))})
    file_path := unsafe{&String(args[0])}
    text := unsafe{&String(args[1])}
    *(&Array(ret)) := i.virt_get_line_diff(file_path, text)
}

fn engineprofiler_utoggle[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEngineProfilerToggle(unsafe{&T(voidptr(inst))})
    enable := unsafe{&bool(args[0])}
    options := unsafe{&Array(args[1])}
    i.virt_toggle(enable, options)
}

fn engineprofiler_uadd_frame[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEngineProfilerAddFrame(unsafe{&T(voidptr(inst))})
    data := unsafe{&Array(args[0])}
    i.virt_add_frame(data)
}

fn engineprofiler_utick[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IEngineProfilerTick(unsafe{&T(voidptr(inst))})
    frame_time := unsafe{&f64(args[0])}
    process_time := unsafe{&f64(args[1])}
    physics_time := unsafe{&f64(args[2])}
    physics_frame_time := unsafe{&f64(args[3])}
    i.virt_tick(frame_time, process_time, physics_time, physics_frame_time)
}

fn gltfdocumentextension_uimport_preflight[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionImportPreflight(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    extensions := unsafe{&PackedStringArray(args[1])}
    *(&GDError(ret)) := i.virt_import_preflight(state, extensions)
}

fn gltfdocumentextension_uget_supported_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionGetSupportedExtensions(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_supported_extensions()
}

fn gltfdocumentextension_uparse_node_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionParseNodeExtensions(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    gltf_node := unsafe{&GLTFNode(args[1])}
    extensions := unsafe{&Dictionary(args[2])}
    *(&GDError(ret)) := i.virt_parse_node_extensions(state, gltf_node, extensions)
}

fn gltfdocumentextension_uparse_image_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionParseImageData(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    image_data := unsafe{&PackedByteArray(args[1])}
    mime_type := unsafe{&String(args[2])}
    ret_image := unsafe{&Image(args[3])}
    *(&GDError(ret)) := i.virt_parse_image_data(state, image_data, mime_type, ret_image)
}

fn gltfdocumentextension_uget_image_file_extension[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionGetImageFileExtension(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_image_file_extension()
}

fn gltfdocumentextension_uparse_texture_json[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionParseTextureJson(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    texture_json := unsafe{&Dictionary(args[1])}
    ret_gltf_texture := unsafe{&GLTFTexture(args[2])}
    *(&GDError(ret)) := i.virt_parse_texture_json(state, texture_json, ret_gltf_texture)
}

fn gltfdocumentextension_ugenerate_scene_node[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionGenerateSceneNode(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    gltf_node := unsafe{&GLTFNode(args[1])}
    scene_parent := unsafe{&Node(args[2])}
    *(&Node3D(ret)) := i.virt_generate_scene_node(state, gltf_node, scene_parent)
}

fn gltfdocumentextension_uimport_post_parse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionImportPostParse(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    *(&GDError(ret)) := i.virt_import_post_parse(state)
}

fn gltfdocumentextension_uimport_node[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionImportNode(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    gltf_node := unsafe{&GLTFNode(args[1])}
    json := unsafe{&Dictionary(args[2])}
    node := unsafe{&Node(args[3])}
    *(&GDError(ret)) := i.virt_import_node(state, gltf_node, json, node)
}

fn gltfdocumentextension_uimport_post[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionImportPost(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    root := unsafe{&Node(args[1])}
    *(&GDError(ret)) := i.virt_import_post(state, root)
}

fn gltfdocumentextension_uexport_preflight[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionExportPreflight(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    root := unsafe{&Node(args[1])}
    *(&GDError(ret)) := i.virt_export_preflight(state, root)
}

fn gltfdocumentextension_uconvert_scene_node[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionConvertSceneNode(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    gltf_node := unsafe{&GLTFNode(args[1])}
    scene_node := unsafe{&Node(args[2])}
    i.virt_convert_scene_node(state, gltf_node, scene_node)
}

fn gltfdocumentextension_uexport_preserialize[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionExportPreserialize(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    *(&GDError(ret)) := i.virt_export_preserialize(state)
}

fn gltfdocumentextension_uget_saveable_image_formats[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionGetSaveableImageFormats(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_saveable_image_formats()
}

fn gltfdocumentextension_userialize_image_to_bytes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionSerializeImageToBytes(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    image := unsafe{&Image(args[1])}
    image_dict := unsafe{&Dictionary(args[2])}
    image_format := unsafe{&String(args[3])}
    lossy_quality := unsafe{&f64(args[4])}
    *(&PackedByteArray(ret)) := i.virt_serialize_image_to_bytes(state, image, image_dict, image_format, lossy_quality)
}

fn gltfdocumentextension_usave_image_at_path[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionSaveImageAtPath(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    image := unsafe{&Image(args[1])}
    file_path := unsafe{&String(args[2])}
    image_format := unsafe{&String(args[3])}
    lossy_quality := unsafe{&f64(args[4])}
    *(&GDError(ret)) := i.virt_save_image_at_path(state, image, file_path, image_format, lossy_quality)
}

fn gltfdocumentextension_userialize_texture_json[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionSerializeTextureJson(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    texture_json := unsafe{&Dictionary(args[1])}
    gltf_texture := unsafe{&GLTFTexture(args[2])}
    image_format := unsafe{&String(args[3])}
    *(&GDError(ret)) := i.virt_serialize_texture_json(state, texture_json, gltf_texture, image_format)
}

fn gltfdocumentextension_uexport_node[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionExportNode(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    gltf_node := unsafe{&GLTFNode(args[1])}
    json := unsafe{&Dictionary(args[2])}
    node := unsafe{&Node(args[3])}
    *(&GDError(ret)) := i.virt_export_node(state, gltf_node, json, node)
}

fn gltfdocumentextension_uexport_post[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGLTFDocumentExtensionExportPost(unsafe{&T(voidptr(inst))})
    state := unsafe{&GLTFState(args[0])}
    *(&GDError(ret)) := i.virt_export_post(state)
}

fn graphedit_uis_in_input_hotzone[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGraphEditIsInInputHotzone(unsafe{&T(voidptr(inst))})
    in_node := unsafe{&Object(args[0])}
    in_port := unsafe{&i32(args[1])}
    mouse_position := unsafe{&Vector2(args[2])}
    *(&bool(ret)) := i.virt_is_in_input_hotzone(in_node, in_port, mouse_position)
}

fn graphedit_uis_in_output_hotzone[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGraphEditIsInOutputHotzone(unsafe{&T(voidptr(inst))})
    in_node := unsafe{&Object(args[0])}
    in_port := unsafe{&i32(args[1])}
    mouse_position := unsafe{&Vector2(args[2])}
    *(&bool(ret)) := i.virt_is_in_output_hotzone(in_node, in_port, mouse_position)
}

fn graphedit_uget_connection_line[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGraphEditGetConnectionLine(unsafe{&T(voidptr(inst))})
    from_position := unsafe{&Vector2(args[0])}
    to_position := unsafe{&Vector2(args[1])}
    *(&PackedVector2Array(ret)) := i.virt_get_connection_line(from_position, to_position)
}

fn graphedit_uis_node_hover_valid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGraphEditIsNodeHoverValid(unsafe{&T(voidptr(inst))})
    from_node := unsafe{&StringName(args[0])}
    from_port := unsafe{&i32(args[1])}
    to_node := unsafe{&StringName(args[2])}
    to_port := unsafe{&i32(args[3])}
    *(&bool(ret)) := i.virt_is_node_hover_valid(from_node, from_port, to_node, to_port)
}

fn graphnode_udraw_port[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IGraphNodeDrawPort(unsafe{&T(voidptr(inst))})
    slot_index := unsafe{&i32(args[0])}
    position := unsafe{&Vector2i(args[1])}
    left := unsafe{&bool(args[2])}
    color := unsafe{&Color(args[3])}
    i.virt_draw_port(slot_index, position, left, color)
}

fn imageformatloaderextension_uget_recognized_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IImageFormatLoaderExtensionGetRecognizedExtensions(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_recognized_extensions()
}

fn imageformatloaderextension_uload_image[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IImageFormatLoaderExtensionLoadImage(unsafe{&T(voidptr(inst))})
    image := unsafe{&Image(args[0])}
    fileaccess := unsafe{&FileAccess(args[1])}
    flags := unsafe{&ImageFormatLoaderLoaderFlags(args[2])}
    scale := unsafe{&f64(args[3])}
    *(&GDError(ret)) := i.virt_load_image(image, fileaccess, flags, scale)
}

fn mainloop_uinitialize[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMainLoopInitialize(unsafe{&T(voidptr(inst))})
    i.virt_initialize()
}

fn mainloop_uphysics_process[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMainLoopPhysicsProcess(unsafe{&T(voidptr(inst))})
    delta := unsafe{&f64(args[0])}
    *(&bool(ret)) := i.virt_physics_process(delta)
}

fn mainloop_uprocess[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMainLoopProcess(unsafe{&T(voidptr(inst))})
    delta := unsafe{&f64(args[0])}
    *(&bool(ret)) := i.virt_process(delta)
}

fn mainloop_ufinalize[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMainLoopFinalize(unsafe{&T(voidptr(inst))})
    i.virt_finalize()
}

fn material_uget_shader_rid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMaterialGetShaderRid(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_get_shader_rid()
}

fn material_uget_shader_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMaterialGetShaderMode(unsafe{&T(voidptr(inst))})
    *(&ShaderMode(ret)) := i.virt_get_shader_mode()
}

fn material_ucan_do_next_pass[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMaterialCanDoNextPass(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_can_do_next_pass()
}

fn material_ucan_use_render_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMaterialCanUseRenderPriority(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_can_use_render_priority()
}

fn mesh_uget_surface_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshGetSurfaceCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_surface_count()
}

fn mesh_usurface_get_array_len[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceGetArrayLen(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&i32(ret)) := i.virt_surface_get_array_len(index)
}

fn mesh_usurface_get_array_index_len[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceGetArrayIndexLen(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&i32(ret)) := i.virt_surface_get_array_index_len(index)
}

fn mesh_usurface_get_arrays[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceGetArrays(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&Array(ret)) := i.virt_surface_get_arrays(index)
}

fn mesh_usurface_get_blend_shape_arrays[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceGetBlendShapeArrays(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&Array(ret)) := i.virt_surface_get_blend_shape_arrays(index)
}

fn mesh_usurface_get_lods[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceGetLods(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&Dictionary(ret)) := i.virt_surface_get_lods(index)
}

fn mesh_usurface_get_format[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceGetFormat(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&u32(ret)) := i.virt_surface_get_format(index)
}

fn mesh_usurface_get_primitive_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceGetPrimitiveType(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&u32(ret)) := i.virt_surface_get_primitive_type(index)
}

fn mesh_usurface_set_material[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceSetMaterial(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    material := unsafe{&Material(args[1])}
    i.virt_surface_set_material(index, material)
}

fn mesh_usurface_get_material[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSurfaceGetMaterial(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&Material(ret)) := i.virt_surface_get_material(index)
}

fn mesh_uget_blend_shape_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshGetBlendShapeCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_blend_shape_count()
}

fn mesh_uget_blend_shape_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshGetBlendShapeName(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&StringName(ret)) := i.virt_get_blend_shape_name(index)
}

fn mesh_uset_blend_shape_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshSetBlendShapeName(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    name := unsafe{&StringName(args[1])}
    i.virt_set_blend_shape_name(index, name)
}

fn mesh_uget_aabb[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMeshGetAabb(unsafe{&T(voidptr(inst))})
    *(&AABB(ret)) := i.virt_get_aabb()
}

fn moviewriter_uget_audio_mix_rate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMovieWriterGetAudioMixRate(unsafe{&T(voidptr(inst))})
    *(&u32(ret)) := i.virt_get_audio_mix_rate()
}

fn moviewriter_uget_audio_speaker_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMovieWriterGetAudioSpeakerMode(unsafe{&T(voidptr(inst))})
    *(&AudioServerSpeakerMode(ret)) := i.virt_get_audio_speaker_mode()
}

fn moviewriter_uhandles_file[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMovieWriterHandlesFile(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_handles_file(path)
}

fn moviewriter_uwrite_begin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMovieWriterWriteBegin(unsafe{&T(voidptr(inst))})
    movie_size := unsafe{&Vector2i(args[0])}
    fps := unsafe{&u32(args[1])}
    base_path := unsafe{&String(args[2])}
    *(&GDError(ret)) := i.virt_write_begin(movie_size, fps, base_path)
}

fn moviewriter_uwrite_frame[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMovieWriterWriteFrame(unsafe{&T(voidptr(inst))})
    frame_image := unsafe{&Image(args[0])}
    audio_frame_block := unsafe{&voidptr(args[1])}
    *(&GDError(ret)) := i.virt_write_frame(frame_image, audio_frame_block)
}

fn moviewriter_uwrite_end[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMovieWriterWriteEnd(unsafe{&T(voidptr(inst))})
    i.virt_write_end()
}

fn multiplayerapiextension_upoll[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionPoll(unsafe{&T(voidptr(inst))})
    *(&GDError(ret)) := i.virt_poll()
}

fn multiplayerapiextension_uset_multiplayer_peer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionSetMultiplayerPeer(unsafe{&T(voidptr(inst))})
    multiplayer_peer := unsafe{&MultiplayerPeer(args[0])}
    i.virt_set_multiplayer_peer(multiplayer_peer)
}

fn multiplayerapiextension_uget_multiplayer_peer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionGetMultiplayerPeer(unsafe{&T(voidptr(inst))})
    *(&MultiplayerPeer(ret)) := i.virt_get_multiplayer_peer()
}

fn multiplayerapiextension_uget_unique_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionGetUniqueId(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_unique_id()
}

fn multiplayerapiextension_uget_peer_ids[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionGetPeerIds(unsafe{&T(voidptr(inst))})
    *(&PackedInt32Array(ret)) := i.virt_get_peer_ids()
}

fn multiplayerapiextension_urpc[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionRpc(unsafe{&T(voidptr(inst))})
    peer := unsafe{&i32(args[0])}
    object := unsafe{&Object(args[1])}
    method := unsafe{&StringName(args[2])}
    gdargs := unsafe{&Array(args[3])}
    *(&GDError(ret)) := i.virt_rpc(peer, object, method, gdargs)
}

fn multiplayerapiextension_uget_remote_sender_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionGetRemoteSenderId(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_remote_sender_id()
}

fn multiplayerapiextension_uobject_configuration_add[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionObjectConfigurationAdd(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    configuration := unsafe{&Variant(args[1])}
    *(&GDError(ret)) := i.virt_object_configuration_add(object, configuration)
}

fn multiplayerapiextension_uobject_configuration_remove[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerAPIExtensionObjectConfigurationRemove(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    configuration := unsafe{&Variant(args[1])}
    *(&GDError(ret)) := i.virt_object_configuration_remove(object, configuration)
}

fn multiplayerpeerextension_uget_packet[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetPacket(unsafe{&T(voidptr(inst))})
    r_buffer := unsafe{&&&u8 (args[0])}
    r_buffer_size := unsafe{&&i32(args[1])}
    *(&GDError(ret)) := i.virt_get_packet(r_buffer, r_buffer_size)
}

fn multiplayerpeerextension_uput_packet[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionPutPacket(unsafe{&T(voidptr(inst))})
    p_buffer := unsafe{&&u8(args[0])}
    p_buffer_size := unsafe{&i32(args[1])}
    *(&GDError(ret)) := i.virt_put_packet(p_buffer, p_buffer_size)
}

fn multiplayerpeerextension_uget_available_packet_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetAvailablePacketCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_available_packet_count()
}

fn multiplayerpeerextension_uget_max_packet_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetMaxPacketSize(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_max_packet_size()
}

fn multiplayerpeerextension_uget_packet_script[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetPacketScript(unsafe{&T(voidptr(inst))})
    *(&PackedByteArray(ret)) := i.virt_get_packet_script()
}

fn multiplayerpeerextension_uput_packet_script[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionPutPacketScript(unsafe{&T(voidptr(inst))})
    p_buffer := unsafe{&PackedByteArray(args[0])}
    *(&GDError(ret)) := i.virt_put_packet_script(p_buffer)
}

fn multiplayerpeerextension_uget_packet_channel[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetPacketChannel(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_packet_channel()
}

fn multiplayerpeerextension_uget_packet_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetPacketMode(unsafe{&T(voidptr(inst))})
    *(&MultiplayerPeerTransferMode(ret)) := i.virt_get_packet_mode()
}

fn multiplayerpeerextension_uset_transfer_channel[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionSetTransferChannel(unsafe{&T(voidptr(inst))})
    p_channel := unsafe{&i32(args[0])}
    i.virt_set_transfer_channel(p_channel)
}

fn multiplayerpeerextension_uget_transfer_channel[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetTransferChannel(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_transfer_channel()
}

fn multiplayerpeerextension_uset_transfer_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionSetTransferMode(unsafe{&T(voidptr(inst))})
    p_mode := unsafe{&MultiplayerPeerTransferMode(args[0])}
    i.virt_set_transfer_mode(p_mode)
}

fn multiplayerpeerextension_uget_transfer_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetTransferMode(unsafe{&T(voidptr(inst))})
    *(&MultiplayerPeerTransferMode(ret)) := i.virt_get_transfer_mode()
}

fn multiplayerpeerextension_uset_target_peer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionSetTargetPeer(unsafe{&T(voidptr(inst))})
    p_peer := unsafe{&i32(args[0])}
    i.virt_set_target_peer(p_peer)
}

fn multiplayerpeerextension_uget_packet_peer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetPacketPeer(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_packet_peer()
}

fn multiplayerpeerextension_uis_server[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionIsServer(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_server()
}

fn multiplayerpeerextension_upoll[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionPoll(unsafe{&T(voidptr(inst))})
    i.virt_poll()
}

fn multiplayerpeerextension_uclose[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionClose(unsafe{&T(voidptr(inst))})
    i.virt_close()
}

fn multiplayerpeerextension_udisconnect_peer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionDisconnectPeer(unsafe{&T(voidptr(inst))})
    p_peer := unsafe{&i32(args[0])}
    p_force := unsafe{&bool(args[1])}
    i.virt_disconnect_peer(p_peer, p_force)
}

fn multiplayerpeerextension_uget_unique_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetUniqueId(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_unique_id()
}

fn multiplayerpeerextension_uset_refuse_new_connections[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionSetRefuseNewConnections(unsafe{&T(voidptr(inst))})
    p_enable := unsafe{&bool(args[0])}
    i.virt_set_refuse_new_connections(p_enable)
}

fn multiplayerpeerextension_uis_refusing_new_connections[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionIsRefusingNewConnections(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_refusing_new_connections()
}

fn multiplayerpeerextension_uis_server_relay_supported[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionIsServerRelaySupported(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_server_relay_supported()
}

fn multiplayerpeerextension_uget_connection_status[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IMultiplayerPeerExtensionGetConnectionStatus(unsafe{&T(voidptr(inst))})
    *(&MultiplayerPeerConnectionStatus(ret)) := i.virt_get_connection_status()
}

fn node_uprocess[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeProcess(unsafe{&T(voidptr(inst))})
    delta := unsafe{&f64(args[0])}
    i.virt_process(delta)
}

fn node_uphysics_process[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodePhysicsProcess(unsafe{&T(voidptr(inst))})
    delta := unsafe{&f64(args[0])}
    i.virt_physics_process(delta)
}

fn node_uenter_tree[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeEnterTree(unsafe{&T(voidptr(inst))})
    i.virt_enter_tree()
}

fn node_uexit_tree[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeExitTree(unsafe{&T(voidptr(inst))})
    i.virt_exit_tree()
}

fn node_uready[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeReady(unsafe{&T(voidptr(inst))})
    i.virt_ready()
}

fn node_uget_configuration_warnings[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeGetConfigurationWarnings(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_configuration_warnings()
}

fn node_uinput[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeInput(unsafe{&T(voidptr(inst))})
    event := unsafe{&InputEvent(args[0])}
    i.virt_input(event)
}

fn node_ushortcut_input[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeShortcutInput(unsafe{&T(voidptr(inst))})
    event := unsafe{&InputEvent(args[0])}
    i.virt_shortcut_input(event)
}

fn node_uunhandled_input[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeUnhandledInput(unsafe{&T(voidptr(inst))})
    event := unsafe{&InputEvent(args[0])}
    i.virt_unhandled_input(event)
}

fn node_uunhandled_key_input[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &INodeUnhandledKeyInput(unsafe{&T(voidptr(inst))})
    event := unsafe{&InputEvent(args[0])}
    i.virt_unhandled_key_input(event)
}

fn openxrextensionwrapperextension_uget_requested_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionGetRequestedExtensions(unsafe{&T(voidptr(inst))})
    *(&Dictionary(ret)) := i.virt_get_requested_extensions()
}

fn openxrextensionwrapperextension_uset_system_properties_and_get_next_pointer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionSetSystemPropertiesAndGetNextPointer(unsafe{&T(voidptr(inst))})
    next_pointer := unsafe{&voidptr(args[0])}
    *(&u64(ret)) := i.virt_set_system_properties_and_get_next_pointer(next_pointer)
}

fn openxrextensionwrapperextension_uset_instance_create_info_and_get_next_pointer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionSetInstanceCreateInfoAndGetNextPointer(unsafe{&T(voidptr(inst))})
    next_pointer := unsafe{&voidptr(args[0])}
    *(&u64(ret)) := i.virt_set_instance_create_info_and_get_next_pointer(next_pointer)
}

fn openxrextensionwrapperextension_uset_session_create_and_get_next_pointer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionSetSessionCreateAndGetNextPointer(unsafe{&T(voidptr(inst))})
    next_pointer := unsafe{&voidptr(args[0])}
    *(&u64(ret)) := i.virt_set_session_create_and_get_next_pointer(next_pointer)
}

fn openxrextensionwrapperextension_uset_swapchain_create_info_and_get_next_pointer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionSetSwapchainCreateInfoAndGetNextPointer(unsafe{&T(voidptr(inst))})
    next_pointer := unsafe{&voidptr(args[0])}
    *(&u64(ret)) := i.virt_set_swapchain_create_info_and_get_next_pointer(next_pointer)
}

fn openxrextensionwrapperextension_uon_register_metadata[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnRegisterMetadata(unsafe{&T(voidptr(inst))})
    i.virt_on_register_metadata()
}

fn openxrextensionwrapperextension_uon_before_instance_created[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnBeforeInstanceCreated(unsafe{&T(voidptr(inst))})
    i.virt_on_before_instance_created()
}

fn openxrextensionwrapperextension_uon_instance_created[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnInstanceCreated(unsafe{&T(voidptr(inst))})
    instance := unsafe{&u64(args[0])}
    i.virt_on_instance_created(instance)
}

fn openxrextensionwrapperextension_uon_instance_destroyed[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnInstanceDestroyed(unsafe{&T(voidptr(inst))})
    i.virt_on_instance_destroyed()
}

fn openxrextensionwrapperextension_uon_session_created[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnSessionCreated(unsafe{&T(voidptr(inst))})
    session := unsafe{&u64(args[0])}
    i.virt_on_session_created(session)
}

fn openxrextensionwrapperextension_uon_process[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnProcess(unsafe{&T(voidptr(inst))})
    i.virt_on_process()
}

fn openxrextensionwrapperextension_uon_pre_render[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnPreRender(unsafe{&T(voidptr(inst))})
    i.virt_on_pre_render()
}

fn openxrextensionwrapperextension_uon_session_destroyed[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnSessionDestroyed(unsafe{&T(voidptr(inst))})
    i.virt_on_session_destroyed()
}

fn openxrextensionwrapperextension_uon_state_idle[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnStateIdle(unsafe{&T(voidptr(inst))})
    i.virt_on_state_idle()
}

fn openxrextensionwrapperextension_uon_state_ready[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnStateReady(unsafe{&T(voidptr(inst))})
    i.virt_on_state_ready()
}

fn openxrextensionwrapperextension_uon_state_synchronized[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnStateSynchronized(unsafe{&T(voidptr(inst))})
    i.virt_on_state_synchronized()
}

fn openxrextensionwrapperextension_uon_state_visible[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnStateVisible(unsafe{&T(voidptr(inst))})
    i.virt_on_state_visible()
}

fn openxrextensionwrapperextension_uon_state_focused[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnStateFocused(unsafe{&T(voidptr(inst))})
    i.virt_on_state_focused()
}

fn openxrextensionwrapperextension_uon_state_stopping[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnStateStopping(unsafe{&T(voidptr(inst))})
    i.virt_on_state_stopping()
}

fn openxrextensionwrapperextension_uon_state_loss_pending[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnStateLossPending(unsafe{&T(voidptr(inst))})
    i.virt_on_state_loss_pending()
}

fn openxrextensionwrapperextension_uon_state_exiting[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnStateExiting(unsafe{&T(voidptr(inst))})
    i.virt_on_state_exiting()
}

fn openxrextensionwrapperextension_uon_event_polled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IOpenXRExtensionWrapperExtensionOnEventPolled(unsafe{&T(voidptr(inst))})
    event := unsafe{&voidptr(args[0])}
    *(&bool(ret)) := i.virt_on_event_polled(event)
}

fn packetpeerextension_uget_packet[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPacketPeerExtensionGetPacket(unsafe{&T(voidptr(inst))})
    r_buffer := unsafe{&&&u8 (args[0])}
    r_buffer_size := unsafe{&&i32(args[1])}
    *(&GDError(ret)) := i.virt_get_packet(r_buffer, r_buffer_size)
}

fn packetpeerextension_uput_packet[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPacketPeerExtensionPutPacket(unsafe{&T(voidptr(inst))})
    p_buffer := unsafe{&&u8(args[0])}
    p_buffer_size := unsafe{&i32(args[1])}
    *(&GDError(ret)) := i.virt_put_packet(p_buffer, p_buffer_size)
}

fn packetpeerextension_uget_available_packet_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPacketPeerExtensionGetAvailablePacketCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_available_packet_count()
}

fn packetpeerextension_uget_max_packet_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPacketPeerExtensionGetMaxPacketSize(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_max_packet_size()
}

fn physicalbone3d_uintegrate_forces[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicalBone3DIntegrateForces(unsafe{&T(voidptr(inst))})
    state := unsafe{&PhysicsDirectBodyState3D(args[0])}
    i.virt_integrate_forces(state)
}

fn physicsdirectbodystate2dextension_uget_total_gravity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetTotalGravity(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_total_gravity()
}

fn physicsdirectbodystate2dextension_uget_total_linear_damp[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetTotalLinearDamp(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_total_linear_damp()
}

fn physicsdirectbodystate2dextension_uget_total_angular_damp[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetTotalAngularDamp(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_total_angular_damp()
}

fn physicsdirectbodystate2dextension_uget_center_of_mass[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetCenterOfMass(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_center_of_mass()
}

fn physicsdirectbodystate2dextension_uget_center_of_mass_local[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetCenterOfMassLocal(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_center_of_mass_local()
}

fn physicsdirectbodystate2dextension_uget_inverse_mass[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetInverseMass(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_inverse_mass()
}

fn physicsdirectbodystate2dextension_uget_inverse_inertia[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetInverseInertia(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_inverse_inertia()
}

fn physicsdirectbodystate2dextension_uset_linear_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionSetLinearVelocity(unsafe{&T(voidptr(inst))})
    velocity := unsafe{&Vector2(args[0])}
    i.virt_set_linear_velocity(velocity)
}

fn physicsdirectbodystate2dextension_uget_linear_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetLinearVelocity(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_linear_velocity()
}

fn physicsdirectbodystate2dextension_uset_angular_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionSetAngularVelocity(unsafe{&T(voidptr(inst))})
    velocity := unsafe{&f64(args[0])}
    i.virt_set_angular_velocity(velocity)
}

fn physicsdirectbodystate2dextension_uget_angular_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetAngularVelocity(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_angular_velocity()
}

fn physicsdirectbodystate2dextension_uset_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionSetTransform(unsafe{&T(voidptr(inst))})
    transform := unsafe{&Transform2D(args[0])}
    i.virt_set_transform(transform)
}

fn physicsdirectbodystate2dextension_uget_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetTransform(unsafe{&T(voidptr(inst))})
    *(&Transform2D(ret)) := i.virt_get_transform()
}

fn physicsdirectbodystate2dextension_uget_velocity_at_local_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetVelocityAtLocalPosition(unsafe{&T(voidptr(inst))})
    local_position := unsafe{&Vector2(args[0])}
    *(&Vector2(ret)) := i.virt_get_velocity_at_local_position(local_position)
}

fn physicsdirectbodystate2dextension_uapply_central_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionApplyCentralImpulse(unsafe{&T(voidptr(inst))})
    impulse := unsafe{&Vector2(args[0])}
    i.virt_apply_central_impulse(impulse)
}

fn physicsdirectbodystate2dextension_uapply_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionApplyImpulse(unsafe{&T(voidptr(inst))})
    impulse := unsafe{&Vector2(args[0])}
    position := unsafe{&Vector2(args[1])}
    i.virt_apply_impulse(impulse, position)
}

fn physicsdirectbodystate2dextension_uapply_torque_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionApplyTorqueImpulse(unsafe{&T(voidptr(inst))})
    impulse := unsafe{&f64(args[0])}
    i.virt_apply_torque_impulse(impulse)
}

fn physicsdirectbodystate2dextension_uapply_central_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionApplyCentralForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector2(args[0])}
    i.virt_apply_central_force(force)
}

fn physicsdirectbodystate2dextension_uapply_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionApplyForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector2(args[0])}
    position := unsafe{&Vector2(args[1])}
    i.virt_apply_force(force, position)
}

fn physicsdirectbodystate2dextension_uapply_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionApplyTorque(unsafe{&T(voidptr(inst))})
    torque := unsafe{&f64(args[0])}
    i.virt_apply_torque(torque)
}

fn physicsdirectbodystate2dextension_uadd_constant_central_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionAddConstantCentralForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector2(args[0])}
    i.virt_add_constant_central_force(force)
}

fn physicsdirectbodystate2dextension_uadd_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionAddConstantForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector2(args[0])}
    position := unsafe{&Vector2(args[1])}
    i.virt_add_constant_force(force, position)
}

fn physicsdirectbodystate2dextension_uadd_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionAddConstantTorque(unsafe{&T(voidptr(inst))})
    torque := unsafe{&f64(args[0])}
    i.virt_add_constant_torque(torque)
}

fn physicsdirectbodystate2dextension_uset_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionSetConstantForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector2(args[0])}
    i.virt_set_constant_force(force)
}

fn physicsdirectbodystate2dextension_uget_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetConstantForce(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_constant_force()
}

fn physicsdirectbodystate2dextension_uset_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionSetConstantTorque(unsafe{&T(voidptr(inst))})
    torque := unsafe{&f64(args[0])}
    i.virt_set_constant_torque(torque)
}

fn physicsdirectbodystate2dextension_uget_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetConstantTorque(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_constant_torque()
}

fn physicsdirectbodystate2dextension_uset_sleep_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionSetSleepState(unsafe{&T(voidptr(inst))})
    enabled := unsafe{&bool(args[0])}
    i.virt_set_sleep_state(enabled)
}

fn physicsdirectbodystate2dextension_uis_sleeping[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionIsSleeping(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_sleeping()
}

fn physicsdirectbodystate2dextension_uget_contact_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_contact_count()
}

fn physicsdirectbodystate2dextension_uget_contact_local_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactLocalPosition(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector2(ret)) := i.virt_get_contact_local_position(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_local_normal[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactLocalNormal(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector2(ret)) := i.virt_get_contact_local_normal(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_local_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactLocalShape(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&i32(ret)) := i.virt_get_contact_local_shape(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_local_velocity_at_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactLocalVelocityAtPosition(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector2(ret)) := i.virt_get_contact_local_velocity_at_position(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_collider[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactCollider(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&RID(ret)) := i.virt_get_contact_collider(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_collider_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactColliderPosition(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector2(ret)) := i.virt_get_contact_collider_position(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_collider_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactColliderId(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&u64(ret)) := i.virt_get_contact_collider_id(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_collider_object[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactColliderObject(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Object(ret)) := i.virt_get_contact_collider_object(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_collider_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactColliderShape(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&i32(ret)) := i.virt_get_contact_collider_shape(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_collider_velocity_at_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactColliderVelocityAtPosition(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector2(ret)) := i.virt_get_contact_collider_velocity_at_position(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_contact_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetContactImpulse(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector2(ret)) := i.virt_get_contact_impulse(contact_idx)
}

fn physicsdirectbodystate2dextension_uget_step[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetStep(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_step()
}

fn physicsdirectbodystate2dextension_uintegrate_forces[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionIntegrateForces(unsafe{&T(voidptr(inst))})
    i.virt_integrate_forces()
}

fn physicsdirectbodystate2dextension_uget_space_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState2DExtensionGetSpaceState(unsafe{&T(voidptr(inst))})
    *(&PhysicsDirectSpaceState2D(ret)) := i.virt_get_space_state()
}

fn physicsdirectbodystate3dextension_uget_total_gravity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetTotalGravity(unsafe{&T(voidptr(inst))})
    *(&Vector3(ret)) := i.virt_get_total_gravity()
}

fn physicsdirectbodystate3dextension_uget_total_linear_damp[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetTotalLinearDamp(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_total_linear_damp()
}

fn physicsdirectbodystate3dextension_uget_total_angular_damp[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetTotalAngularDamp(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_total_angular_damp()
}

fn physicsdirectbodystate3dextension_uget_center_of_mass[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetCenterOfMass(unsafe{&T(voidptr(inst))})
    *(&Vector3(ret)) := i.virt_get_center_of_mass()
}

fn physicsdirectbodystate3dextension_uget_center_of_mass_local[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetCenterOfMassLocal(unsafe{&T(voidptr(inst))})
    *(&Vector3(ret)) := i.virt_get_center_of_mass_local()
}

fn physicsdirectbodystate3dextension_uget_principal_inertia_axes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetPrincipalInertiaAxes(unsafe{&T(voidptr(inst))})
    *(&Basis(ret)) := i.virt_get_principal_inertia_axes()
}

fn physicsdirectbodystate3dextension_uget_inverse_mass[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetInverseMass(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_inverse_mass()
}

fn physicsdirectbodystate3dextension_uget_inverse_inertia[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetInverseInertia(unsafe{&T(voidptr(inst))})
    *(&Vector3(ret)) := i.virt_get_inverse_inertia()
}

fn physicsdirectbodystate3dextension_uget_inverse_inertia_tensor[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetInverseInertiaTensor(unsafe{&T(voidptr(inst))})
    *(&Basis(ret)) := i.virt_get_inverse_inertia_tensor()
}

fn physicsdirectbodystate3dextension_uset_linear_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionSetLinearVelocity(unsafe{&T(voidptr(inst))})
    velocity := unsafe{&Vector3(args[0])}
    i.virt_set_linear_velocity(velocity)
}

fn physicsdirectbodystate3dextension_uget_linear_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetLinearVelocity(unsafe{&T(voidptr(inst))})
    *(&Vector3(ret)) := i.virt_get_linear_velocity()
}

fn physicsdirectbodystate3dextension_uset_angular_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionSetAngularVelocity(unsafe{&T(voidptr(inst))})
    velocity := unsafe{&Vector3(args[0])}
    i.virt_set_angular_velocity(velocity)
}

fn physicsdirectbodystate3dextension_uget_angular_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetAngularVelocity(unsafe{&T(voidptr(inst))})
    *(&Vector3(ret)) := i.virt_get_angular_velocity()
}

fn physicsdirectbodystate3dextension_uset_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionSetTransform(unsafe{&T(voidptr(inst))})
    transform := unsafe{&Transform3D(args[0])}
    i.virt_set_transform(transform)
}

fn physicsdirectbodystate3dextension_uget_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetTransform(unsafe{&T(voidptr(inst))})
    *(&Transform3D(ret)) := i.virt_get_transform()
}

fn physicsdirectbodystate3dextension_uget_velocity_at_local_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetVelocityAtLocalPosition(unsafe{&T(voidptr(inst))})
    local_position := unsafe{&Vector3(args[0])}
    *(&Vector3(ret)) := i.virt_get_velocity_at_local_position(local_position)
}

fn physicsdirectbodystate3dextension_uapply_central_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionApplyCentralImpulse(unsafe{&T(voidptr(inst))})
    impulse := unsafe{&Vector3(args[0])}
    i.virt_apply_central_impulse(impulse)
}

fn physicsdirectbodystate3dextension_uapply_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionApplyImpulse(unsafe{&T(voidptr(inst))})
    impulse := unsafe{&Vector3(args[0])}
    position := unsafe{&Vector3(args[1])}
    i.virt_apply_impulse(impulse, position)
}

fn physicsdirectbodystate3dextension_uapply_torque_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionApplyTorqueImpulse(unsafe{&T(voidptr(inst))})
    impulse := unsafe{&Vector3(args[0])}
    i.virt_apply_torque_impulse(impulse)
}

fn physicsdirectbodystate3dextension_uapply_central_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionApplyCentralForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector3(args[0])}
    i.virt_apply_central_force(force)
}

fn physicsdirectbodystate3dextension_uapply_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionApplyForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector3(args[0])}
    position := unsafe{&Vector3(args[1])}
    i.virt_apply_force(force, position)
}

fn physicsdirectbodystate3dextension_uapply_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionApplyTorque(unsafe{&T(voidptr(inst))})
    torque := unsafe{&Vector3(args[0])}
    i.virt_apply_torque(torque)
}

fn physicsdirectbodystate3dextension_uadd_constant_central_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionAddConstantCentralForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector3(args[0])}
    i.virt_add_constant_central_force(force)
}

fn physicsdirectbodystate3dextension_uadd_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionAddConstantForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector3(args[0])}
    position := unsafe{&Vector3(args[1])}
    i.virt_add_constant_force(force, position)
}

fn physicsdirectbodystate3dextension_uadd_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionAddConstantTorque(unsafe{&T(voidptr(inst))})
    torque := unsafe{&Vector3(args[0])}
    i.virt_add_constant_torque(torque)
}

fn physicsdirectbodystate3dextension_uset_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionSetConstantForce(unsafe{&T(voidptr(inst))})
    force := unsafe{&Vector3(args[0])}
    i.virt_set_constant_force(force)
}

fn physicsdirectbodystate3dextension_uget_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetConstantForce(unsafe{&T(voidptr(inst))})
    *(&Vector3(ret)) := i.virt_get_constant_force()
}

fn physicsdirectbodystate3dextension_uset_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionSetConstantTorque(unsafe{&T(voidptr(inst))})
    torque := unsafe{&Vector3(args[0])}
    i.virt_set_constant_torque(torque)
}

fn physicsdirectbodystate3dextension_uget_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetConstantTorque(unsafe{&T(voidptr(inst))})
    *(&Vector3(ret)) := i.virt_get_constant_torque()
}

fn physicsdirectbodystate3dextension_uset_sleep_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionSetSleepState(unsafe{&T(voidptr(inst))})
    enabled := unsafe{&bool(args[0])}
    i.virt_set_sleep_state(enabled)
}

fn physicsdirectbodystate3dextension_uis_sleeping[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionIsSleeping(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_sleeping()
}

fn physicsdirectbodystate3dextension_uget_contact_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_contact_count()
}

fn physicsdirectbodystate3dextension_uget_contact_local_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactLocalPosition(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector3(ret)) := i.virt_get_contact_local_position(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_local_normal[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactLocalNormal(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector3(ret)) := i.virt_get_contact_local_normal(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactImpulse(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector3(ret)) := i.virt_get_contact_impulse(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_local_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactLocalShape(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&i32(ret)) := i.virt_get_contact_local_shape(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_local_velocity_at_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactLocalVelocityAtPosition(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector3(ret)) := i.virt_get_contact_local_velocity_at_position(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_collider[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactCollider(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&RID(ret)) := i.virt_get_contact_collider(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_collider_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactColliderPosition(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector3(ret)) := i.virt_get_contact_collider_position(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_collider_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactColliderId(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&u64(ret)) := i.virt_get_contact_collider_id(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_collider_object[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactColliderObject(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Object(ret)) := i.virt_get_contact_collider_object(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_collider_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactColliderShape(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&i32(ret)) := i.virt_get_contact_collider_shape(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_contact_collider_velocity_at_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetContactColliderVelocityAtPosition(unsafe{&T(voidptr(inst))})
    contact_idx := unsafe{&i32(args[0])}
    *(&Vector3(ret)) := i.virt_get_contact_collider_velocity_at_position(contact_idx)
}

fn physicsdirectbodystate3dextension_uget_step[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetStep(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_step()
}

fn physicsdirectbodystate3dextension_uintegrate_forces[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionIntegrateForces(unsafe{&T(voidptr(inst))})
    i.virt_integrate_forces()
}

fn physicsdirectbodystate3dextension_uget_space_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectBodyState3DExtensionGetSpaceState(unsafe{&T(voidptr(inst))})
    *(&PhysicsDirectSpaceState3D(ret)) := i.virt_get_space_state()
}

fn physicsdirectspacestate2dextension_uintersect_ray[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState2DExtensionIntersectRay(unsafe{&T(voidptr(inst))})
    from := unsafe{&Vector2(args[0])}
    to := unsafe{&Vector2(args[1])}
    collision_mask := unsafe{&u32(args[2])}
    collide_with_bodies := unsafe{&bool(args[3])}
    collide_with_areas := unsafe{&bool(args[4])}
    hit_from_inside := unsafe{&bool(args[5])}
    result := unsafe{&&PhysicsServer2DExtensionRayResult(args[6])}
    *(&bool(ret)) := i.virt_intersect_ray(from, to, collision_mask, collide_with_bodies, collide_with_areas, hit_from_inside, result)
}

fn physicsdirectspacestate2dextension_uintersect_point[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState2DExtensionIntersectPoint(unsafe{&T(voidptr(inst))})
    position := unsafe{&Vector2(args[0])}
    canvas_instance_id := unsafe{&u64(args[1])}
    collision_mask := unsafe{&u32(args[2])}
    collide_with_bodies := unsafe{&bool(args[3])}
    collide_with_areas := unsafe{&bool(args[4])}
    results := unsafe{&&PhysicsServer2DExtensionShapeResult(args[5])}
    max_results := unsafe{&i32(args[6])}
    *(&i32(ret)) := i.virt_intersect_point(position, canvas_instance_id, collision_mask, collide_with_bodies, collide_with_areas, results, max_results)
}

fn physicsdirectspacestate2dextension_uintersect_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState2DExtensionIntersectShape(unsafe{&T(voidptr(inst))})
    shape_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform2D(args[1])}
    motion := unsafe{&Vector2(args[2])}
    margin := unsafe{&f64(args[3])}
    collision_mask := unsafe{&u32(args[4])}
    collide_with_bodies := unsafe{&bool(args[5])}
    collide_with_areas := unsafe{&bool(args[6])}
    result := unsafe{&&PhysicsServer2DExtensionShapeResult(args[7])}
    max_results := unsafe{&i32(args[8])}
    *(&i32(ret)) := i.virt_intersect_shape(shape_rid, transform, motion, margin, collision_mask, collide_with_bodies, collide_with_areas, result, max_results)
}

fn physicsdirectspacestate2dextension_ucast_motion[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState2DExtensionCastMotion(unsafe{&T(voidptr(inst))})
    shape_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform2D(args[1])}
    motion := unsafe{&Vector2(args[2])}
    margin := unsafe{&f64(args[3])}
    collision_mask := unsafe{&u32(args[4])}
    collide_with_bodies := unsafe{&bool(args[5])}
    collide_with_areas := unsafe{&bool(args[6])}
    closest_safe := unsafe{&&f64(args[7])}
    closest_unsafe := unsafe{&&f64(args[8])}
    *(&bool(ret)) := i.virt_cast_motion(shape_rid, transform, motion, margin, collision_mask, collide_with_bodies, collide_with_areas, closest_safe, closest_unsafe)
}

fn physicsdirectspacestate2dextension_ucollide_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState2DExtensionCollideShape(unsafe{&T(voidptr(inst))})
    shape_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform2D(args[1])}
    motion := unsafe{&Vector2(args[2])}
    margin := unsafe{&f64(args[3])}
    collision_mask := unsafe{&u32(args[4])}
    collide_with_bodies := unsafe{&bool(args[5])}
    collide_with_areas := unsafe{&bool(args[6])}
    results := unsafe{&voidptr(args[7])}
    max_results := unsafe{&i32(args[8])}
    result_count := unsafe{&&i32(args[9])}
    *(&bool(ret)) := i.virt_collide_shape(shape_rid, transform, motion, margin, collision_mask, collide_with_bodies, collide_with_areas, results, max_results, result_count)
}

fn physicsdirectspacestate2dextension_urest_info[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState2DExtensionRestInfo(unsafe{&T(voidptr(inst))})
    shape_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform2D(args[1])}
    motion := unsafe{&Vector2(args[2])}
    margin := unsafe{&f64(args[3])}
    collision_mask := unsafe{&u32(args[4])}
    collide_with_bodies := unsafe{&bool(args[5])}
    collide_with_areas := unsafe{&bool(args[6])}
    rest_info := unsafe{&&PhysicsServer2DExtensionShapeRestInfo(args[7])}
    *(&bool(ret)) := i.virt_rest_info(shape_rid, transform, motion, margin, collision_mask, collide_with_bodies, collide_with_areas, rest_info)
}

fn physicsdirectspacestate3dextension_uintersect_ray[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState3DExtensionIntersectRay(unsafe{&T(voidptr(inst))})
    from := unsafe{&Vector3(args[0])}
    to := unsafe{&Vector3(args[1])}
    collision_mask := unsafe{&u32(args[2])}
    collide_with_bodies := unsafe{&bool(args[3])}
    collide_with_areas := unsafe{&bool(args[4])}
    hit_from_inside := unsafe{&bool(args[5])}
    hit_back_faces := unsafe{&bool(args[6])}
    pick_ray := unsafe{&bool(args[7])}
    result := unsafe{&&PhysicsServer3DExtensionRayResult(args[8])}
    *(&bool(ret)) := i.virt_intersect_ray(from, to, collision_mask, collide_with_bodies, collide_with_areas, hit_from_inside, hit_back_faces, pick_ray, result)
}

fn physicsdirectspacestate3dextension_uintersect_point[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState3DExtensionIntersectPoint(unsafe{&T(voidptr(inst))})
    position := unsafe{&Vector3(args[0])}
    collision_mask := unsafe{&u32(args[1])}
    collide_with_bodies := unsafe{&bool(args[2])}
    collide_with_areas := unsafe{&bool(args[3])}
    results := unsafe{&&PhysicsServer3DExtensionShapeResult(args[4])}
    max_results := unsafe{&i32(args[5])}
    *(&i32(ret)) := i.virt_intersect_point(position, collision_mask, collide_with_bodies, collide_with_areas, results, max_results)
}

fn physicsdirectspacestate3dextension_uintersect_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState3DExtensionIntersectShape(unsafe{&T(voidptr(inst))})
    shape_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform3D(args[1])}
    motion := unsafe{&Vector3(args[2])}
    margin := unsafe{&f64(args[3])}
    collision_mask := unsafe{&u32(args[4])}
    collide_with_bodies := unsafe{&bool(args[5])}
    collide_with_areas := unsafe{&bool(args[6])}
    result_count := unsafe{&&PhysicsServer3DExtensionShapeResult(args[7])}
    max_results := unsafe{&i32(args[8])}
    *(&i32(ret)) := i.virt_intersect_shape(shape_rid, transform, motion, margin, collision_mask, collide_with_bodies, collide_with_areas, result_count, max_results)
}

fn physicsdirectspacestate3dextension_ucast_motion[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState3DExtensionCastMotion(unsafe{&T(voidptr(inst))})
    shape_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform3D(args[1])}
    motion := unsafe{&Vector3(args[2])}
    margin := unsafe{&f64(args[3])}
    collision_mask := unsafe{&u32(args[4])}
    collide_with_bodies := unsafe{&bool(args[5])}
    collide_with_areas := unsafe{&bool(args[6])}
    closest_safe := unsafe{&&f64(args[7])}
    closest_unsafe := unsafe{&&f64(args[8])}
    info := unsafe{&&PhysicsServer3DExtensionShapeRestInfo(args[9])}
    *(&bool(ret)) := i.virt_cast_motion(shape_rid, transform, motion, margin, collision_mask, collide_with_bodies, collide_with_areas, closest_safe, closest_unsafe, info)
}

fn physicsdirectspacestate3dextension_ucollide_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState3DExtensionCollideShape(unsafe{&T(voidptr(inst))})
    shape_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform3D(args[1])}
    motion := unsafe{&Vector3(args[2])}
    margin := unsafe{&f64(args[3])}
    collision_mask := unsafe{&u32(args[4])}
    collide_with_bodies := unsafe{&bool(args[5])}
    collide_with_areas := unsafe{&bool(args[6])}
    results := unsafe{&voidptr(args[7])}
    max_results := unsafe{&i32(args[8])}
    result_count := unsafe{&&i32(args[9])}
    *(&bool(ret)) := i.virt_collide_shape(shape_rid, transform, motion, margin, collision_mask, collide_with_bodies, collide_with_areas, results, max_results, result_count)
}

fn physicsdirectspacestate3dextension_urest_info[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState3DExtensionRestInfo(unsafe{&T(voidptr(inst))})
    shape_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform3D(args[1])}
    motion := unsafe{&Vector3(args[2])}
    margin := unsafe{&f64(args[3])}
    collision_mask := unsafe{&u32(args[4])}
    collide_with_bodies := unsafe{&bool(args[5])}
    collide_with_areas := unsafe{&bool(args[6])}
    rest_info := unsafe{&&PhysicsServer3DExtensionShapeRestInfo(args[7])}
    *(&bool(ret)) := i.virt_rest_info(shape_rid, transform, motion, margin, collision_mask, collide_with_bodies, collide_with_areas, rest_info)
}

fn physicsdirectspacestate3dextension_uget_closest_point_to_object_volume[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsDirectSpaceState3DExtensionGetClosestPointToObjectVolume(unsafe{&T(voidptr(inst))})
    object := unsafe{&RID(args[0])}
    point := unsafe{&Vector3(args[1])}
    *(&Vector3(ret)) := i.virt_get_closest_point_to_object_volume(object, point)
}

fn physicsserver2dextension_uworld_boundary_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionWorldBoundaryShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_world_boundary_shape_create()
}

fn physicsserver2dextension_useparation_ray_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSeparationRayShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_separation_ray_shape_create()
}

fn physicsserver2dextension_usegment_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSegmentShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_segment_shape_create()
}

fn physicsserver2dextension_ucircle_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionCircleShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_circle_shape_create()
}

fn physicsserver2dextension_urectangle_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionRectangleShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_rectangle_shape_create()
}

fn physicsserver2dextension_ucapsule_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionCapsuleShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_capsule_shape_create()
}

fn physicsserver2dextension_uconvex_polygon_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionConvexPolygonShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_convex_polygon_shape_create()
}

fn physicsserver2dextension_uconcave_polygon_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionConcavePolygonShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_concave_polygon_shape_create()
}

fn physicsserver2dextension_ushape_set_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionShapeSetData(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    data := unsafe{&Variant(args[1])}
    i.virt_shape_set_data(shape, data)
}

fn physicsserver2dextension_ushape_set_custom_solver_bias[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionShapeSetCustomSolverBias(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    bias := unsafe{&f64(args[1])}
    i.virt_shape_set_custom_solver_bias(shape, bias)
}

fn physicsserver2dextension_ushape_get_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionShapeGetType(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    *(&PhysicsServer2DShapeType(ret)) := i.virt_shape_get_type(shape)
}

fn physicsserver2dextension_ushape_get_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionShapeGetData(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    *(&Variant(ret)) := i.virt_shape_get_data(shape)
}

fn physicsserver2dextension_ushape_get_custom_solver_bias[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionShapeGetCustomSolverBias(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_shape_get_custom_solver_bias(shape)
}

fn physicsserver2dextension_ushape_collide[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionShapeCollide(unsafe{&T(voidptr(inst))})
    shape_a := unsafe{&RID(args[0])}
    xform_a := unsafe{&Transform2D(args[1])}
    motion_a := unsafe{&Vector2(args[2])}
    shape_b := unsafe{&RID(args[3])}
    xform_b := unsafe{&Transform2D(args[4])}
    motion_b := unsafe{&Vector2(args[5])}
    results := unsafe{&voidptr(args[6])}
    result_max := unsafe{&i32(args[7])}
    result_count := unsafe{&&i32(args[8])}
    *(&bool(ret)) := i.virt_shape_collide(shape_a, xform_a, motion_a, shape_b, xform_b, motion_b, results, result_max, result_count)
}

fn physicsserver2dextension_uspace_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_space_create()
}

fn physicsserver2dextension_uspace_set_active[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceSetActive(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    active := unsafe{&bool(args[1])}
    i.virt_space_set_active(space, active)
}

fn physicsserver2dextension_uspace_is_active[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceIsActive(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_space_is_active(space)
}

fn physicsserver2dextension_uspace_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceSetParam(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DSpaceParameter(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_space_set_param(space, param, value)
}

fn physicsserver2dextension_uspace_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceGetParam(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DSpaceParameter(args[1])}
    *(&f64(ret)) := i.virt_space_get_param(space, param)
}

fn physicsserver2dextension_uspace_get_direct_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceGetDirectState(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    *(&PhysicsDirectSpaceState2D(ret)) := i.virt_space_get_direct_state(space)
}

fn physicsserver2dextension_uspace_set_debug_contacts[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceSetDebugContacts(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    max_contacts := unsafe{&i32(args[1])}
    i.virt_space_set_debug_contacts(space, max_contacts)
}

fn physicsserver2dextension_uspace_get_contacts[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceGetContacts(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    *(&PackedVector2Array(ret)) := i.virt_space_get_contacts(space)
}

fn physicsserver2dextension_uspace_get_contact_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSpaceGetContactCount(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_space_get_contact_count(space)
}

fn physicsserver2dextension_uarea_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_area_create()
}

fn physicsserver2dextension_uarea_set_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetSpace(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    space := unsafe{&RID(args[1])}
    i.virt_area_set_space(area, space)
}

fn physicsserver2dextension_uarea_get_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetSpace(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&RID(ret)) := i.virt_area_get_space(area)
}

fn physicsserver2dextension_uarea_add_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaAddShape(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape := unsafe{&RID(args[1])}
    transform := unsafe{&Transform2D(args[2])}
    disabled := unsafe{&bool(args[3])}
    i.virt_area_add_shape(area, shape, transform, disabled)
}

fn physicsserver2dextension_uarea_set_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetShape(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    shape := unsafe{&RID(args[2])}
    i.virt_area_set_shape(area, shape_idx, shape)
}

fn physicsserver2dextension_uarea_set_shape_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetShapeTransform(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    transform := unsafe{&Transform2D(args[2])}
    i.virt_area_set_shape_transform(area, shape_idx, transform)
}

fn physicsserver2dextension_uarea_set_shape_disabled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetShapeDisabled(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    disabled := unsafe{&bool(args[2])}
    i.virt_area_set_shape_disabled(area, shape_idx, disabled)
}

fn physicsserver2dextension_uarea_get_shape_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetShapeCount(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_area_get_shape_count(area)
}

fn physicsserver2dextension_uarea_get_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetShape(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    *(&RID(ret)) := i.virt_area_get_shape(area, shape_idx)
}

fn physicsserver2dextension_uarea_get_shape_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetShapeTransform(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    *(&Transform2D(ret)) := i.virt_area_get_shape_transform(area, shape_idx)
}

fn physicsserver2dextension_uarea_remove_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaRemoveShape(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    i.virt_area_remove_shape(area, shape_idx)
}

fn physicsserver2dextension_uarea_clear_shapes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaClearShapes(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    i.virt_area_clear_shapes(area)
}

fn physicsserver2dextension_uarea_attach_object_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaAttachObjectInstanceId(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    id := unsafe{&u64(args[1])}
    i.virt_area_attach_object_instance_id(area, id)
}

fn physicsserver2dextension_uarea_get_object_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetObjectInstanceId(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&u64(ret)) := i.virt_area_get_object_instance_id(area)
}

fn physicsserver2dextension_uarea_attach_canvas_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaAttachCanvasInstanceId(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    id := unsafe{&u64(args[1])}
    i.virt_area_attach_canvas_instance_id(area, id)
}

fn physicsserver2dextension_uarea_get_canvas_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetCanvasInstanceId(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&u64(ret)) := i.virt_area_get_canvas_instance_id(area)
}

fn physicsserver2dextension_uarea_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetParam(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DAreaParameter(args[1])}
    value := unsafe{&Variant(args[2])}
    i.virt_area_set_param(area, param, value)
}

fn physicsserver2dextension_uarea_set_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetTransform(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    transform := unsafe{&Transform2D(args[1])}
    i.virt_area_set_transform(area, transform)
}

fn physicsserver2dextension_uarea_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetParam(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DAreaParameter(args[1])}
    *(&Variant(ret)) := i.virt_area_get_param(area, param)
}

fn physicsserver2dextension_uarea_get_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetTransform(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&Transform2D(ret)) := i.virt_area_get_transform(area)
}

fn physicsserver2dextension_uarea_set_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetCollisionLayer(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    layer := unsafe{&u32(args[1])}
    i.virt_area_set_collision_layer(area, layer)
}

fn physicsserver2dextension_uarea_get_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetCollisionLayer(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_area_get_collision_layer(area)
}

fn physicsserver2dextension_uarea_set_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetCollisionMask(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    mask := unsafe{&u32(args[1])}
    i.virt_area_set_collision_mask(area, mask)
}

fn physicsserver2dextension_uarea_get_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaGetCollisionMask(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_area_get_collision_mask(area)
}

fn physicsserver2dextension_uarea_set_monitorable[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetMonitorable(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    monitorable := unsafe{&bool(args[1])}
    i.virt_area_set_monitorable(area, monitorable)
}

fn physicsserver2dextension_uarea_set_pickable[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetPickable(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    pickable := unsafe{&bool(args[1])}
    i.virt_area_set_pickable(area, pickable)
}

fn physicsserver2dextension_uarea_set_monitor_callback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetMonitorCallback(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    callback := unsafe{&Callable(args[1])}
    i.virt_area_set_monitor_callback(area, callback)
}

fn physicsserver2dextension_uarea_set_area_monitor_callback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionAreaSetAreaMonitorCallback(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    callback := unsafe{&Callable(args[1])}
    i.virt_area_set_area_monitor_callback(area, callback)
}

fn physicsserver2dextension_ubody_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_body_create()
}

fn physicsserver2dextension_ubody_set_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetSpace(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    space := unsafe{&RID(args[1])}
    i.virt_body_set_space(body, space)
}

fn physicsserver2dextension_ubody_get_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetSpace(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&RID(ret)) := i.virt_body_get_space(body)
}

fn physicsserver2dextension_ubody_set_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetMode(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    mode := unsafe{&PhysicsServer2DBodyMode(args[1])}
    i.virt_body_set_mode(body, mode)
}

fn physicsserver2dextension_ubody_get_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetMode(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&PhysicsServer2DBodyMode(ret)) := i.virt_body_get_mode(body)
}

fn physicsserver2dextension_ubody_add_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyAddShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape := unsafe{&RID(args[1])}
    transform := unsafe{&Transform2D(args[2])}
    disabled := unsafe{&bool(args[3])}
    i.virt_body_add_shape(body, shape, transform, disabled)
}

fn physicsserver2dextension_ubody_set_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    shape := unsafe{&RID(args[2])}
    i.virt_body_set_shape(body, shape_idx, shape)
}

fn physicsserver2dextension_ubody_set_shape_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetShapeTransform(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    transform := unsafe{&Transform2D(args[2])}
    i.virt_body_set_shape_transform(body, shape_idx, transform)
}

fn physicsserver2dextension_ubody_get_shape_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetShapeCount(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_body_get_shape_count(body)
}

fn physicsserver2dextension_ubody_get_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    *(&RID(ret)) := i.virt_body_get_shape(body, shape_idx)
}

fn physicsserver2dextension_ubody_get_shape_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetShapeTransform(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    *(&Transform2D(ret)) := i.virt_body_get_shape_transform(body, shape_idx)
}

fn physicsserver2dextension_ubody_set_shape_disabled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetShapeDisabled(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    disabled := unsafe{&bool(args[2])}
    i.virt_body_set_shape_disabled(body, shape_idx, disabled)
}

fn physicsserver2dextension_ubody_set_shape_as_one_way_collision[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetShapeAsOneWayCollision(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    enable := unsafe{&bool(args[2])}
    margin := unsafe{&f64(args[3])}
    i.virt_body_set_shape_as_one_way_collision(body, shape_idx, enable, margin)
}

fn physicsserver2dextension_ubody_remove_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyRemoveShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    i.virt_body_remove_shape(body, shape_idx)
}

fn physicsserver2dextension_ubody_clear_shapes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyClearShapes(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    i.virt_body_clear_shapes(body)
}

fn physicsserver2dextension_ubody_attach_object_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyAttachObjectInstanceId(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    id := unsafe{&u64(args[1])}
    i.virt_body_attach_object_instance_id(body, id)
}

fn physicsserver2dextension_ubody_get_object_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetObjectInstanceId(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u64(ret)) := i.virt_body_get_object_instance_id(body)
}

fn physicsserver2dextension_ubody_attach_canvas_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyAttachCanvasInstanceId(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    id := unsafe{&u64(args[1])}
    i.virt_body_attach_canvas_instance_id(body, id)
}

fn physicsserver2dextension_ubody_get_canvas_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetCanvasInstanceId(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u64(ret)) := i.virt_body_get_canvas_instance_id(body)
}

fn physicsserver2dextension_ubody_set_continuous_collision_detection_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetContinuousCollisionDetectionMode(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    mode := unsafe{&PhysicsServer2DCCDMode(args[1])}
    i.virt_body_set_continuous_collision_detection_mode(body, mode)
}

fn physicsserver2dextension_ubody_get_continuous_collision_detection_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetContinuousCollisionDetectionMode(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&PhysicsServer2DCCDMode(ret)) := i.virt_body_get_continuous_collision_detection_mode(body)
}

fn physicsserver2dextension_ubody_set_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetCollisionLayer(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    layer := unsafe{&u32(args[1])}
    i.virt_body_set_collision_layer(body, layer)
}

fn physicsserver2dextension_ubody_get_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetCollisionLayer(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_body_get_collision_layer(body)
}

fn physicsserver2dextension_ubody_set_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetCollisionMask(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    mask := unsafe{&u32(args[1])}
    i.virt_body_set_collision_mask(body, mask)
}

fn physicsserver2dextension_ubody_get_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetCollisionMask(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_body_get_collision_mask(body)
}

fn physicsserver2dextension_ubody_set_collision_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetCollisionPriority(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    priority := unsafe{&f64(args[1])}
    i.virt_body_set_collision_priority(body, priority)
}

fn physicsserver2dextension_ubody_get_collision_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetCollisionPriority(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_body_get_collision_priority(body)
}

fn physicsserver2dextension_ubody_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetParam(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DBodyParameter(args[1])}
    value := unsafe{&Variant(args[2])}
    i.virt_body_set_param(body, param, value)
}

fn physicsserver2dextension_ubody_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetParam(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DBodyParameter(args[1])}
    *(&Variant(ret)) := i.virt_body_get_param(body, param)
}

fn physicsserver2dextension_ubody_reset_mass_properties[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyResetMassProperties(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    i.virt_body_reset_mass_properties(body)
}

fn physicsserver2dextension_ubody_set_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetState(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    state := unsafe{&PhysicsServer2DBodyState(args[1])}
    value := unsafe{&Variant(args[2])}
    i.virt_body_set_state(body, state, value)
}

fn physicsserver2dextension_ubody_get_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetState(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    state := unsafe{&PhysicsServer2DBodyState(args[1])}
    *(&Variant(ret)) := i.virt_body_get_state(body, state)
}

fn physicsserver2dextension_ubody_apply_central_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyApplyCentralImpulse(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    impulse := unsafe{&Vector2(args[1])}
    i.virt_body_apply_central_impulse(body, impulse)
}

fn physicsserver2dextension_ubody_apply_torque_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyApplyTorqueImpulse(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    impulse := unsafe{&f64(args[1])}
    i.virt_body_apply_torque_impulse(body, impulse)
}

fn physicsserver2dextension_ubody_apply_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyApplyImpulse(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    impulse := unsafe{&Vector2(args[1])}
    position := unsafe{&Vector2(args[2])}
    i.virt_body_apply_impulse(body, impulse, position)
}

fn physicsserver2dextension_ubody_apply_central_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyApplyCentralForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector2(args[1])}
    i.virt_body_apply_central_force(body, force)
}

fn physicsserver2dextension_ubody_apply_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyApplyForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector2(args[1])}
    position := unsafe{&Vector2(args[2])}
    i.virt_body_apply_force(body, force, position)
}

fn physicsserver2dextension_ubody_apply_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyApplyTorque(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    torque := unsafe{&f64(args[1])}
    i.virt_body_apply_torque(body, torque)
}

fn physicsserver2dextension_ubody_add_constant_central_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyAddConstantCentralForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector2(args[1])}
    i.virt_body_add_constant_central_force(body, force)
}

fn physicsserver2dextension_ubody_add_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyAddConstantForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector2(args[1])}
    position := unsafe{&Vector2(args[2])}
    i.virt_body_add_constant_force(body, force, position)
}

fn physicsserver2dextension_ubody_add_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyAddConstantTorque(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    torque := unsafe{&f64(args[1])}
    i.virt_body_add_constant_torque(body, torque)
}

fn physicsserver2dextension_ubody_set_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetConstantForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector2(args[1])}
    i.virt_body_set_constant_force(body, force)
}

fn physicsserver2dextension_ubody_get_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetConstantForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&Vector2(ret)) := i.virt_body_get_constant_force(body)
}

fn physicsserver2dextension_ubody_set_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetConstantTorque(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    torque := unsafe{&f64(args[1])}
    i.virt_body_set_constant_torque(body, torque)
}

fn physicsserver2dextension_ubody_get_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetConstantTorque(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_body_get_constant_torque(body)
}

fn physicsserver2dextension_ubody_set_axis_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetAxisVelocity(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    axis_velocity := unsafe{&Vector2(args[1])}
    i.virt_body_set_axis_velocity(body, axis_velocity)
}

fn physicsserver2dextension_ubody_add_collision_exception[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyAddCollisionException(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    excepted_body := unsafe{&RID(args[1])}
    i.virt_body_add_collision_exception(body, excepted_body)
}

fn physicsserver2dextension_ubody_remove_collision_exception[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyRemoveCollisionException(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    excepted_body := unsafe{&RID(args[1])}
    i.virt_body_remove_collision_exception(body, excepted_body)
}

fn physicsserver2dextension_ubody_get_collision_exceptions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetCollisionExceptions(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&Array(ret)) := i.virt_body_get_collision_exceptions(body)
}

fn physicsserver2dextension_ubody_set_max_contacts_reported[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetMaxContactsReported(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    amount := unsafe{&i32(args[1])}
    i.virt_body_set_max_contacts_reported(body, amount)
}

fn physicsserver2dextension_ubody_get_max_contacts_reported[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetMaxContactsReported(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_body_get_max_contacts_reported(body)
}

fn physicsserver2dextension_ubody_set_contacts_reported_depth_threshold[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetContactsReportedDepthThreshold(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    threshold := unsafe{&f64(args[1])}
    i.virt_body_set_contacts_reported_depth_threshold(body, threshold)
}

fn physicsserver2dextension_ubody_get_contacts_reported_depth_threshold[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetContactsReportedDepthThreshold(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_body_get_contacts_reported_depth_threshold(body)
}

fn physicsserver2dextension_ubody_set_omit_force_integration[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetOmitForceIntegration(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    enable := unsafe{&bool(args[1])}
    i.virt_body_set_omit_force_integration(body, enable)
}

fn physicsserver2dextension_ubody_is_omitting_force_integration[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyIsOmittingForceIntegration(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_body_is_omitting_force_integration(body)
}

fn physicsserver2dextension_ubody_set_state_sync_callback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetStateSyncCallback(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    callable := unsafe{&Callable(args[1])}
    i.virt_body_set_state_sync_callback(body, callable)
}

fn physicsserver2dextension_ubody_set_force_integration_callback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetForceIntegrationCallback(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    callable := unsafe{&Callable(args[1])}
    userdata := unsafe{&Variant(args[2])}
    i.virt_body_set_force_integration_callback(body, callable, userdata)
}

fn physicsserver2dextension_ubody_collide_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyCollideShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    body_shape := unsafe{&i32(args[1])}
    shape := unsafe{&RID(args[2])}
    shape_xform := unsafe{&Transform2D(args[3])}
    motion := unsafe{&Vector2(args[4])}
    results := unsafe{&voidptr(args[5])}
    result_max := unsafe{&i32(args[6])}
    result_count := unsafe{&&i32(args[7])}
    *(&bool(ret)) := i.virt_body_collide_shape(body, body_shape, shape, shape_xform, motion, results, result_max, result_count)
}

fn physicsserver2dextension_ubody_set_pickable[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodySetPickable(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    pickable := unsafe{&bool(args[1])}
    i.virt_body_set_pickable(body, pickable)
}

fn physicsserver2dextension_ubody_get_direct_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyGetDirectState(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&PhysicsDirectBodyState2D(ret)) := i.virt_body_get_direct_state(body)
}

fn physicsserver2dextension_ubody_test_motion[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionBodyTestMotion(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    from := unsafe{&Transform2D(args[1])}
    motion := unsafe{&Vector2(args[2])}
    margin := unsafe{&f64(args[3])}
    collide_separation_ray := unsafe{&bool(args[4])}
    recovery_as_collision := unsafe{&bool(args[5])}
    result := unsafe{&&PhysicsServer2DExtensionMotionResult(args[6])}
    *(&bool(ret)) := i.virt_body_test_motion(body, from, motion, margin, collide_separation_ray, recovery_as_collision, result)
}

fn physicsserver2dextension_ujoint_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_joint_create()
}

fn physicsserver2dextension_ujoint_clear[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointClear(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    i.virt_joint_clear(joint)
}

fn physicsserver2dextension_ujoint_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointSetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DJointParam(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_joint_set_param(joint, param, value)
}

fn physicsserver2dextension_ujoint_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointGetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DJointParam(args[1])}
    *(&f64(ret)) := i.virt_joint_get_param(joint, param)
}

fn physicsserver2dextension_ujoint_disable_collisions_between_bodies[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointDisableCollisionsBetweenBodies(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    disable := unsafe{&bool(args[1])}
    i.virt_joint_disable_collisions_between_bodies(joint, disable)
}

fn physicsserver2dextension_ujoint_is_disabled_collisions_between_bodies[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointIsDisabledCollisionsBetweenBodies(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_joint_is_disabled_collisions_between_bodies(joint)
}

fn physicsserver2dextension_ujoint_make_pin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointMakePin(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    anchor := unsafe{&Vector2(args[1])}
    body_a := unsafe{&RID(args[2])}
    body_b := unsafe{&RID(args[3])}
    i.virt_joint_make_pin(joint, anchor, body_a, body_b)
}

fn physicsserver2dextension_ujoint_make_groove[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointMakeGroove(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    a_groove1 := unsafe{&Vector2(args[1])}
    a_groove2 := unsafe{&Vector2(args[2])}
    b_anchor := unsafe{&Vector2(args[3])}
    body_a := unsafe{&RID(args[4])}
    body_b := unsafe{&RID(args[5])}
    i.virt_joint_make_groove(joint, a_groove1, a_groove2, b_anchor, body_a, body_b)
}

fn physicsserver2dextension_ujoint_make_damped_spring[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointMakeDampedSpring(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    anchor_a := unsafe{&Vector2(args[1])}
    anchor_b := unsafe{&Vector2(args[2])}
    body_a := unsafe{&RID(args[3])}
    body_b := unsafe{&RID(args[4])}
    i.virt_joint_make_damped_spring(joint, anchor_a, anchor_b, body_a, body_b)
}

fn physicsserver2dextension_upin_joint_set_flag[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionPinJointSetFlag(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    flag := unsafe{&PhysicsServer2DPinJointFlag(args[1])}
    enabled := unsafe{&bool(args[2])}
    i.virt_pin_joint_set_flag(joint, flag, enabled)
}

fn physicsserver2dextension_upin_joint_get_flag[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionPinJointGetFlag(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    flag := unsafe{&PhysicsServer2DPinJointFlag(args[1])}
    *(&bool(ret)) := i.virt_pin_joint_get_flag(joint, flag)
}

fn physicsserver2dextension_upin_joint_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionPinJointSetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DPinJointParam(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_pin_joint_set_param(joint, param, value)
}

fn physicsserver2dextension_upin_joint_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionPinJointGetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DPinJointParam(args[1])}
    *(&f64(ret)) := i.virt_pin_joint_get_param(joint, param)
}

fn physicsserver2dextension_udamped_spring_joint_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionDampedSpringJointSetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DDampedSpringParam(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_damped_spring_joint_set_param(joint, param, value)
}

fn physicsserver2dextension_udamped_spring_joint_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionDampedSpringJointGetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer2DDampedSpringParam(args[1])}
    *(&f64(ret)) := i.virt_damped_spring_joint_get_param(joint, param)
}

fn physicsserver2dextension_ujoint_get_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionJointGetType(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    *(&PhysicsServer2DJointType(ret)) := i.virt_joint_get_type(joint)
}

fn physicsserver2dextension_ufree_rid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionFreeRid(unsafe{&T(voidptr(inst))})
    rid := unsafe{&RID(args[0])}
    i.virt_free_rid(rid)
}

fn physicsserver2dextension_uset_active[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSetActive(unsafe{&T(voidptr(inst))})
    active := unsafe{&bool(args[0])}
    i.virt_set_active(active)
}

fn physicsserver2dextension_uinit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionInit(unsafe{&T(voidptr(inst))})
    i.virt_init()
}

fn physicsserver2dextension_ustep[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionStep(unsafe{&T(voidptr(inst))})
    step := unsafe{&f64(args[0])}
    i.virt_step(step)
}

fn physicsserver2dextension_usync[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionSync(unsafe{&T(voidptr(inst))})
    i.virt_sync()
}

fn physicsserver2dextension_uflush_queries[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionFlushQueries(unsafe{&T(voidptr(inst))})
    i.virt_flush_queries()
}

fn physicsserver2dextension_uend_sync[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionEndSync(unsafe{&T(voidptr(inst))})
    i.virt_end_sync()
}

fn physicsserver2dextension_ufinish[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionFinish(unsafe{&T(voidptr(inst))})
    i.virt_finish()
}

fn physicsserver2dextension_uis_flushing_queries[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionIsFlushingQueries(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_flushing_queries()
}

fn physicsserver2dextension_uget_process_info[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer2DExtensionGetProcessInfo(unsafe{&T(voidptr(inst))})
    process_info := unsafe{&PhysicsServer2DProcessInfo(args[0])}
    *(&i32(ret)) := i.virt_get_process_info(process_info)
}

fn physicsserver3dextension_uworld_boundary_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionWorldBoundaryShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_world_boundary_shape_create()
}

fn physicsserver3dextension_useparation_ray_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSeparationRayShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_separation_ray_shape_create()
}

fn physicsserver3dextension_usphere_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSphereShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_sphere_shape_create()
}

fn physicsserver3dextension_ubox_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBoxShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_box_shape_create()
}

fn physicsserver3dextension_ucapsule_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionCapsuleShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_capsule_shape_create()
}

fn physicsserver3dextension_ucylinder_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionCylinderShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_cylinder_shape_create()
}

fn physicsserver3dextension_uconvex_polygon_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionConvexPolygonShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_convex_polygon_shape_create()
}

fn physicsserver3dextension_uconcave_polygon_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionConcavePolygonShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_concave_polygon_shape_create()
}

fn physicsserver3dextension_uheightmap_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionHeightmapShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_heightmap_shape_create()
}

fn physicsserver3dextension_ucustom_shape_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionCustomShapeCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_custom_shape_create()
}

fn physicsserver3dextension_ushape_set_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionShapeSetData(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    data := unsafe{&Variant(args[1])}
    i.virt_shape_set_data(shape, data)
}

fn physicsserver3dextension_ushape_set_custom_solver_bias[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionShapeSetCustomSolverBias(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    bias := unsafe{&f64(args[1])}
    i.virt_shape_set_custom_solver_bias(shape, bias)
}

fn physicsserver3dextension_ushape_set_margin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionShapeSetMargin(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    margin := unsafe{&f64(args[1])}
    i.virt_shape_set_margin(shape, margin)
}

fn physicsserver3dextension_ushape_get_margin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionShapeGetMargin(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_shape_get_margin(shape)
}

fn physicsserver3dextension_ushape_get_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionShapeGetType(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    *(&PhysicsServer3DShapeType(ret)) := i.virt_shape_get_type(shape)
}

fn physicsserver3dextension_ushape_get_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionShapeGetData(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    *(&Variant(ret)) := i.virt_shape_get_data(shape)
}

fn physicsserver3dextension_ushape_get_custom_solver_bias[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionShapeGetCustomSolverBias(unsafe{&T(voidptr(inst))})
    shape := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_shape_get_custom_solver_bias(shape)
}

fn physicsserver3dextension_uspace_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_space_create()
}

fn physicsserver3dextension_uspace_set_active[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceSetActive(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    active := unsafe{&bool(args[1])}
    i.virt_space_set_active(space, active)
}

fn physicsserver3dextension_uspace_is_active[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceIsActive(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_space_is_active(space)
}

fn physicsserver3dextension_uspace_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceSetParam(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DSpaceParameter(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_space_set_param(space, param, value)
}

fn physicsserver3dextension_uspace_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceGetParam(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DSpaceParameter(args[1])}
    *(&f64(ret)) := i.virt_space_get_param(space, param)
}

fn physicsserver3dextension_uspace_get_direct_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceGetDirectState(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    *(&PhysicsDirectSpaceState3D(ret)) := i.virt_space_get_direct_state(space)
}

fn physicsserver3dextension_uspace_set_debug_contacts[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceSetDebugContacts(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    max_contacts := unsafe{&i32(args[1])}
    i.virt_space_set_debug_contacts(space, max_contacts)
}

fn physicsserver3dextension_uspace_get_contacts[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceGetContacts(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    *(&PackedVector3Array(ret)) := i.virt_space_get_contacts(space)
}

fn physicsserver3dextension_uspace_get_contact_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSpaceGetContactCount(unsafe{&T(voidptr(inst))})
    space := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_space_get_contact_count(space)
}

fn physicsserver3dextension_uarea_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_area_create()
}

fn physicsserver3dextension_uarea_set_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetSpace(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    space := unsafe{&RID(args[1])}
    i.virt_area_set_space(area, space)
}

fn physicsserver3dextension_uarea_get_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetSpace(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&RID(ret)) := i.virt_area_get_space(area)
}

fn physicsserver3dextension_uarea_add_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaAddShape(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape := unsafe{&RID(args[1])}
    transform := unsafe{&Transform3D(args[2])}
    disabled := unsafe{&bool(args[3])}
    i.virt_area_add_shape(area, shape, transform, disabled)
}

fn physicsserver3dextension_uarea_set_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetShape(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    shape := unsafe{&RID(args[2])}
    i.virt_area_set_shape(area, shape_idx, shape)
}

fn physicsserver3dextension_uarea_set_shape_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetShapeTransform(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    transform := unsafe{&Transform3D(args[2])}
    i.virt_area_set_shape_transform(area, shape_idx, transform)
}

fn physicsserver3dextension_uarea_set_shape_disabled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetShapeDisabled(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    disabled := unsafe{&bool(args[2])}
    i.virt_area_set_shape_disabled(area, shape_idx, disabled)
}

fn physicsserver3dextension_uarea_get_shape_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetShapeCount(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_area_get_shape_count(area)
}

fn physicsserver3dextension_uarea_get_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetShape(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    *(&RID(ret)) := i.virt_area_get_shape(area, shape_idx)
}

fn physicsserver3dextension_uarea_get_shape_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetShapeTransform(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    *(&Transform3D(ret)) := i.virt_area_get_shape_transform(area, shape_idx)
}

fn physicsserver3dextension_uarea_remove_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaRemoveShape(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    i.virt_area_remove_shape(area, shape_idx)
}

fn physicsserver3dextension_uarea_clear_shapes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaClearShapes(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    i.virt_area_clear_shapes(area)
}

fn physicsserver3dextension_uarea_attach_object_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaAttachObjectInstanceId(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    id := unsafe{&u64(args[1])}
    i.virt_area_attach_object_instance_id(area, id)
}

fn physicsserver3dextension_uarea_get_object_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetObjectInstanceId(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&u64(ret)) := i.virt_area_get_object_instance_id(area)
}

fn physicsserver3dextension_uarea_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetParam(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DAreaParameter(args[1])}
    value := unsafe{&Variant(args[2])}
    i.virt_area_set_param(area, param, value)
}

fn physicsserver3dextension_uarea_set_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetTransform(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    transform := unsafe{&Transform3D(args[1])}
    i.virt_area_set_transform(area, transform)
}

fn physicsserver3dextension_uarea_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetParam(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DAreaParameter(args[1])}
    *(&Variant(ret)) := i.virt_area_get_param(area, param)
}

fn physicsserver3dextension_uarea_get_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetTransform(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&Transform3D(ret)) := i.virt_area_get_transform(area)
}

fn physicsserver3dextension_uarea_set_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetCollisionLayer(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    layer := unsafe{&u32(args[1])}
    i.virt_area_set_collision_layer(area, layer)
}

fn physicsserver3dextension_uarea_get_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetCollisionLayer(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_area_get_collision_layer(area)
}

fn physicsserver3dextension_uarea_set_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetCollisionMask(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    mask := unsafe{&u32(args[1])}
    i.virt_area_set_collision_mask(area, mask)
}

fn physicsserver3dextension_uarea_get_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaGetCollisionMask(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_area_get_collision_mask(area)
}

fn physicsserver3dextension_uarea_set_monitorable[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetMonitorable(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    monitorable := unsafe{&bool(args[1])}
    i.virt_area_set_monitorable(area, monitorable)
}

fn physicsserver3dextension_uarea_set_ray_pickable[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetRayPickable(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    enable := unsafe{&bool(args[1])}
    i.virt_area_set_ray_pickable(area, enable)
}

fn physicsserver3dextension_uarea_set_monitor_callback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetMonitorCallback(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    callback := unsafe{&Callable(args[1])}
    i.virt_area_set_monitor_callback(area, callback)
}

fn physicsserver3dextension_uarea_set_area_monitor_callback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionAreaSetAreaMonitorCallback(unsafe{&T(voidptr(inst))})
    area := unsafe{&RID(args[0])}
    callback := unsafe{&Callable(args[1])}
    i.virt_area_set_area_monitor_callback(area, callback)
}

fn physicsserver3dextension_ubody_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_body_create()
}

fn physicsserver3dextension_ubody_set_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetSpace(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    space := unsafe{&RID(args[1])}
    i.virt_body_set_space(body, space)
}

fn physicsserver3dextension_ubody_get_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetSpace(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&RID(ret)) := i.virt_body_get_space(body)
}

fn physicsserver3dextension_ubody_set_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetMode(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    mode := unsafe{&PhysicsServer3DBodyMode(args[1])}
    i.virt_body_set_mode(body, mode)
}

fn physicsserver3dextension_ubody_get_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetMode(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&PhysicsServer3DBodyMode(ret)) := i.virt_body_get_mode(body)
}

fn physicsserver3dextension_ubody_add_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyAddShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape := unsafe{&RID(args[1])}
    transform := unsafe{&Transform3D(args[2])}
    disabled := unsafe{&bool(args[3])}
    i.virt_body_add_shape(body, shape, transform, disabled)
}

fn physicsserver3dextension_ubody_set_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    shape := unsafe{&RID(args[2])}
    i.virt_body_set_shape(body, shape_idx, shape)
}

fn physicsserver3dextension_ubody_set_shape_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetShapeTransform(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    transform := unsafe{&Transform3D(args[2])}
    i.virt_body_set_shape_transform(body, shape_idx, transform)
}

fn physicsserver3dextension_ubody_set_shape_disabled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetShapeDisabled(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    disabled := unsafe{&bool(args[2])}
    i.virt_body_set_shape_disabled(body, shape_idx, disabled)
}

fn physicsserver3dextension_ubody_get_shape_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetShapeCount(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_body_get_shape_count(body)
}

fn physicsserver3dextension_ubody_get_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    *(&RID(ret)) := i.virt_body_get_shape(body, shape_idx)
}

fn physicsserver3dextension_ubody_get_shape_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetShapeTransform(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    *(&Transform3D(ret)) := i.virt_body_get_shape_transform(body, shape_idx)
}

fn physicsserver3dextension_ubody_remove_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyRemoveShape(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    shape_idx := unsafe{&i32(args[1])}
    i.virt_body_remove_shape(body, shape_idx)
}

fn physicsserver3dextension_ubody_clear_shapes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyClearShapes(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    i.virt_body_clear_shapes(body)
}

fn physicsserver3dextension_ubody_attach_object_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyAttachObjectInstanceId(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    id := unsafe{&u64(args[1])}
    i.virt_body_attach_object_instance_id(body, id)
}

fn physicsserver3dextension_ubody_get_object_instance_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetObjectInstanceId(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u64(ret)) := i.virt_body_get_object_instance_id(body)
}

fn physicsserver3dextension_ubody_set_enable_continuous_collision_detection[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetEnableContinuousCollisionDetection(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    enable := unsafe{&bool(args[1])}
    i.virt_body_set_enable_continuous_collision_detection(body, enable)
}

fn physicsserver3dextension_ubody_is_continuous_collision_detection_enabled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyIsContinuousCollisionDetectionEnabled(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_body_is_continuous_collision_detection_enabled(body)
}

fn physicsserver3dextension_ubody_set_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetCollisionLayer(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    layer := unsafe{&u32(args[1])}
    i.virt_body_set_collision_layer(body, layer)
}

fn physicsserver3dextension_ubody_get_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetCollisionLayer(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_body_get_collision_layer(body)
}

fn physicsserver3dextension_ubody_set_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetCollisionMask(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    mask := unsafe{&u32(args[1])}
    i.virt_body_set_collision_mask(body, mask)
}

fn physicsserver3dextension_ubody_get_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetCollisionMask(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_body_get_collision_mask(body)
}

fn physicsserver3dextension_ubody_set_collision_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetCollisionPriority(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    priority := unsafe{&f64(args[1])}
    i.virt_body_set_collision_priority(body, priority)
}

fn physicsserver3dextension_ubody_get_collision_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetCollisionPriority(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_body_get_collision_priority(body)
}

fn physicsserver3dextension_ubody_set_user_flags[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetUserFlags(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    flags := unsafe{&u32(args[1])}
    i.virt_body_set_user_flags(body, flags)
}

fn physicsserver3dextension_ubody_get_user_flags[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetUserFlags(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_body_get_user_flags(body)
}

fn physicsserver3dextension_ubody_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetParam(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DBodyParameter(args[1])}
    value := unsafe{&Variant(args[2])}
    i.virt_body_set_param(body, param, value)
}

fn physicsserver3dextension_ubody_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetParam(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DBodyParameter(args[1])}
    *(&Variant(ret)) := i.virt_body_get_param(body, param)
}

fn physicsserver3dextension_ubody_reset_mass_properties[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyResetMassProperties(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    i.virt_body_reset_mass_properties(body)
}

fn physicsserver3dextension_ubody_set_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetState(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    state := unsafe{&PhysicsServer3DBodyState(args[1])}
    value := unsafe{&Variant(args[2])}
    i.virt_body_set_state(body, state, value)
}

fn physicsserver3dextension_ubody_get_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetState(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    state := unsafe{&PhysicsServer3DBodyState(args[1])}
    *(&Variant(ret)) := i.virt_body_get_state(body, state)
}

fn physicsserver3dextension_ubody_apply_central_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyApplyCentralImpulse(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    impulse := unsafe{&Vector3(args[1])}
    i.virt_body_apply_central_impulse(body, impulse)
}

fn physicsserver3dextension_ubody_apply_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyApplyImpulse(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    impulse := unsafe{&Vector3(args[1])}
    position := unsafe{&Vector3(args[2])}
    i.virt_body_apply_impulse(body, impulse, position)
}

fn physicsserver3dextension_ubody_apply_torque_impulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyApplyTorqueImpulse(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    impulse := unsafe{&Vector3(args[1])}
    i.virt_body_apply_torque_impulse(body, impulse)
}

fn physicsserver3dextension_ubody_apply_central_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyApplyCentralForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector3(args[1])}
    i.virt_body_apply_central_force(body, force)
}

fn physicsserver3dextension_ubody_apply_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyApplyForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector3(args[1])}
    position := unsafe{&Vector3(args[2])}
    i.virt_body_apply_force(body, force, position)
}

fn physicsserver3dextension_ubody_apply_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyApplyTorque(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    torque := unsafe{&Vector3(args[1])}
    i.virt_body_apply_torque(body, torque)
}

fn physicsserver3dextension_ubody_add_constant_central_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyAddConstantCentralForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector3(args[1])}
    i.virt_body_add_constant_central_force(body, force)
}

fn physicsserver3dextension_ubody_add_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyAddConstantForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector3(args[1])}
    position := unsafe{&Vector3(args[2])}
    i.virt_body_add_constant_force(body, force, position)
}

fn physicsserver3dextension_ubody_add_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyAddConstantTorque(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    torque := unsafe{&Vector3(args[1])}
    i.virt_body_add_constant_torque(body, torque)
}

fn physicsserver3dextension_ubody_set_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetConstantForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    force := unsafe{&Vector3(args[1])}
    i.virt_body_set_constant_force(body, force)
}

fn physicsserver3dextension_ubody_get_constant_force[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetConstantForce(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&Vector3(ret)) := i.virt_body_get_constant_force(body)
}

fn physicsserver3dextension_ubody_set_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetConstantTorque(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    torque := unsafe{&Vector3(args[1])}
    i.virt_body_set_constant_torque(body, torque)
}

fn physicsserver3dextension_ubody_get_constant_torque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetConstantTorque(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&Vector3(ret)) := i.virt_body_get_constant_torque(body)
}

fn physicsserver3dextension_ubody_set_axis_velocity[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetAxisVelocity(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    axis_velocity := unsafe{&Vector3(args[1])}
    i.virt_body_set_axis_velocity(body, axis_velocity)
}

fn physicsserver3dextension_ubody_set_axis_lock[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetAxisLock(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    axis := unsafe{&PhysicsServer3DBodyAxis(args[1])}
    gdlock := unsafe{&bool(args[2])}
    i.virt_body_set_axis_lock(body, axis, gdlock)
}

fn physicsserver3dextension_ubody_is_axis_locked[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyIsAxisLocked(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    axis := unsafe{&PhysicsServer3DBodyAxis(args[1])}
    *(&bool(ret)) := i.virt_body_is_axis_locked(body, axis)
}

fn physicsserver3dextension_ubody_add_collision_exception[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyAddCollisionException(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    excepted_body := unsafe{&RID(args[1])}
    i.virt_body_add_collision_exception(body, excepted_body)
}

fn physicsserver3dextension_ubody_remove_collision_exception[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyRemoveCollisionException(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    excepted_body := unsafe{&RID(args[1])}
    i.virt_body_remove_collision_exception(body, excepted_body)
}

fn physicsserver3dextension_ubody_get_collision_exceptions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetCollisionExceptions(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&Array(ret)) := i.virt_body_get_collision_exceptions(body)
}

fn physicsserver3dextension_ubody_set_max_contacts_reported[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetMaxContactsReported(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    amount := unsafe{&i32(args[1])}
    i.virt_body_set_max_contacts_reported(body, amount)
}

fn physicsserver3dextension_ubody_get_max_contacts_reported[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetMaxContactsReported(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_body_get_max_contacts_reported(body)
}

fn physicsserver3dextension_ubody_set_contacts_reported_depth_threshold[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetContactsReportedDepthThreshold(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    threshold := unsafe{&f64(args[1])}
    i.virt_body_set_contacts_reported_depth_threshold(body, threshold)
}

fn physicsserver3dextension_ubody_get_contacts_reported_depth_threshold[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetContactsReportedDepthThreshold(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_body_get_contacts_reported_depth_threshold(body)
}

fn physicsserver3dextension_ubody_set_omit_force_integration[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetOmitForceIntegration(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    enable := unsafe{&bool(args[1])}
    i.virt_body_set_omit_force_integration(body, enable)
}

fn physicsserver3dextension_ubody_is_omitting_force_integration[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyIsOmittingForceIntegration(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_body_is_omitting_force_integration(body)
}

fn physicsserver3dextension_ubody_set_state_sync_callback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetStateSyncCallback(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    callable := unsafe{&Callable(args[1])}
    i.virt_body_set_state_sync_callback(body, callable)
}

fn physicsserver3dextension_ubody_set_force_integration_callback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetForceIntegrationCallback(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    callable := unsafe{&Callable(args[1])}
    userdata := unsafe{&Variant(args[2])}
    i.virt_body_set_force_integration_callback(body, callable, userdata)
}

fn physicsserver3dextension_ubody_set_ray_pickable[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodySetRayPickable(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    enable := unsafe{&bool(args[1])}
    i.virt_body_set_ray_pickable(body, enable)
}

fn physicsserver3dextension_ubody_test_motion[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyTestMotion(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    from := unsafe{&Transform3D(args[1])}
    motion := unsafe{&Vector3(args[2])}
    margin := unsafe{&f64(args[3])}
    max_collisions := unsafe{&i32(args[4])}
    collide_separation_ray := unsafe{&bool(args[5])}
    recovery_as_collision := unsafe{&bool(args[6])}
    result := unsafe{&&PhysicsServer3DExtensionMotionResult(args[7])}
    *(&bool(ret)) := i.virt_body_test_motion(body, from, motion, margin, max_collisions, collide_separation_ray, recovery_as_collision, result)
}

fn physicsserver3dextension_ubody_get_direct_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionBodyGetDirectState(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&PhysicsDirectBodyState3D(ret)) := i.virt_body_get_direct_state(body)
}

fn physicsserver3dextension_usoft_body_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_soft_body_create()
}

fn physicsserver3dextension_usoft_body_update_rendering_server[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyUpdateRenderingServer(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    rendering_server_handler := unsafe{&PhysicsServer3DRenderingServerHandler(args[1])}
    i.virt_soft_body_update_rendering_server(body, rendering_server_handler)
}

fn physicsserver3dextension_usoft_body_set_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetSpace(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    space := unsafe{&RID(args[1])}
    i.virt_soft_body_set_space(body, space)
}

fn physicsserver3dextension_usoft_body_get_space[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetSpace(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&RID(ret)) := i.virt_soft_body_get_space(body)
}

fn physicsserver3dextension_usoft_body_set_ray_pickable[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetRayPickable(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    enable := unsafe{&bool(args[1])}
    i.virt_soft_body_set_ray_pickable(body, enable)
}

fn physicsserver3dextension_usoft_body_set_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetCollisionLayer(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    layer := unsafe{&u32(args[1])}
    i.virt_soft_body_set_collision_layer(body, layer)
}

fn physicsserver3dextension_usoft_body_get_collision_layer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetCollisionLayer(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_soft_body_get_collision_layer(body)
}

fn physicsserver3dextension_usoft_body_set_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetCollisionMask(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    mask := unsafe{&u32(args[1])}
    i.virt_soft_body_set_collision_mask(body, mask)
}

fn physicsserver3dextension_usoft_body_get_collision_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetCollisionMask(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&u32(ret)) := i.virt_soft_body_get_collision_mask(body)
}

fn physicsserver3dextension_usoft_body_add_collision_exception[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyAddCollisionException(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    body_b := unsafe{&RID(args[1])}
    i.virt_soft_body_add_collision_exception(body, body_b)
}

fn physicsserver3dextension_usoft_body_remove_collision_exception[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyRemoveCollisionException(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    body_b := unsafe{&RID(args[1])}
    i.virt_soft_body_remove_collision_exception(body, body_b)
}

fn physicsserver3dextension_usoft_body_get_collision_exceptions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetCollisionExceptions(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&Array(ret)) := i.virt_soft_body_get_collision_exceptions(body)
}

fn physicsserver3dextension_usoft_body_set_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetState(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    state := unsafe{&PhysicsServer3DBodyState(args[1])}
    variant := unsafe{&Variant(args[2])}
    i.virt_soft_body_set_state(body, state, variant)
}

fn physicsserver3dextension_usoft_body_get_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetState(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    state := unsafe{&PhysicsServer3DBodyState(args[1])}
    *(&Variant(ret)) := i.virt_soft_body_get_state(body, state)
}

fn physicsserver3dextension_usoft_body_set_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetTransform(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    transform := unsafe{&Transform3D(args[1])}
    i.virt_soft_body_set_transform(body, transform)
}

fn physicsserver3dextension_usoft_body_set_simulation_precision[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetSimulationPrecision(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    simulation_precision := unsafe{&i32(args[1])}
    i.virt_soft_body_set_simulation_precision(body, simulation_precision)
}

fn physicsserver3dextension_usoft_body_get_simulation_precision[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetSimulationPrecision(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_soft_body_get_simulation_precision(body)
}

fn physicsserver3dextension_usoft_body_set_total_mass[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetTotalMass(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    total_mass := unsafe{&f64(args[1])}
    i.virt_soft_body_set_total_mass(body, total_mass)
}

fn physicsserver3dextension_usoft_body_get_total_mass[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetTotalMass(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_soft_body_get_total_mass(body)
}

fn physicsserver3dextension_usoft_body_set_linear_stiffness[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetLinearStiffness(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    linear_stiffness := unsafe{&f64(args[1])}
    i.virt_soft_body_set_linear_stiffness(body, linear_stiffness)
}

fn physicsserver3dextension_usoft_body_get_linear_stiffness[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetLinearStiffness(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_soft_body_get_linear_stiffness(body)
}

fn physicsserver3dextension_usoft_body_set_pressure_coefficient[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetPressureCoefficient(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    pressure_coefficient := unsafe{&f64(args[1])}
    i.virt_soft_body_set_pressure_coefficient(body, pressure_coefficient)
}

fn physicsserver3dextension_usoft_body_get_pressure_coefficient[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetPressureCoefficient(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_soft_body_get_pressure_coefficient(body)
}

fn physicsserver3dextension_usoft_body_set_damping_coefficient[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetDampingCoefficient(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    damping_coefficient := unsafe{&f64(args[1])}
    i.virt_soft_body_set_damping_coefficient(body, damping_coefficient)
}

fn physicsserver3dextension_usoft_body_get_damping_coefficient[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetDampingCoefficient(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_soft_body_get_damping_coefficient(body)
}

fn physicsserver3dextension_usoft_body_set_drag_coefficient[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetDragCoefficient(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    drag_coefficient := unsafe{&f64(args[1])}
    i.virt_soft_body_set_drag_coefficient(body, drag_coefficient)
}

fn physicsserver3dextension_usoft_body_get_drag_coefficient[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetDragCoefficient(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_soft_body_get_drag_coefficient(body)
}

fn physicsserver3dextension_usoft_body_set_mesh[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodySetMesh(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    mesh := unsafe{&RID(args[1])}
    i.virt_soft_body_set_mesh(body, mesh)
}

fn physicsserver3dextension_usoft_body_get_bounds[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetBounds(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    *(&AABB(ret)) := i.virt_soft_body_get_bounds(body)
}

fn physicsserver3dextension_usoft_body_move_point[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyMovePoint(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    point_index := unsafe{&i32(args[1])}
    global_position := unsafe{&Vector3(args[2])}
    i.virt_soft_body_move_point(body, point_index, global_position)
}

fn physicsserver3dextension_usoft_body_get_point_global_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyGetPointGlobalPosition(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    point_index := unsafe{&i32(args[1])}
    *(&Vector3(ret)) := i.virt_soft_body_get_point_global_position(body, point_index)
}

fn physicsserver3dextension_usoft_body_remove_all_pinned_points[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyRemoveAllPinnedPoints(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    i.virt_soft_body_remove_all_pinned_points(body)
}

fn physicsserver3dextension_usoft_body_pin_point[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyPinPoint(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    point_index := unsafe{&i32(args[1])}
    pin := unsafe{&bool(args[2])}
    i.virt_soft_body_pin_point(body, point_index, pin)
}

fn physicsserver3dextension_usoft_body_is_point_pinned[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSoftBodyIsPointPinned(unsafe{&T(voidptr(inst))})
    body := unsafe{&RID(args[0])}
    point_index := unsafe{&i32(args[1])}
    *(&bool(ret)) := i.virt_soft_body_is_point_pinned(body, point_index)
}

fn physicsserver3dextension_ujoint_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointCreate(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_joint_create()
}

fn physicsserver3dextension_ujoint_clear[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointClear(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    i.virt_joint_clear(joint)
}

fn physicsserver3dextension_ujoint_make_pin[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointMakePin(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    body_a := unsafe{&RID(args[1])}
    local_a := unsafe{&Vector3(args[2])}
    body_b := unsafe{&RID(args[3])}
    local_b := unsafe{&Vector3(args[4])}
    i.virt_joint_make_pin(joint, body_a, local_a, body_b, local_b)
}

fn physicsserver3dextension_upin_joint_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionPinJointSetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DPinJointParam(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_pin_joint_set_param(joint, param, value)
}

fn physicsserver3dextension_upin_joint_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionPinJointGetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DPinJointParam(args[1])}
    *(&f64(ret)) := i.virt_pin_joint_get_param(joint, param)
}

fn physicsserver3dextension_upin_joint_set_local_a[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionPinJointSetLocalA(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    local_a := unsafe{&Vector3(args[1])}
    i.virt_pin_joint_set_local_a(joint, local_a)
}

fn physicsserver3dextension_upin_joint_get_local_a[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionPinJointGetLocalA(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    *(&Vector3(ret)) := i.virt_pin_joint_get_local_a(joint)
}

fn physicsserver3dextension_upin_joint_set_local_b[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionPinJointSetLocalB(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    local_b := unsafe{&Vector3(args[1])}
    i.virt_pin_joint_set_local_b(joint, local_b)
}

fn physicsserver3dextension_upin_joint_get_local_b[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionPinJointGetLocalB(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    *(&Vector3(ret)) := i.virt_pin_joint_get_local_b(joint)
}

fn physicsserver3dextension_ujoint_make_hinge[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointMakeHinge(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    body_a := unsafe{&RID(args[1])}
    hinge_a := unsafe{&Transform3D(args[2])}
    body_b := unsafe{&RID(args[3])}
    hinge_b := unsafe{&Transform3D(args[4])}
    i.virt_joint_make_hinge(joint, body_a, hinge_a, body_b, hinge_b)
}

fn physicsserver3dextension_ujoint_make_hinge_simple[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointMakeHingeSimple(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    body_a := unsafe{&RID(args[1])}
    pivot_a := unsafe{&Vector3(args[2])}
    axis_a := unsafe{&Vector3(args[3])}
    body_b := unsafe{&RID(args[4])}
    pivot_b := unsafe{&Vector3(args[5])}
    axis_b := unsafe{&Vector3(args[6])}
    i.virt_joint_make_hinge_simple(joint, body_a, pivot_a, axis_a, body_b, pivot_b, axis_b)
}

fn physicsserver3dextension_uhinge_joint_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionHingeJointSetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DHingeJointParam(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_hinge_joint_set_param(joint, param, value)
}

fn physicsserver3dextension_uhinge_joint_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionHingeJointGetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DHingeJointParam(args[1])}
    *(&f64(ret)) := i.virt_hinge_joint_get_param(joint, param)
}

fn physicsserver3dextension_uhinge_joint_set_flag[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionHingeJointSetFlag(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    flag := unsafe{&PhysicsServer3DHingeJointFlag(args[1])}
    enabled := unsafe{&bool(args[2])}
    i.virt_hinge_joint_set_flag(joint, flag, enabled)
}

fn physicsserver3dextension_uhinge_joint_get_flag[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionHingeJointGetFlag(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    flag := unsafe{&PhysicsServer3DHingeJointFlag(args[1])}
    *(&bool(ret)) := i.virt_hinge_joint_get_flag(joint, flag)
}

fn physicsserver3dextension_ujoint_make_slider[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointMakeSlider(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    body_a := unsafe{&RID(args[1])}
    local_ref_a := unsafe{&Transform3D(args[2])}
    body_b := unsafe{&RID(args[3])}
    local_ref_b := unsafe{&Transform3D(args[4])}
    i.virt_joint_make_slider(joint, body_a, local_ref_a, body_b, local_ref_b)
}

fn physicsserver3dextension_uslider_joint_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSliderJointSetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DSliderJointParam(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_slider_joint_set_param(joint, param, value)
}

fn physicsserver3dextension_uslider_joint_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSliderJointGetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DSliderJointParam(args[1])}
    *(&f64(ret)) := i.virt_slider_joint_get_param(joint, param)
}

fn physicsserver3dextension_ujoint_make_cone_twist[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointMakeConeTwist(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    body_a := unsafe{&RID(args[1])}
    local_ref_a := unsafe{&Transform3D(args[2])}
    body_b := unsafe{&RID(args[3])}
    local_ref_b := unsafe{&Transform3D(args[4])}
    i.virt_joint_make_cone_twist(joint, body_a, local_ref_a, body_b, local_ref_b)
}

fn physicsserver3dextension_ucone_twist_joint_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionConeTwistJointSetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DConeTwistJointParam(args[1])}
    value := unsafe{&f64(args[2])}
    i.virt_cone_twist_joint_set_param(joint, param, value)
}

fn physicsserver3dextension_ucone_twist_joint_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionConeTwistJointGetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    param := unsafe{&PhysicsServer3DConeTwistJointParam(args[1])}
    *(&f64(ret)) := i.virt_cone_twist_joint_get_param(joint, param)
}

fn physicsserver3dextension_ujoint_make_generic_6dof[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointMakeGeneric6dof(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    body_a := unsafe{&RID(args[1])}
    local_ref_a := unsafe{&Transform3D(args[2])}
    body_b := unsafe{&RID(args[3])}
    local_ref_b := unsafe{&Transform3D(args[4])}
    i.virt_joint_make_generic_6dof(joint, body_a, local_ref_a, body_b, local_ref_b)
}

fn physicsserver3dextension_ugeneric_6dof_joint_set_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionGeneric6dofJointSetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    axis := unsafe{&Vector3Axis(args[1])}
    param := unsafe{&PhysicsServer3DG6DOFJointAxisParam(args[2])}
    value := unsafe{&f64(args[3])}
    i.virt_generic_6dof_joint_set_param(joint, axis, param, value)
}

fn physicsserver3dextension_ugeneric_6dof_joint_get_param[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionGeneric6dofJointGetParam(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    axis := unsafe{&Vector3Axis(args[1])}
    param := unsafe{&PhysicsServer3DG6DOFJointAxisParam(args[2])}
    *(&f64(ret)) := i.virt_generic_6dof_joint_get_param(joint, axis, param)
}

fn physicsserver3dextension_ugeneric_6dof_joint_set_flag[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionGeneric6dofJointSetFlag(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    axis := unsafe{&Vector3Axis(args[1])}
    flag := unsafe{&PhysicsServer3DG6DOFJointAxisFlag(args[2])}
    enable := unsafe{&bool(args[3])}
    i.virt_generic_6dof_joint_set_flag(joint, axis, flag, enable)
}

fn physicsserver3dextension_ugeneric_6dof_joint_get_flag[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionGeneric6dofJointGetFlag(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    axis := unsafe{&Vector3Axis(args[1])}
    flag := unsafe{&PhysicsServer3DG6DOFJointAxisFlag(args[2])}
    *(&bool(ret)) := i.virt_generic_6dof_joint_get_flag(joint, axis, flag)
}

fn physicsserver3dextension_ujoint_get_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointGetType(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    *(&PhysicsServer3DJointType(ret)) := i.virt_joint_get_type(joint)
}

fn physicsserver3dextension_ujoint_set_solver_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointSetSolverPriority(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    priority := unsafe{&i32(args[1])}
    i.virt_joint_set_solver_priority(joint, priority)
}

fn physicsserver3dextension_ujoint_get_solver_priority[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointGetSolverPriority(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    *(&i32(ret)) := i.virt_joint_get_solver_priority(joint)
}

fn physicsserver3dextension_ujoint_disable_collisions_between_bodies[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointDisableCollisionsBetweenBodies(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    disable := unsafe{&bool(args[1])}
    i.virt_joint_disable_collisions_between_bodies(joint, disable)
}

fn physicsserver3dextension_ujoint_is_disabled_collisions_between_bodies[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionJointIsDisabledCollisionsBetweenBodies(unsafe{&T(voidptr(inst))})
    joint := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_joint_is_disabled_collisions_between_bodies(joint)
}

fn physicsserver3dextension_ufree_rid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionFreeRid(unsafe{&T(voidptr(inst))})
    rid := unsafe{&RID(args[0])}
    i.virt_free_rid(rid)
}

fn physicsserver3dextension_uset_active[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSetActive(unsafe{&T(voidptr(inst))})
    active := unsafe{&bool(args[0])}
    i.virt_set_active(active)
}

fn physicsserver3dextension_uinit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionInit(unsafe{&T(voidptr(inst))})
    i.virt_init()
}

fn physicsserver3dextension_ustep[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionStep(unsafe{&T(voidptr(inst))})
    step := unsafe{&f64(args[0])}
    i.virt_step(step)
}

fn physicsserver3dextension_usync[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionSync(unsafe{&T(voidptr(inst))})
    i.virt_sync()
}

fn physicsserver3dextension_uflush_queries[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionFlushQueries(unsafe{&T(voidptr(inst))})
    i.virt_flush_queries()
}

fn physicsserver3dextension_uend_sync[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionEndSync(unsafe{&T(voidptr(inst))})
    i.virt_end_sync()
}

fn physicsserver3dextension_ufinish[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionFinish(unsafe{&T(voidptr(inst))})
    i.virt_finish()
}

fn physicsserver3dextension_uis_flushing_queries[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionIsFlushingQueries(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_flushing_queries()
}

fn physicsserver3dextension_uget_process_info[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DExtensionGetProcessInfo(unsafe{&T(voidptr(inst))})
    process_info := unsafe{&PhysicsServer3DProcessInfo(args[0])}
    *(&i32(ret)) := i.virt_get_process_info(process_info)
}

fn physicsserver3drenderingserverhandler_uset_vertex[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DRenderingServerHandlerSetVertex(unsafe{&T(voidptr(inst))})
    vertex_id := unsafe{&i32(args[0])}
    vertex := unsafe{&Vector3(args[1])}
    i.virt_set_vertex(vertex_id, vertex)
}

fn physicsserver3drenderingserverhandler_uset_normal[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DRenderingServerHandlerSetNormal(unsafe{&T(voidptr(inst))})
    vertex_id := unsafe{&i32(args[0])}
    normal := unsafe{&Vector3(args[1])}
    i.virt_set_normal(vertex_id, normal)
}

fn physicsserver3drenderingserverhandler_uset_aabb[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPhysicsServer3DRenderingServerHandlerSetAabb(unsafe{&T(voidptr(inst))})
    aabb := unsafe{&AABB(args[0])}
    i.virt_set_aabb(aabb)
}

fn primitivemesh_ucreate_mesh_array[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IPrimitiveMeshCreateMeshArray(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_create_mesh_array()
}

fn range_uvalue_changed[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IRangeValueChanged(unsafe{&T(voidptr(inst))})
    new_value := unsafe{&f64(args[0])}
    i.virt_value_changed(new_value)
}

fn renderscenebuffersextension_uconfigure[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IRenderSceneBuffersExtensionConfigure(unsafe{&T(voidptr(inst))})
    config := unsafe{&RenderSceneBuffersConfiguration(args[0])}
    i.virt_configure(config)
}

fn renderscenebuffersextension_uset_fsr_sharpness[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IRenderSceneBuffersExtensionSetFsrSharpness(unsafe{&T(voidptr(inst))})
    fsr_sharpness := unsafe{&f64(args[0])}
    i.virt_set_fsr_sharpness(fsr_sharpness)
}

fn renderscenebuffersextension_uset_texture_mipmap_bias[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IRenderSceneBuffersExtensionSetTextureMipmapBias(unsafe{&T(voidptr(inst))})
    texture_mipmap_bias := unsafe{&f64(args[0])}
    i.virt_set_texture_mipmap_bias(texture_mipmap_bias)
}

fn renderscenebuffersextension_uset_use_debanding[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IRenderSceneBuffersExtensionSetUseDebanding(unsafe{&T(voidptr(inst))})
    use_debanding := unsafe{&bool(args[0])}
    i.virt_set_use_debanding(use_debanding)
}

fn resource_usetup_local_to_scene[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceSetupLocalToScene(unsafe{&T(voidptr(inst))})
    i.virt_setup_local_to_scene()
}

fn resourceformatloader_uget_recognized_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderGetRecognizedExtensions(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_recognized_extensions()
}

fn resourceformatloader_urecognize_path[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderRecognizePath(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    type_name := unsafe{&StringName(args[1])}
    *(&bool(ret)) := i.virt_recognize_path(path, type_name)
}

fn resourceformatloader_uhandles_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderHandlesType(unsafe{&T(voidptr(inst))})
    type_name := unsafe{&StringName(args[0])}
    *(&bool(ret)) := i.virt_handles_type(type_name)
}

fn resourceformatloader_uget_resource_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderGetResourceType(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    *(&String(ret)) := i.virt_get_resource_type(path)
}

fn resourceformatloader_uget_resource_script_class[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderGetResourceScriptClass(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    *(&String(ret)) := i.virt_get_resource_script_class(path)
}

fn resourceformatloader_uget_resource_uid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderGetResourceUid(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    *(&i64(ret)) := i.virt_get_resource_uid(path)
}

fn resourceformatloader_uget_dependencies[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderGetDependencies(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    add_types := unsafe{&bool(args[1])}
    *(&PackedStringArray(ret)) := i.virt_get_dependencies(path, add_types)
}

fn resourceformatloader_urename_dependencies[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderRenameDependencies(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    renames := unsafe{&Dictionary(args[1])}
    *(&GDError(ret)) := i.virt_rename_dependencies(path, renames)
}

fn resourceformatloader_uexists[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderExists(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_exists(path)
}

fn resourceformatloader_uget_classes_used[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderGetClassesUsed(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    *(&PackedStringArray(ret)) := i.virt_get_classes_used(path)
}

fn resourceformatloader_uload[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatLoaderLoad(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    original_path := unsafe{&String(args[1])}
    use_sub_threads := unsafe{&bool(args[2])}
    cache_mode := unsafe{&i32(args[3])}
    *(&Variant(ret)) := i.virt_load(path, original_path, use_sub_threads, cache_mode)
}

fn resourceformatsaver_usave[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatSaverSave(unsafe{&T(voidptr(inst))})
    resource := unsafe{&Resource(args[0])}
    path := unsafe{&String(args[1])}
    flags := unsafe{&u32(args[2])}
    *(&GDError(ret)) := i.virt_save(resource, path, flags)
}

fn resourceformatsaver_uset_uid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatSaverSetUid(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    uid := unsafe{&i64(args[1])}
    *(&GDError(ret)) := i.virt_set_uid(path, uid)
}

fn resourceformatsaver_urecognize[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatSaverRecognize(unsafe{&T(voidptr(inst))})
    resource := unsafe{&Resource(args[0])}
    *(&bool(ret)) := i.virt_recognize(resource)
}

fn resourceformatsaver_uget_recognized_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatSaverGetRecognizedExtensions(unsafe{&T(voidptr(inst))})
    resource := unsafe{&Resource(args[0])}
    *(&PackedStringArray(ret)) := i.virt_get_recognized_extensions(resource)
}

fn resourceformatsaver_urecognize_path[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IResourceFormatSaverRecognizePath(unsafe{&T(voidptr(inst))})
    resource := unsafe{&Resource(args[0])}
    path := unsafe{&String(args[1])}
    *(&bool(ret)) := i.virt_recognize_path(resource, path)
}

fn richtexteffect_uprocess_custom_fx[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IRichTextEffectProcessCustomFx(unsafe{&T(voidptr(inst))})
    char_fx := unsafe{&CharFXTransform(args[0])}
    *(&bool(ret)) := i.virt_process_custom_fx(char_fx)
}

fn rigidbody2d_uintegrate_forces[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IRigidBody2DIntegrateForces(unsafe{&T(voidptr(inst))})
    state := unsafe{&PhysicsDirectBodyState2D(args[0])}
    i.virt_integrate_forces(state)
}

fn rigidbody3d_uintegrate_forces[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IRigidBody3DIntegrateForces(unsafe{&T(voidptr(inst))})
    state := unsafe{&PhysicsDirectBodyState3D(args[0])}
    i.virt_integrate_forces(state)
}

fn scriptextension_ueditor_can_reload_from_file[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionEditorCanReloadFromFile(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_editor_can_reload_from_file()
}

fn scriptextension_uplaceholder_erased[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionPlaceholderErased(unsafe{&T(voidptr(inst))})
    placeholder := unsafe{&voidptr(args[0])}
    i.virt_placeholder_erased(placeholder)
}

fn scriptextension_ucan_instantiate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionCanInstantiate(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_can_instantiate()
}

fn scriptextension_uget_base_script[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetBaseScript(unsafe{&T(voidptr(inst))})
    *(&Script(ret)) := i.virt_get_base_script()
}

fn scriptextension_uget_global_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetGlobalName(unsafe{&T(voidptr(inst))})
    *(&StringName(ret)) := i.virt_get_global_name()
}

fn scriptextension_uinherits_script[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionInheritsScript(unsafe{&T(voidptr(inst))})
    script := unsafe{&Script(args[0])}
    *(&bool(ret)) := i.virt_inherits_script(script)
}

fn scriptextension_uget_instance_base_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetInstanceBaseType(unsafe{&T(voidptr(inst))})
    *(&StringName(ret)) := i.virt_get_instance_base_type()
}

fn scriptextension_uinstance_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionInstanceCreate(unsafe{&T(voidptr(inst))})
    for_object := unsafe{&Object(args[0])}
    *(&voidptr(ret)) := i.virt_instance_create(for_object)
}

fn scriptextension_uplaceholder_instance_create[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionPlaceholderInstanceCreate(unsafe{&T(voidptr(inst))})
    for_object := unsafe{&Object(args[0])}
    *(&voidptr(ret)) := i.virt_placeholder_instance_create(for_object)
}

fn scriptextension_uinstance_has[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionInstanceHas(unsafe{&T(voidptr(inst))})
    object := unsafe{&Object(args[0])}
    *(&bool(ret)) := i.virt_instance_has(object)
}

fn scriptextension_uhas_source_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionHasSourceCode(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_has_source_code()
}

fn scriptextension_uget_source_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetSourceCode(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_source_code()
}

fn scriptextension_uset_source_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionSetSourceCode(unsafe{&T(voidptr(inst))})
    code := unsafe{&String(args[0])}
    i.virt_set_source_code(code)
}

fn scriptextension_ureload[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionReload(unsafe{&T(voidptr(inst))})
    keep_state := unsafe{&bool(args[0])}
    *(&GDError(ret)) := i.virt_reload(keep_state)
}

fn scriptextension_uget_documentation[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetDocumentation(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_documentation()
}

fn scriptextension_uget_class_icon_path[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetClassIconPath(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_class_icon_path()
}

fn scriptextension_uhas_method[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionHasMethod(unsafe{&T(voidptr(inst))})
    method := unsafe{&StringName(args[0])}
    *(&bool(ret)) := i.virt_has_method(method)
}

fn scriptextension_uhas_static_method[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionHasStaticMethod(unsafe{&T(voidptr(inst))})
    method := unsafe{&StringName(args[0])}
    *(&bool(ret)) := i.virt_has_static_method(method)
}

fn scriptextension_uget_method_info[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetMethodInfo(unsafe{&T(voidptr(inst))})
    method := unsafe{&StringName(args[0])}
    *(&Dictionary(ret)) := i.virt_get_method_info(method)
}

fn scriptextension_uis_tool[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionIsTool(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_tool()
}

fn scriptextension_uis_valid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionIsValid(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_valid()
}

fn scriptextension_uis_abstract[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionIsAbstract(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_abstract()
}

fn scriptextension_uget_language[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetLanguage(unsafe{&T(voidptr(inst))})
    *(&ScriptLanguage(ret)) := i.virt_get_language()
}

fn scriptextension_uhas_script_signal[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionHasScriptSignal(unsafe{&T(voidptr(inst))})
    signal := unsafe{&StringName(args[0])}
    *(&bool(ret)) := i.virt_has_script_signal(signal)
}

fn scriptextension_uget_script_signal_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetScriptSignalList(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_script_signal_list()
}

fn scriptextension_uhas_property_default_value[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionHasPropertyDefaultValue(unsafe{&T(voidptr(inst))})
    property := unsafe{&StringName(args[0])}
    *(&bool(ret)) := i.virt_has_property_default_value(property)
}

fn scriptextension_uget_property_default_value[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetPropertyDefaultValue(unsafe{&T(voidptr(inst))})
    property := unsafe{&StringName(args[0])}
    *(&Variant(ret)) := i.virt_get_property_default_value(property)
}

fn scriptextension_uupdate_exports[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionUpdateExports(unsafe{&T(voidptr(inst))})
    i.virt_update_exports()
}

fn scriptextension_uget_script_method_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetScriptMethodList(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_script_method_list()
}

fn scriptextension_uget_script_property_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetScriptPropertyList(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_script_property_list()
}

fn scriptextension_uget_member_line[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetMemberLine(unsafe{&T(voidptr(inst))})
    member := unsafe{&StringName(args[0])}
    *(&i32(ret)) := i.virt_get_member_line(member)
}

fn scriptextension_uget_constants[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetConstants(unsafe{&T(voidptr(inst))})
    *(&Dictionary(ret)) := i.virt_get_constants()
}

fn scriptextension_uget_members[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetMembers(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_members()
}

fn scriptextension_uis_placeholder_fallback_enabled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionIsPlaceholderFallbackEnabled(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_placeholder_fallback_enabled()
}

fn scriptextension_uget_rpc_config[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptExtensionGetRpcConfig(unsafe{&T(voidptr(inst))})
    *(&Variant(ret)) := i.virt_get_rpc_config()
}

fn scriptlanguageextension_uget_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_name()
}

fn scriptlanguageextension_uinit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionInit(unsafe{&T(voidptr(inst))})
    i.virt_init()
}

fn scriptlanguageextension_uget_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetType(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_type()
}

fn scriptlanguageextension_uget_extension[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetExtension(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_extension()
}

fn scriptlanguageextension_ufinish[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionFinish(unsafe{&T(voidptr(inst))})
    i.virt_finish()
}

fn scriptlanguageextension_uget_reserved_words[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetReservedWords(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_reserved_words()
}

fn scriptlanguageextension_uis_control_flow_keyword[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionIsControlFlowKeyword(unsafe{&T(voidptr(inst))})
    keyword := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_is_control_flow_keyword(keyword)
}

fn scriptlanguageextension_uget_comment_delimiters[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetCommentDelimiters(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_comment_delimiters()
}

fn scriptlanguageextension_uget_doc_comment_delimiters[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetDocCommentDelimiters(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_doc_comment_delimiters()
}

fn scriptlanguageextension_uget_string_delimiters[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetStringDelimiters(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_string_delimiters()
}

fn scriptlanguageextension_umake_template[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionMakeTemplate(unsafe{&T(voidptr(inst))})
    template := unsafe{&String(args[0])}
    class_name := unsafe{&String(args[1])}
    base_class_name := unsafe{&String(args[2])}
    *(&Script(ret)) := i.virt_make_template(template, class_name, base_class_name)
}

fn scriptlanguageextension_uget_built_in_templates[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetBuiltInTemplates(unsafe{&T(voidptr(inst))})
    object := unsafe{&StringName(args[0])}
    *(&Array(ret)) := i.virt_get_built_in_templates(object)
}

fn scriptlanguageextension_uis_using_templates[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionIsUsingTemplates(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_using_templates()
}

fn scriptlanguageextension_uvalidate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionValidate(unsafe{&T(voidptr(inst))})
    script := unsafe{&String(args[0])}
    path := unsafe{&String(args[1])}
    validate_functions := unsafe{&bool(args[2])}
    validate_errors := unsafe{&bool(args[3])}
    validate_warnings := unsafe{&bool(args[4])}
    validate_safe_lines := unsafe{&bool(args[5])}
    *(&Dictionary(ret)) := i.virt_validate(script, path, validate_functions, validate_errors, validate_warnings, validate_safe_lines)
}

fn scriptlanguageextension_uvalidate_path[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionValidatePath(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    *(&String(ret)) := i.virt_validate_path(path)
}

fn scriptlanguageextension_ucreate_script[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionCreateScript(unsafe{&T(voidptr(inst))})
    *(&Object(ret)) := i.virt_create_script()
}

fn scriptlanguageextension_uhas_named_classes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionHasNamedClasses(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_has_named_classes()
}

fn scriptlanguageextension_usupports_builtin_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionSupportsBuiltinMode(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_supports_builtin_mode()
}

fn scriptlanguageextension_usupports_documentation[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionSupportsDocumentation(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_supports_documentation()
}

fn scriptlanguageextension_ucan_inherit_from_file[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionCanInheritFromFile(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_can_inherit_from_file()
}

fn scriptlanguageextension_ufind_function[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionFindFunction(unsafe{&T(voidptr(inst))})
    class_name := unsafe{&String(args[0])}
    function_name := unsafe{&String(args[1])}
    *(&i32(ret)) := i.virt_find_function(class_name, function_name)
}

fn scriptlanguageextension_umake_function[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionMakeFunction(unsafe{&T(voidptr(inst))})
    class_name := unsafe{&String(args[0])}
    function_name := unsafe{&String(args[1])}
    function_args := unsafe{&PackedStringArray(args[2])}
    *(&String(ret)) := i.virt_make_function(class_name, function_name, function_args)
}

fn scriptlanguageextension_uopen_in_external_editor[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionOpenInExternalEditor(unsafe{&T(voidptr(inst))})
    script := unsafe{&Script(args[0])}
    line := unsafe{&i32(args[1])}
    column := unsafe{&i32(args[2])}
    *(&GDError(ret)) := i.virt_open_in_external_editor(script, line, column)
}

fn scriptlanguageextension_uoverrides_external_editor[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionOverridesExternalEditor(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_overrides_external_editor()
}

fn scriptlanguageextension_ucomplete_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionCompleteCode(unsafe{&T(voidptr(inst))})
    code := unsafe{&String(args[0])}
    path := unsafe{&String(args[1])}
    owner := unsafe{&Object(args[2])}
    *(&Dictionary(ret)) := i.virt_complete_code(code, path, owner)
}

fn scriptlanguageextension_ulookup_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionLookupCode(unsafe{&T(voidptr(inst))})
    code := unsafe{&String(args[0])}
    symbol := unsafe{&String(args[1])}
    path := unsafe{&String(args[2])}
    owner := unsafe{&Object(args[3])}
    *(&Dictionary(ret)) := i.virt_lookup_code(code, symbol, path, owner)
}

fn scriptlanguageextension_uauto_indent_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionAutoIndentCode(unsafe{&T(voidptr(inst))})
    code := unsafe{&String(args[0])}
    from_line := unsafe{&i32(args[1])}
    to_line := unsafe{&i32(args[2])}
    *(&String(ret)) := i.virt_auto_indent_code(code, from_line, to_line)
}

fn scriptlanguageextension_uadd_global_constant[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionAddGlobalConstant(unsafe{&T(voidptr(inst))})
    name := unsafe{&StringName(args[0])}
    value := unsafe{&Variant(args[1])}
    i.virt_add_global_constant(name, value)
}

fn scriptlanguageextension_uadd_named_global_constant[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionAddNamedGlobalConstant(unsafe{&T(voidptr(inst))})
    name := unsafe{&StringName(args[0])}
    value := unsafe{&Variant(args[1])}
    i.virt_add_named_global_constant(name, value)
}

fn scriptlanguageextension_uremove_named_global_constant[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionRemoveNamedGlobalConstant(unsafe{&T(voidptr(inst))})
    name := unsafe{&StringName(args[0])}
    i.virt_remove_named_global_constant(name)
}

fn scriptlanguageextension_uthread_enter[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionThreadEnter(unsafe{&T(voidptr(inst))})
    i.virt_thread_enter()
}

fn scriptlanguageextension_uthread_exit[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionThreadExit(unsafe{&T(voidptr(inst))})
    i.virt_thread_exit()
}

fn scriptlanguageextension_udebug_get_error[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetError(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_debug_get_error()
}

fn scriptlanguageextension_udebug_get_stack_level_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetStackLevelCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_debug_get_stack_level_count()
}

fn scriptlanguageextension_udebug_get_stack_level_line[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetStackLevelLine(unsafe{&T(voidptr(inst))})
    level := unsafe{&i32(args[0])}
    *(&i32(ret)) := i.virt_debug_get_stack_level_line(level)
}

fn scriptlanguageextension_udebug_get_stack_level_function[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetStackLevelFunction(unsafe{&T(voidptr(inst))})
    level := unsafe{&i32(args[0])}
    *(&String(ret)) := i.virt_debug_get_stack_level_function(level)
}

fn scriptlanguageextension_udebug_get_stack_level_locals[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetStackLevelLocals(unsafe{&T(voidptr(inst))})
    level := unsafe{&i32(args[0])}
    max_subitems := unsafe{&i32(args[1])}
    max_depth := unsafe{&i32(args[2])}
    *(&Dictionary(ret)) := i.virt_debug_get_stack_level_locals(level, max_subitems, max_depth)
}

fn scriptlanguageextension_udebug_get_stack_level_members[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetStackLevelMembers(unsafe{&T(voidptr(inst))})
    level := unsafe{&i32(args[0])}
    max_subitems := unsafe{&i32(args[1])}
    max_depth := unsafe{&i32(args[2])}
    *(&Dictionary(ret)) := i.virt_debug_get_stack_level_members(level, max_subitems, max_depth)
}

fn scriptlanguageextension_udebug_get_stack_level_instance[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetStackLevelInstance(unsafe{&T(voidptr(inst))})
    level := unsafe{&i32(args[0])}
    *(&voidptr(ret)) := i.virt_debug_get_stack_level_instance(level)
}

fn scriptlanguageextension_udebug_get_globals[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetGlobals(unsafe{&T(voidptr(inst))})
    max_subitems := unsafe{&i32(args[0])}
    max_depth := unsafe{&i32(args[1])}
    *(&Dictionary(ret)) := i.virt_debug_get_globals(max_subitems, max_depth)
}

fn scriptlanguageextension_udebug_parse_stack_level_expression[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugParseStackLevelExpression(unsafe{&T(voidptr(inst))})
    level := unsafe{&i32(args[0])}
    expression := unsafe{&String(args[1])}
    max_subitems := unsafe{&i32(args[2])}
    max_depth := unsafe{&i32(args[3])}
    *(&String(ret)) := i.virt_debug_parse_stack_level_expression(level, expression, max_subitems, max_depth)
}

fn scriptlanguageextension_udebug_get_current_stack_info[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionDebugGetCurrentStackInfo(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_debug_get_current_stack_info()
}

fn scriptlanguageextension_ureload_all_scripts[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionReloadAllScripts(unsafe{&T(voidptr(inst))})
    i.virt_reload_all_scripts()
}

fn scriptlanguageextension_ureload_tool_script[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionReloadToolScript(unsafe{&T(voidptr(inst))})
    script := unsafe{&Script(args[0])}
    soft_reload := unsafe{&bool(args[1])}
    i.virt_reload_tool_script(script, soft_reload)
}

fn scriptlanguageextension_uget_recognized_extensions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetRecognizedExtensions(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_recognized_extensions()
}

fn scriptlanguageextension_uget_public_functions[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetPublicFunctions(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_public_functions()
}

fn scriptlanguageextension_uget_public_constants[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetPublicConstants(unsafe{&T(voidptr(inst))})
    *(&Dictionary(ret)) := i.virt_get_public_constants()
}

fn scriptlanguageextension_uget_public_annotations[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetPublicAnnotations(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_public_annotations()
}

fn scriptlanguageextension_uprofiling_start[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionProfilingStart(unsafe{&T(voidptr(inst))})
    i.virt_profiling_start()
}

fn scriptlanguageextension_uprofiling_stop[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionProfilingStop(unsafe{&T(voidptr(inst))})
    i.virt_profiling_stop()
}

fn scriptlanguageextension_uprofiling_get_accumulated_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionProfilingGetAccumulatedData(unsafe{&T(voidptr(inst))})
    info_array := unsafe{&&ScriptLanguageExtensionProfilingInfo(args[0])}
    info_max := unsafe{&i32(args[1])}
    *(&i32(ret)) := i.virt_profiling_get_accumulated_data(info_array, info_max)
}

fn scriptlanguageextension_uprofiling_get_frame_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionProfilingGetFrameData(unsafe{&T(voidptr(inst))})
    info_array := unsafe{&&ScriptLanguageExtensionProfilingInfo(args[0])}
    info_max := unsafe{&i32(args[1])}
    *(&i32(ret)) := i.virt_profiling_get_frame_data(info_array, info_max)
}

fn scriptlanguageextension_uframe[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionFrame(unsafe{&T(voidptr(inst))})
    i.virt_frame()
}

fn scriptlanguageextension_uhandles_global_class_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionHandlesGlobalClassType(unsafe{&T(voidptr(inst))})
    type_name := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_handles_global_class_type(type_name)
}

fn scriptlanguageextension_uget_global_class_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IScriptLanguageExtensionGetGlobalClassName(unsafe{&T(voidptr(inst))})
    path := unsafe{&String(args[0])}
    *(&Dictionary(ret)) := i.virt_get_global_class_name(path)
}

fn skeletonmodification2d_uexecute[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ISkeletonModification2DExecute(unsafe{&T(voidptr(inst))})
    delta := unsafe{&f64(args[0])}
    i.virt_execute(delta)
}

fn skeletonmodification2d_usetup_modification[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ISkeletonModification2DSetupModification(unsafe{&T(voidptr(inst))})
    modification_stack := unsafe{&SkeletonModificationStack2D(args[0])}
    i.virt_setup_modification(modification_stack)
}

fn skeletonmodification2d_udraw_editor_gizmo[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ISkeletonModification2DDrawEditorGizmo(unsafe{&T(voidptr(inst))})
    i.virt_draw_editor_gizmo()
}

fn streampeerextension_uget_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStreamPeerExtensionGetData(unsafe{&T(voidptr(inst))})
    r_buffer := unsafe{&&u8(args[0])}
    r_bytes := unsafe{&i32(args[1])}
    r_received := unsafe{&&i32(args[2])}
    *(&GDError(ret)) := i.virt_get_data(r_buffer, r_bytes, r_received)
}

fn streampeerextension_uget_partial_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStreamPeerExtensionGetPartialData(unsafe{&T(voidptr(inst))})
    r_buffer := unsafe{&&u8(args[0])}
    r_bytes := unsafe{&i32(args[1])}
    r_received := unsafe{&&i32(args[2])}
    *(&GDError(ret)) := i.virt_get_partial_data(r_buffer, r_bytes, r_received)
}

fn streampeerextension_uput_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStreamPeerExtensionPutData(unsafe{&T(voidptr(inst))})
    p_data := unsafe{&&u8(args[0])}
    p_bytes := unsafe{&i32(args[1])}
    r_sent := unsafe{&&i32(args[2])}
    *(&GDError(ret)) := i.virt_put_data(p_data, p_bytes, r_sent)
}

fn streampeerextension_uput_partial_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStreamPeerExtensionPutPartialData(unsafe{&T(voidptr(inst))})
    p_data := unsafe{&&u8(args[0])}
    p_bytes := unsafe{&i32(args[1])}
    r_sent := unsafe{&&i32(args[2])}
    *(&GDError(ret)) := i.virt_put_partial_data(p_data, p_bytes, r_sent)
}

fn streampeerextension_uget_available_bytes[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStreamPeerExtensionGetAvailableBytes(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_available_bytes()
}

fn stylebox_udraw[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStyleBoxDraw(unsafe{&T(voidptr(inst))})
    to_canvas_item := unsafe{&RID(args[0])}
    rect := unsafe{&Rect2(args[1])}
    i.virt_draw(to_canvas_item, rect)
}

fn stylebox_uget_draw_rect[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStyleBoxGetDrawRect(unsafe{&T(voidptr(inst))})
    rect := unsafe{&Rect2(args[0])}
    *(&Rect2(ret)) := i.virt_get_draw_rect(rect)
}

fn stylebox_uget_minimum_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStyleBoxGetMinimumSize(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_minimum_size()
}

fn stylebox_utest_mask[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IStyleBoxTestMask(unsafe{&T(voidptr(inst))})
    point := unsafe{&Vector2(args[0])}
    rect := unsafe{&Rect2(args[1])}
    *(&bool(ret)) := i.virt_test_mask(point, rect)
}

fn subviewportcontainer_upropagate_input_event[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ISubViewportContainerPropagateInputEvent(unsafe{&T(voidptr(inst))})
    event := unsafe{&InputEvent(args[0])}
    *(&bool(ret)) := i.virt_propagate_input_event(event)
}

fn syntaxhighlighter_uget_line_syntax_highlighting[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ISyntaxHighlighterGetLineSyntaxHighlighting(unsafe{&T(voidptr(inst))})
    line := unsafe{&i32(args[0])}
    *(&Dictionary(ret)) := i.virt_get_line_syntax_highlighting(line)
}

fn syntaxhighlighter_uclear_highlighting_cache[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ISyntaxHighlighterClearHighlightingCache(unsafe{&T(voidptr(inst))})
    i.virt_clear_highlighting_cache()
}

fn syntaxhighlighter_uupdate_cache[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ISyntaxHighlighterUpdateCache(unsafe{&T(voidptr(inst))})
    i.virt_update_cache()
}

fn textedit_uhandle_unicode_input[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextEditHandleUnicodeInput(unsafe{&T(voidptr(inst))})
    unicode_char := unsafe{&i32(args[0])}
    caret_index := unsafe{&i32(args[1])}
    i.virt_handle_unicode_input(unicode_char, caret_index)
}

fn textedit_ubackspace[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextEditBackspace(unsafe{&T(voidptr(inst))})
    caret_index := unsafe{&i32(args[0])}
    i.virt_backspace(caret_index)
}

fn textedit_ucut[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextEditCut(unsafe{&T(voidptr(inst))})
    caret_index := unsafe{&i32(args[0])}
    i.virt_cut(caret_index)
}

fn textedit_ucopy[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextEditCopy(unsafe{&T(voidptr(inst))})
    caret_index := unsafe{&i32(args[0])}
    i.virt_copy(caret_index)
}

fn textedit_upaste[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextEditPaste(unsafe{&T(voidptr(inst))})
    caret_index := unsafe{&i32(args[0])}
    i.virt_paste(caret_index)
}

fn textedit_upaste_primary_clipboard[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextEditPastePrimaryClipboard(unsafe{&T(voidptr(inst))})
    caret_index := unsafe{&i32(args[0])}
    i.virt_paste_primary_clipboard(caret_index)
}

fn textserverextension_uhas_feature[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionHasFeature(unsafe{&T(voidptr(inst))})
    feature := unsafe{&TextServerFeature(args[0])}
    *(&bool(ret)) := i.virt_has_feature(feature)
}

fn textserverextension_uget_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionGetName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_name()
}

fn textserverextension_uget_features[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionGetFeatures(unsafe{&T(voidptr(inst))})
    *(&i64(ret)) := i.virt_get_features()
}

fn textserverextension_ufree_rid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFreeRid(unsafe{&T(voidptr(inst))})
    rid := unsafe{&RID(args[0])}
    i.virt_free_rid(rid)
}

fn textserverextension_uhas[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionHas(unsafe{&T(voidptr(inst))})
    rid := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_has(rid)
}

fn textserverextension_uload_support_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionLoadSupportData(unsafe{&T(voidptr(inst))})
    filename := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_load_support_data(filename)
}

fn textserverextension_uget_support_data_filename[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionGetSupportDataFilename(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_support_data_filename()
}

fn textserverextension_uget_support_data_info[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionGetSupportDataInfo(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_support_data_info()
}

fn textserverextension_usave_support_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionSaveSupportData(unsafe{&T(voidptr(inst))})
    filename := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_save_support_data(filename)
}

fn textserverextension_uis_locale_right_to_left[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionIsLocaleRightToLeft(unsafe{&T(voidptr(inst))})
    locale := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_is_locale_right_to_left(locale)
}

fn textserverextension_uname_to_tag[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionNameToTag(unsafe{&T(voidptr(inst))})
    name := unsafe{&String(args[0])}
    *(&i64(ret)) := i.virt_name_to_tag(name)
}

fn textserverextension_utag_to_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionTagToName(unsafe{&T(voidptr(inst))})
    tag := unsafe{&i64(args[0])}
    *(&String(ret)) := i.virt_tag_to_name(tag)
}

fn textserverextension_ucreate_font[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionCreateFont(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_create_font()
}

fn textserverextension_ucreate_font_linked_variation[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionCreateFontLinkedVariation(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&RID(ret)) := i.virt_create_font_linked_variation(font_rid)
}

fn textserverextension_ufont_set_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetData(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    data := unsafe{&PackedByteArray(args[1])}
    i.virt_font_set_data(font_rid, data)
}

fn textserverextension_ufont_set_data_ptr[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetDataPtr(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    data_ptr := unsafe{&&u8(args[1])}
    data_size := unsafe{&i64(args[2])}
    i.virt_font_set_data_ptr(font_rid, data_ptr, data_size)
}

fn textserverextension_ufont_set_face_index[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetFaceIndex(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    face_index := unsafe{&i64(args[1])}
    i.virt_font_set_face_index(font_rid, face_index)
}

fn textserverextension_ufont_get_face_index[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetFaceIndex(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_font_get_face_index(font_rid)
}

fn textserverextension_ufont_get_face_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetFaceCount(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_font_get_face_count(font_rid)
}

fn textserverextension_ufont_set_style[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetStyle(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    style := unsafe{&TextServerFontStyle(args[1])}
    i.virt_font_set_style(font_rid, style)
}

fn textserverextension_ufont_get_style[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetStyle(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&TextServerFontStyle(ret)) := i.virt_font_get_style(font_rid)
}

fn textserverextension_ufont_set_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetName(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    name := unsafe{&String(args[1])}
    i.virt_font_set_name(font_rid, name)
}

fn textserverextension_ufont_get_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetName(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&String(ret)) := i.virt_font_get_name(font_rid)
}

fn textserverextension_ufont_get_ot_name_strings[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetOtNameStrings(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&Dictionary(ret)) := i.virt_font_get_ot_name_strings(font_rid)
}

fn textserverextension_ufont_set_style_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetStyleName(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    name_style := unsafe{&String(args[1])}
    i.virt_font_set_style_name(font_rid, name_style)
}

fn textserverextension_ufont_get_style_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetStyleName(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&String(ret)) := i.virt_font_get_style_name(font_rid)
}

fn textserverextension_ufont_set_weight[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetWeight(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    weight := unsafe{&i64(args[1])}
    i.virt_font_set_weight(font_rid, weight)
}

fn textserverextension_ufont_get_weight[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetWeight(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_font_get_weight(font_rid)
}

fn textserverextension_ufont_set_stretch[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetStretch(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    stretch := unsafe{&i64(args[1])}
    i.virt_font_set_stretch(font_rid, stretch)
}

fn textserverextension_ufont_get_stretch[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetStretch(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_font_get_stretch(font_rid)
}

fn textserverextension_ufont_set_antialiasing[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetAntialiasing(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    antialiasing := unsafe{&TextServerFontAntialiasing(args[1])}
    i.virt_font_set_antialiasing(font_rid, antialiasing)
}

fn textserverextension_ufont_get_antialiasing[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetAntialiasing(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&TextServerFontAntialiasing(ret)) := i.virt_font_get_antialiasing(font_rid)
}

fn textserverextension_ufont_set_generate_mipmaps[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetGenerateMipmaps(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    generate_mipmaps := unsafe{&bool(args[1])}
    i.virt_font_set_generate_mipmaps(font_rid, generate_mipmaps)
}

fn textserverextension_ufont_get_generate_mipmaps[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGenerateMipmaps(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_font_get_generate_mipmaps(font_rid)
}

fn textserverextension_ufont_set_multichannel_signed_distance_field[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetMultichannelSignedDistanceField(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    msdf := unsafe{&bool(args[1])}
    i.virt_font_set_multichannel_signed_distance_field(font_rid, msdf)
}

fn textserverextension_ufont_is_multichannel_signed_distance_field[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontIsMultichannelSignedDistanceField(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_font_is_multichannel_signed_distance_field(font_rid)
}

fn textserverextension_ufont_set_msdf_pixel_range[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetMsdfPixelRange(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    msdf_pixel_range := unsafe{&i64(args[1])}
    i.virt_font_set_msdf_pixel_range(font_rid, msdf_pixel_range)
}

fn textserverextension_ufont_get_msdf_pixel_range[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetMsdfPixelRange(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_font_get_msdf_pixel_range(font_rid)
}

fn textserverextension_ufont_set_msdf_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetMsdfSize(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    msdf_size := unsafe{&i64(args[1])}
    i.virt_font_set_msdf_size(font_rid, msdf_size)
}

fn textserverextension_ufont_get_msdf_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetMsdfSize(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_font_get_msdf_size(font_rid)
}

fn textserverextension_ufont_set_fixed_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetFixedSize(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    fixed_size := unsafe{&i64(args[1])}
    i.virt_font_set_fixed_size(font_rid, fixed_size)
}

fn textserverextension_ufont_get_fixed_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetFixedSize(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_font_get_fixed_size(font_rid)
}

fn textserverextension_ufont_set_fixed_size_scale_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetFixedSizeScaleMode(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    fixed_size_scale_mode := unsafe{&TextServerFixedSizeScaleMode(args[1])}
    i.virt_font_set_fixed_size_scale_mode(font_rid, fixed_size_scale_mode)
}

fn textserverextension_ufont_get_fixed_size_scale_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetFixedSizeScaleMode(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&TextServerFixedSizeScaleMode(ret)) := i.virt_font_get_fixed_size_scale_mode(font_rid)
}

fn textserverextension_ufont_set_allow_system_fallback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetAllowSystemFallback(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    allow_system_fallback := unsafe{&bool(args[1])}
    i.virt_font_set_allow_system_fallback(font_rid, allow_system_fallback)
}

fn textserverextension_ufont_is_allow_system_fallback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontIsAllowSystemFallback(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_font_is_allow_system_fallback(font_rid)
}

fn textserverextension_ufont_set_force_autohinter[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetForceAutohinter(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    force_autohinter := unsafe{&bool(args[1])}
    i.virt_font_set_force_autohinter(font_rid, force_autohinter)
}

fn textserverextension_ufont_is_force_autohinter[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontIsForceAutohinter(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_font_is_force_autohinter(font_rid)
}

fn textserverextension_ufont_set_hinting[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetHinting(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    hinting := unsafe{&TextServerHinting(args[1])}
    i.virt_font_set_hinting(font_rid, hinting)
}

fn textserverextension_ufont_get_hinting[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetHinting(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&TextServerHinting(ret)) := i.virt_font_get_hinting(font_rid)
}

fn textserverextension_ufont_set_subpixel_positioning[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetSubpixelPositioning(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    subpixel_positioning := unsafe{&TextServerSubpixelPositioning(args[1])}
    i.virt_font_set_subpixel_positioning(font_rid, subpixel_positioning)
}

fn textserverextension_ufont_get_subpixel_positioning[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetSubpixelPositioning(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&TextServerSubpixelPositioning(ret)) := i.virt_font_get_subpixel_positioning(font_rid)
}

fn textserverextension_ufont_set_embolden[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetEmbolden(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    strength := unsafe{&f64(args[1])}
    i.virt_font_set_embolden(font_rid, strength)
}

fn textserverextension_ufont_get_embolden[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetEmbolden(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_font_get_embolden(font_rid)
}

fn textserverextension_ufont_set_spacing[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetSpacing(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    spacing := unsafe{&TextServerSpacingType(args[1])}
    value := unsafe{&i64(args[2])}
    i.virt_font_set_spacing(font_rid, spacing, value)
}

fn textserverextension_ufont_get_spacing[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetSpacing(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    spacing := unsafe{&TextServerSpacingType(args[1])}
    *(&i64(ret)) := i.virt_font_get_spacing(font_rid, spacing)
}

fn textserverextension_ufont_set_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetTransform(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    transform := unsafe{&Transform2D(args[1])}
    i.virt_font_set_transform(font_rid, transform)
}

fn textserverextension_ufont_get_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetTransform(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&Transform2D(ret)) := i.virt_font_get_transform(font_rid)
}

fn textserverextension_ufont_set_variation_coordinates[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetVariationCoordinates(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    variation_coordinates := unsafe{&Dictionary(args[1])}
    i.virt_font_set_variation_coordinates(font_rid, variation_coordinates)
}

fn textserverextension_ufont_get_variation_coordinates[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetVariationCoordinates(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&Dictionary(ret)) := i.virt_font_get_variation_coordinates(font_rid)
}

fn textserverextension_ufont_set_oversampling[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetOversampling(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    oversampling := unsafe{&f64(args[1])}
    i.virt_font_set_oversampling(font_rid, oversampling)
}

fn textserverextension_ufont_get_oversampling[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetOversampling(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_font_get_oversampling(font_rid)
}

fn textserverextension_ufont_get_size_cache_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetSizeCacheList(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&Array(ret)) := i.virt_font_get_size_cache_list(font_rid)
}

fn textserverextension_ufont_clear_size_cache[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontClearSizeCache(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    i.virt_font_clear_size_cache(font_rid)
}

fn textserverextension_ufont_remove_size_cache[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontRemoveSizeCache(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    i.virt_font_remove_size_cache(font_rid, size)
}

fn textserverextension_ufont_set_ascent[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetAscent(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    ascent := unsafe{&f64(args[2])}
    i.virt_font_set_ascent(font_rid, size, ascent)
}

fn textserverextension_ufont_get_ascent[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetAscent(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_font_get_ascent(font_rid, size)
}

fn textserverextension_ufont_set_descent[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetDescent(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    descent := unsafe{&f64(args[2])}
    i.virt_font_set_descent(font_rid, size, descent)
}

fn textserverextension_ufont_get_descent[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetDescent(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_font_get_descent(font_rid, size)
}

fn textserverextension_ufont_set_underline_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetUnderlinePosition(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    underline_position := unsafe{&f64(args[2])}
    i.virt_font_set_underline_position(font_rid, size, underline_position)
}

fn textserverextension_ufont_get_underline_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetUnderlinePosition(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_font_get_underline_position(font_rid, size)
}

fn textserverextension_ufont_set_underline_thickness[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetUnderlineThickness(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    underline_thickness := unsafe{&f64(args[2])}
    i.virt_font_set_underline_thickness(font_rid, size, underline_thickness)
}

fn textserverextension_ufont_get_underline_thickness[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetUnderlineThickness(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_font_get_underline_thickness(font_rid, size)
}

fn textserverextension_ufont_set_scale[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetScale(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    scale := unsafe{&f64(args[2])}
    i.virt_font_set_scale(font_rid, size, scale)
}

fn textserverextension_ufont_get_scale[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetScale(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    *(&f64(ret)) := i.virt_font_get_scale(font_rid, size)
}

fn textserverextension_ufont_get_texture_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetTextureCount(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    *(&i64(ret)) := i.virt_font_get_texture_count(font_rid, size)
}

fn textserverextension_ufont_clear_textures[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontClearTextures(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    i.virt_font_clear_textures(font_rid, size)
}

fn textserverextension_ufont_remove_texture[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontRemoveTexture(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    texture_index := unsafe{&i64(args[2])}
    i.virt_font_remove_texture(font_rid, size, texture_index)
}

fn textserverextension_ufont_set_texture_image[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetTextureImage(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    texture_index := unsafe{&i64(args[2])}
    image := unsafe{&Image(args[3])}
    i.virt_font_set_texture_image(font_rid, size, texture_index, image)
}

fn textserverextension_ufont_get_texture_image[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetTextureImage(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    texture_index := unsafe{&i64(args[2])}
    *(&Image(ret)) := i.virt_font_get_texture_image(font_rid, size, texture_index)
}

fn textserverextension_ufont_set_texture_offsets[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetTextureOffsets(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    texture_index := unsafe{&i64(args[2])}
    offset := unsafe{&PackedInt32Array(args[3])}
    i.virt_font_set_texture_offsets(font_rid, size, texture_index, offset)
}

fn textserverextension_ufont_get_texture_offsets[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetTextureOffsets(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    texture_index := unsafe{&i64(args[2])}
    *(&PackedInt32Array(ret)) := i.virt_font_get_texture_offsets(font_rid, size, texture_index)
}

fn textserverextension_ufont_get_glyph_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphList(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    *(&PackedInt32Array(ret)) := i.virt_font_get_glyph_list(font_rid, size)
}

fn textserverextension_ufont_clear_glyphs[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontClearGlyphs(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    i.virt_font_clear_glyphs(font_rid, size)
}

fn textserverextension_ufont_remove_glyph[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontRemoveGlyph(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    i.virt_font_remove_glyph(font_rid, size, glyph)
}

fn textserverextension_ufont_get_glyph_advance[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphAdvance(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    glyph := unsafe{&i64(args[2])}
    *(&Vector2(ret)) := i.virt_font_get_glyph_advance(font_rid, size, glyph)
}

fn textserverextension_ufont_set_glyph_advance[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetGlyphAdvance(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    glyph := unsafe{&i64(args[2])}
    advance := unsafe{&Vector2(args[3])}
    i.virt_font_set_glyph_advance(font_rid, size, glyph, advance)
}

fn textserverextension_ufont_get_glyph_offset[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphOffset(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    *(&Vector2(ret)) := i.virt_font_get_glyph_offset(font_rid, size, glyph)
}

fn textserverextension_ufont_set_glyph_offset[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetGlyphOffset(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    offset := unsafe{&Vector2(args[3])}
    i.virt_font_set_glyph_offset(font_rid, size, glyph, offset)
}

fn textserverextension_ufont_get_glyph_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphSize(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    *(&Vector2(ret)) := i.virt_font_get_glyph_size(font_rid, size, glyph)
}

fn textserverextension_ufont_set_glyph_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetGlyphSize(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    gl_size := unsafe{&Vector2(args[3])}
    i.virt_font_set_glyph_size(font_rid, size, glyph, gl_size)
}

fn textserverextension_ufont_get_glyph_uv_rect[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphUvRect(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    *(&Rect2(ret)) := i.virt_font_get_glyph_uv_rect(font_rid, size, glyph)
}

fn textserverextension_ufont_set_glyph_uv_rect[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetGlyphUvRect(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    uv_rect := unsafe{&Rect2(args[3])}
    i.virt_font_set_glyph_uv_rect(font_rid, size, glyph, uv_rect)
}

fn textserverextension_ufont_get_glyph_texture_idx[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphTextureIdx(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    *(&i64(ret)) := i.virt_font_get_glyph_texture_idx(font_rid, size, glyph)
}

fn textserverextension_ufont_set_glyph_texture_idx[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetGlyphTextureIdx(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    texture_idx := unsafe{&i64(args[3])}
    i.virt_font_set_glyph_texture_idx(font_rid, size, glyph, texture_idx)
}

fn textserverextension_ufont_get_glyph_texture_rid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphTextureRid(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    *(&RID(ret)) := i.virt_font_get_glyph_texture_rid(font_rid, size, glyph)
}

fn textserverextension_ufont_get_glyph_texture_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphTextureSize(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    glyph := unsafe{&i64(args[2])}
    *(&Vector2(ret)) := i.virt_font_get_glyph_texture_size(font_rid, size, glyph)
}

fn textserverextension_ufont_get_glyph_contours[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphContours(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    index := unsafe{&i64(args[2])}
    *(&Dictionary(ret)) := i.virt_font_get_glyph_contours(font_rid, size, index)
}

fn textserverextension_ufont_get_kerning_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetKerningList(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    *(&Array(ret)) := i.virt_font_get_kerning_list(font_rid, size)
}

fn textserverextension_ufont_clear_kerning_map[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontClearKerningMap(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    i.virt_font_clear_kerning_map(font_rid, size)
}

fn textserverextension_ufont_remove_kerning[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontRemoveKerning(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    glyph_pair := unsafe{&Vector2i(args[2])}
    i.virt_font_remove_kerning(font_rid, size, glyph_pair)
}

fn textserverextension_ufont_set_kerning[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetKerning(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    glyph_pair := unsafe{&Vector2i(args[2])}
    kerning := unsafe{&Vector2(args[3])}
    i.virt_font_set_kerning(font_rid, size, glyph_pair, kerning)
}

fn textserverextension_ufont_get_kerning[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetKerning(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    glyph_pair := unsafe{&Vector2i(args[2])}
    *(&Vector2(ret)) := i.virt_font_get_kerning(font_rid, size, glyph_pair)
}

fn textserverextension_ufont_get_glyph_index[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlyphIndex(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    gdchar := unsafe{&i64(args[2])}
    variation_selector := unsafe{&i64(args[3])}
    *(&i64(ret)) := i.virt_font_get_glyph_index(font_rid, size, gdchar, variation_selector)
}

fn textserverextension_ufont_get_char_from_glyph_index[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetCharFromGlyphIndex(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    glyph_index := unsafe{&i64(args[2])}
    *(&i64(ret)) := i.virt_font_get_char_from_glyph_index(font_rid, size, glyph_index)
}

fn textserverextension_ufont_has_char[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontHasChar(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    gdchar := unsafe{&i64(args[1])}
    *(&bool(ret)) := i.virt_font_has_char(font_rid, gdchar)
}

fn textserverextension_ufont_get_supported_chars[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetSupportedChars(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&String(ret)) := i.virt_font_get_supported_chars(font_rid)
}

fn textserverextension_ufont_render_range[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontRenderRange(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    start := unsafe{&i64(args[2])}
    end := unsafe{&i64(args[3])}
    i.virt_font_render_range(font_rid, size, start, end)
}

fn textserverextension_ufont_render_glyph[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontRenderGlyph(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    size := unsafe{&Vector2i(args[1])}
    index := unsafe{&i64(args[2])}
    i.virt_font_render_glyph(font_rid, size, index)
}

fn textserverextension_ufont_draw_glyph[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontDrawGlyph(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    canvas := unsafe{&RID(args[1])}
    size := unsafe{&i64(args[2])}
    pos := unsafe{&Vector2(args[3])}
    index := unsafe{&i64(args[4])}
    color := unsafe{&Color(args[5])}
    i.virt_font_draw_glyph(font_rid, canvas, size, pos, index, color)
}

fn textserverextension_ufont_draw_glyph_outline[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontDrawGlyphOutline(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    canvas := unsafe{&RID(args[1])}
    size := unsafe{&i64(args[2])}
    outline_size := unsafe{&i64(args[3])}
    pos := unsafe{&Vector2(args[4])}
    index := unsafe{&i64(args[5])}
    color := unsafe{&Color(args[6])}
    i.virt_font_draw_glyph_outline(font_rid, canvas, size, outline_size, pos, index, color)
}

fn textserverextension_ufont_is_language_supported[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontIsLanguageSupported(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    language := unsafe{&String(args[1])}
    *(&bool(ret)) := i.virt_font_is_language_supported(font_rid, language)
}

fn textserverextension_ufont_set_language_support_override[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetLanguageSupportOverride(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    language := unsafe{&String(args[1])}
    supported := unsafe{&bool(args[2])}
    i.virt_font_set_language_support_override(font_rid, language, supported)
}

fn textserverextension_ufont_get_language_support_override[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetLanguageSupportOverride(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    language := unsafe{&String(args[1])}
    *(&bool(ret)) := i.virt_font_get_language_support_override(font_rid, language)
}

fn textserverextension_ufont_remove_language_support_override[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontRemoveLanguageSupportOverride(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    language := unsafe{&String(args[1])}
    i.virt_font_remove_language_support_override(font_rid, language)
}

fn textserverextension_ufont_get_language_support_overrides[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetLanguageSupportOverrides(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&PackedStringArray(ret)) := i.virt_font_get_language_support_overrides(font_rid)
}

fn textserverextension_ufont_is_script_supported[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontIsScriptSupported(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    script := unsafe{&String(args[1])}
    *(&bool(ret)) := i.virt_font_is_script_supported(font_rid, script)
}

fn textserverextension_ufont_set_script_support_override[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetScriptSupportOverride(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    script := unsafe{&String(args[1])}
    supported := unsafe{&bool(args[2])}
    i.virt_font_set_script_support_override(font_rid, script, supported)
}

fn textserverextension_ufont_get_script_support_override[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetScriptSupportOverride(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    script := unsafe{&String(args[1])}
    *(&bool(ret)) := i.virt_font_get_script_support_override(font_rid, script)
}

fn textserverextension_ufont_remove_script_support_override[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontRemoveScriptSupportOverride(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    script := unsafe{&String(args[1])}
    i.virt_font_remove_script_support_override(font_rid, script)
}

fn textserverextension_ufont_get_script_support_overrides[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetScriptSupportOverrides(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&PackedStringArray(ret)) := i.virt_font_get_script_support_overrides(font_rid)
}

fn textserverextension_ufont_set_opentype_feature_overrides[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetOpentypeFeatureOverrides(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    overrides := unsafe{&Dictionary(args[1])}
    i.virt_font_set_opentype_feature_overrides(font_rid, overrides)
}

fn textserverextension_ufont_get_opentype_feature_overrides[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetOpentypeFeatureOverrides(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&Dictionary(ret)) := i.virt_font_get_opentype_feature_overrides(font_rid)
}

fn textserverextension_ufont_supported_feature_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSupportedFeatureList(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&Dictionary(ret)) := i.virt_font_supported_feature_list(font_rid)
}

fn textserverextension_ufont_supported_variation_list[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSupportedVariationList(unsafe{&T(voidptr(inst))})
    font_rid := unsafe{&RID(args[0])}
    *(&Dictionary(ret)) := i.virt_font_supported_variation_list(font_rid)
}

fn textserverextension_ufont_get_global_oversampling[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontGetGlobalOversampling(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_font_get_global_oversampling()
}

fn textserverextension_ufont_set_global_oversampling[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFontSetGlobalOversampling(unsafe{&T(voidptr(inst))})
    oversampling := unsafe{&f64(args[0])}
    i.virt_font_set_global_oversampling(oversampling)
}

fn textserverextension_uget_hex_code_box_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionGetHexCodeBoxSize(unsafe{&T(voidptr(inst))})
    size := unsafe{&i64(args[0])}
    index := unsafe{&i64(args[1])}
    *(&Vector2(ret)) := i.virt_get_hex_code_box_size(size, index)
}

fn textserverextension_udraw_hex_code_box[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionDrawHexCodeBox(unsafe{&T(voidptr(inst))})
    canvas := unsafe{&RID(args[0])}
    size := unsafe{&i64(args[1])}
    pos := unsafe{&Vector2(args[2])}
    index := unsafe{&i64(args[3])}
    color := unsafe{&Color(args[4])}
    i.virt_draw_hex_code_box(canvas, size, pos, index, color)
}

fn textserverextension_ucreate_shaped_text[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionCreateShapedText(unsafe{&T(voidptr(inst))})
    direction := unsafe{&TextServerDirection(args[0])}
    orientation := unsafe{&TextServerOrientation(args[1])}
    *(&RID(ret)) := i.virt_create_shaped_text(direction, orientation)
}

fn textserverextension_ushaped_text_clear[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextClear(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    i.virt_shaped_text_clear(shaped)
}

fn textserverextension_ushaped_text_set_direction[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSetDirection(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    direction := unsafe{&TextServerDirection(args[1])}
    i.virt_shaped_text_set_direction(shaped, direction)
}

fn textserverextension_ushaped_text_get_direction[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetDirection(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&TextServerDirection(ret)) := i.virt_shaped_text_get_direction(shaped)
}

fn textserverextension_ushaped_text_get_inferred_direction[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetInferredDirection(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&TextServerDirection(ret)) := i.virt_shaped_text_get_inferred_direction(shaped)
}

fn textserverextension_ushaped_text_set_bidi_override[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSetBidiOverride(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    override := unsafe{&Array(args[1])}
    i.virt_shaped_text_set_bidi_override(shaped, override)
}

fn textserverextension_ushaped_text_set_custom_punctuation[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSetCustomPunctuation(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    punct := unsafe{&String(args[1])}
    i.virt_shaped_text_set_custom_punctuation(shaped, punct)
}

fn textserverextension_ushaped_text_get_custom_punctuation[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetCustomPunctuation(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&String(ret)) := i.virt_shaped_text_get_custom_punctuation(shaped)
}

fn textserverextension_ushaped_text_set_orientation[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSetOrientation(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    orientation := unsafe{&TextServerOrientation(args[1])}
    i.virt_shaped_text_set_orientation(shaped, orientation)
}

fn textserverextension_ushaped_text_get_orientation[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetOrientation(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&TextServerOrientation(ret)) := i.virt_shaped_text_get_orientation(shaped)
}

fn textserverextension_ushaped_text_set_preserve_invalid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSetPreserveInvalid(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    enabled := unsafe{&bool(args[1])}
    i.virt_shaped_text_set_preserve_invalid(shaped, enabled)
}

fn textserverextension_ushaped_text_get_preserve_invalid[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetPreserveInvalid(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_shaped_text_get_preserve_invalid(shaped)
}

fn textserverextension_ushaped_text_set_preserve_control[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSetPreserveControl(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    enabled := unsafe{&bool(args[1])}
    i.virt_shaped_text_set_preserve_control(shaped, enabled)
}

fn textserverextension_ushaped_text_get_preserve_control[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetPreserveControl(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_shaped_text_get_preserve_control(shaped)
}

fn textserverextension_ushaped_text_set_spacing[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSetSpacing(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    spacing := unsafe{&TextServerSpacingType(args[1])}
    value := unsafe{&i64(args[2])}
    i.virt_shaped_text_set_spacing(shaped, spacing, value)
}

fn textserverextension_ushaped_text_get_spacing[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetSpacing(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    spacing := unsafe{&TextServerSpacingType(args[1])}
    *(&i64(ret)) := i.virt_shaped_text_get_spacing(shaped, spacing)
}

fn textserverextension_ushaped_text_add_string[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextAddString(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    text := unsafe{&String(args[1])}
    fonts := unsafe{&Array(args[2])}
    size := unsafe{&i64(args[3])}
    opentype_features := unsafe{&Dictionary(args[4])}
    language := unsafe{&String(args[5])}
    meta := unsafe{&Variant(args[6])}
    *(&bool(ret)) := i.virt_shaped_text_add_string(shaped, text, fonts, size, opentype_features, language, meta)
}

fn textserverextension_ushaped_text_add_object[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextAddObject(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    key := unsafe{&Variant(args[1])}
    size := unsafe{&Vector2(args[2])}
    inline_align := unsafe{&InlineAlignment(args[3])}
    length := unsafe{&i64(args[4])}
    baseline := unsafe{&f64(args[5])}
    *(&bool(ret)) := i.virt_shaped_text_add_object(shaped, key, size, inline_align, length, baseline)
}

fn textserverextension_ushaped_text_resize_object[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextResizeObject(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    key := unsafe{&Variant(args[1])}
    size := unsafe{&Vector2(args[2])}
    inline_align := unsafe{&InlineAlignment(args[3])}
    baseline := unsafe{&f64(args[4])}
    *(&bool(ret)) := i.virt_shaped_text_resize_object(shaped, key, size, inline_align, baseline)
}

fn textserverextension_ushaped_get_span_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedGetSpanCount(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_shaped_get_span_count(shaped)
}

fn textserverextension_ushaped_get_span_meta[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedGetSpanMeta(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    index := unsafe{&i64(args[1])}
    *(&Variant(ret)) := i.virt_shaped_get_span_meta(shaped, index)
}

fn textserverextension_ushaped_set_span_update_font[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedSetSpanUpdateFont(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    index := unsafe{&i64(args[1])}
    fonts := unsafe{&Array(args[2])}
    size := unsafe{&i64(args[3])}
    opentype_features := unsafe{&Dictionary(args[4])}
    i.virt_shaped_set_span_update_font(shaped, index, fonts, size, opentype_features)
}

fn textserverextension_ushaped_text_substr[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSubstr(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    start := unsafe{&i64(args[1])}
    length := unsafe{&i64(args[2])}
    *(&RID(ret)) := i.virt_shaped_text_substr(shaped, start, length)
}

fn textserverextension_ushaped_text_get_parent[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetParent(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&RID(ret)) := i.virt_shaped_text_get_parent(shaped)
}

fn textserverextension_ushaped_text_fit_to_width[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextFitToWidth(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    width := unsafe{&f64(args[1])}
    justification_flags := unsafe{&TextServerJustificationFlag(args[2])}
    *(&f64(ret)) := i.virt_shaped_text_fit_to_width(shaped, width, justification_flags)
}

fn textserverextension_ushaped_text_tab_align[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextTabAlign(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    tab_stops := unsafe{&PackedFloat32Array(args[1])}
    *(&f64(ret)) := i.virt_shaped_text_tab_align(shaped, tab_stops)
}

fn textserverextension_ushaped_text_shape[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextShape(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_shaped_text_shape(shaped)
}

fn textserverextension_ushaped_text_update_breaks[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextUpdateBreaks(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_shaped_text_update_breaks(shaped)
}

fn textserverextension_ushaped_text_update_justification_ops[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextUpdateJustificationOps(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_shaped_text_update_justification_ops(shaped)
}

fn textserverextension_ushaped_text_is_ready[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextIsReady(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_shaped_text_is_ready(shaped)
}

fn textserverextension_ushaped_text_get_glyphs[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetGlyphs(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&&Glyph(ret)) := i.virt_shaped_text_get_glyphs(shaped)
}

fn textserverextension_ushaped_text_sort_logical[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextSortLogical(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&&Glyph(ret)) := i.virt_shaped_text_sort_logical(shaped)
}

fn textserverextension_ushaped_text_get_glyph_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetGlyphCount(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_shaped_text_get_glyph_count(shaped)
}

fn textserverextension_ushaped_text_get_range[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetRange(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&Vector2i(ret)) := i.virt_shaped_text_get_range(shaped)
}

fn textserverextension_ushaped_text_get_line_breaks_adv[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetLineBreaksAdv(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    width := unsafe{&PackedFloat32Array(args[1])}
    start := unsafe{&i64(args[2])}
    once := unsafe{&bool(args[3])}
    break_flags := unsafe{&TextServerLineBreakFlag(args[4])}
    *(&PackedInt32Array(ret)) := i.virt_shaped_text_get_line_breaks_adv(shaped, width, start, once, break_flags)
}

fn textserverextension_ushaped_text_get_line_breaks[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetLineBreaks(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    width := unsafe{&f64(args[1])}
    start := unsafe{&i64(args[2])}
    break_flags := unsafe{&TextServerLineBreakFlag(args[3])}
    *(&PackedInt32Array(ret)) := i.virt_shaped_text_get_line_breaks(shaped, width, start, break_flags)
}

fn textserverextension_ushaped_text_get_word_breaks[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetWordBreaks(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    grapheme_flags := unsafe{&TextServerGraphemeFlag(args[1])}
    *(&PackedInt32Array(ret)) := i.virt_shaped_text_get_word_breaks(shaped, grapheme_flags)
}

fn textserverextension_ushaped_text_get_trim_pos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetTrimPos(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_shaped_text_get_trim_pos(shaped)
}

fn textserverextension_ushaped_text_get_ellipsis_pos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetEllipsisPos(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_shaped_text_get_ellipsis_pos(shaped)
}

fn textserverextension_ushaped_text_get_ellipsis_glyph_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetEllipsisGlyphCount(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&i64(ret)) := i.virt_shaped_text_get_ellipsis_glyph_count(shaped)
}

fn textserverextension_ushaped_text_get_ellipsis_glyphs[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetEllipsisGlyphs(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&&Glyph(ret)) := i.virt_shaped_text_get_ellipsis_glyphs(shaped)
}

fn textserverextension_ushaped_text_overrun_trim_to_width[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextOverrunTrimToWidth(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    width := unsafe{&f64(args[1])}
    trim_flags := unsafe{&TextServerTextOverrunFlag(args[2])}
    i.virt_shaped_text_overrun_trim_to_width(shaped, width, trim_flags)
}

fn textserverextension_ushaped_text_get_objects[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetObjects(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&Array(ret)) := i.virt_shaped_text_get_objects(shaped)
}

fn textserverextension_ushaped_text_get_object_rect[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetObjectRect(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    key := unsafe{&Variant(args[1])}
    *(&Rect2(ret)) := i.virt_shaped_text_get_object_rect(shaped, key)
}

fn textserverextension_ushaped_text_get_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetSize(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&Vector2(ret)) := i.virt_shaped_text_get_size(shaped)
}

fn textserverextension_ushaped_text_get_ascent[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetAscent(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_shaped_text_get_ascent(shaped)
}

fn textserverextension_ushaped_text_get_descent[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetDescent(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_shaped_text_get_descent(shaped)
}

fn textserverextension_ushaped_text_get_width[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetWidth(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_shaped_text_get_width(shaped)
}

fn textserverextension_ushaped_text_get_underline_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetUnderlinePosition(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_shaped_text_get_underline_position(shaped)
}

fn textserverextension_ushaped_text_get_underline_thickness[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetUnderlineThickness(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&f64(ret)) := i.virt_shaped_text_get_underline_thickness(shaped)
}

fn textserverextension_ushaped_text_get_dominant_direction_in_range[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetDominantDirectionInRange(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    start := unsafe{&i64(args[1])}
    end := unsafe{&i64(args[2])}
    *(&i64(ret)) := i.virt_shaped_text_get_dominant_direction_in_range(shaped, start, end)
}

fn textserverextension_ushaped_text_get_carets[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetCarets(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    position := unsafe{&i64(args[1])}
    caret := unsafe{&&CaretInfo(args[2])}
    i.virt_shaped_text_get_carets(shaped, position, caret)
}

fn textserverextension_ushaped_text_get_selection[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetSelection(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    start := unsafe{&i64(args[1])}
    end := unsafe{&i64(args[2])}
    *(&PackedVector2Array(ret)) := i.virt_shaped_text_get_selection(shaped, start, end)
}

fn textserverextension_ushaped_text_hit_test_grapheme[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextHitTestGrapheme(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    coord := unsafe{&f64(args[1])}
    *(&i64(ret)) := i.virt_shaped_text_hit_test_grapheme(shaped, coord)
}

fn textserverextension_ushaped_text_hit_test_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextHitTestPosition(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    coord := unsafe{&f64(args[1])}
    *(&i64(ret)) := i.virt_shaped_text_hit_test_position(shaped, coord)
}

fn textserverextension_ushaped_text_draw[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextDraw(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    canvas := unsafe{&RID(args[1])}
    pos := unsafe{&Vector2(args[2])}
    clip_l := unsafe{&f64(args[3])}
    clip_r := unsafe{&f64(args[4])}
    color := unsafe{&Color(args[5])}
    i.virt_shaped_text_draw(shaped, canvas, pos, clip_l, clip_r, color)
}

fn textserverextension_ushaped_text_draw_outline[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextDrawOutline(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    canvas := unsafe{&RID(args[1])}
    pos := unsafe{&Vector2(args[2])}
    clip_l := unsafe{&f64(args[3])}
    clip_r := unsafe{&f64(args[4])}
    outline_size := unsafe{&i64(args[5])}
    color := unsafe{&Color(args[6])}
    i.virt_shaped_text_draw_outline(shaped, canvas, pos, clip_l, clip_r, outline_size, color)
}

fn textserverextension_ushaped_text_get_grapheme_bounds[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetGraphemeBounds(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    pos := unsafe{&i64(args[1])}
    *(&Vector2(ret)) := i.virt_shaped_text_get_grapheme_bounds(shaped, pos)
}

fn textserverextension_ushaped_text_next_grapheme_pos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextNextGraphemePos(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    pos := unsafe{&i64(args[1])}
    *(&i64(ret)) := i.virt_shaped_text_next_grapheme_pos(shaped, pos)
}

fn textserverextension_ushaped_text_prev_grapheme_pos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextPrevGraphemePos(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    pos := unsafe{&i64(args[1])}
    *(&i64(ret)) := i.virt_shaped_text_prev_grapheme_pos(shaped, pos)
}

fn textserverextension_ushaped_text_get_character_breaks[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextGetCharacterBreaks(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    *(&PackedInt32Array(ret)) := i.virt_shaped_text_get_character_breaks(shaped)
}

fn textserverextension_ushaped_text_next_character_pos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextNextCharacterPos(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    pos := unsafe{&i64(args[1])}
    *(&i64(ret)) := i.virt_shaped_text_next_character_pos(shaped, pos)
}

fn textserverextension_ushaped_text_prev_character_pos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextPrevCharacterPos(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    pos := unsafe{&i64(args[1])}
    *(&i64(ret)) := i.virt_shaped_text_prev_character_pos(shaped, pos)
}

fn textserverextension_ushaped_text_closest_character_pos[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionShapedTextClosestCharacterPos(unsafe{&T(voidptr(inst))})
    shaped := unsafe{&RID(args[0])}
    pos := unsafe{&i64(args[1])}
    *(&i64(ret)) := i.virt_shaped_text_closest_character_pos(shaped, pos)
}

fn textserverextension_uformat_number[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionFormatNumber(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    language := unsafe{&String(args[1])}
    *(&String(ret)) := i.virt_format_number(gdstring, language)
}

fn textserverextension_uparse_number[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionParseNumber(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    language := unsafe{&String(args[1])}
    *(&String(ret)) := i.virt_parse_number(gdstring, language)
}

fn textserverextension_upercent_sign[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionPercentSign(unsafe{&T(voidptr(inst))})
    language := unsafe{&String(args[0])}
    *(&String(ret)) := i.virt_percent_sign(language)
}

fn textserverextension_ustrip_diacritics[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionStripDiacritics(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    *(&String(ret)) := i.virt_strip_diacritics(gdstring)
}

fn textserverextension_uis_valid_identifier[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionIsValidIdentifier(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_is_valid_identifier(gdstring)
}

fn textserverextension_ustring_get_word_breaks[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionStringGetWordBreaks(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    language := unsafe{&String(args[1])}
    chars_per_line := unsafe{&i64(args[2])}
    *(&PackedInt32Array(ret)) := i.virt_string_get_word_breaks(gdstring, language, chars_per_line)
}

fn textserverextension_ustring_get_character_breaks[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionStringGetCharacterBreaks(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    language := unsafe{&String(args[1])}
    *(&PackedInt32Array(ret)) := i.virt_string_get_character_breaks(gdstring, language)
}

fn textserverextension_uis_confusable[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionIsConfusable(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    dict := unsafe{&PackedStringArray(args[1])}
    *(&i64(ret)) := i.virt_is_confusable(gdstring, dict)
}

fn textserverextension_uspoof_check[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionSpoofCheck(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    *(&bool(ret)) := i.virt_spoof_check(gdstring)
}

fn textserverextension_ustring_to_upper[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionStringToUpper(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    language := unsafe{&String(args[1])}
    *(&String(ret)) := i.virt_string_to_upper(gdstring, language)
}

fn textserverextension_ustring_to_lower[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionStringToLower(unsafe{&T(voidptr(inst))})
    gdstring := unsafe{&String(args[0])}
    language := unsafe{&String(args[1])}
    *(&String(ret)) := i.virt_string_to_lower(gdstring, language)
}

fn textserverextension_uparse_structured_text[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionParseStructuredText(unsafe{&T(voidptr(inst))})
    parser_type := unsafe{&TextServerStructuredTextParser(args[0])}
    gdargs := unsafe{&Array(args[1])}
    text := unsafe{&String(args[2])}
    *(&Array(ret)) := i.virt_parse_structured_text(parser_type, gdargs, text)
}

fn textserverextension_ucleanup[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextServerExtensionCleanup(unsafe{&T(voidptr(inst))})
    i.virt_cleanup()
}

fn texture2d_uget_width[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture2DGetWidth(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_width()
}

fn texture2d_uget_height[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture2DGetHeight(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_height()
}

fn texture2d_uis_pixel_opaque[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture2DIsPixelOpaque(unsafe{&T(voidptr(inst))})
    x := unsafe{&i32(args[0])}
    y := unsafe{&i32(args[1])}
    *(&bool(ret)) := i.virt_is_pixel_opaque(x, y)
}

fn texture2d_uhas_alpha[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture2DHasAlpha(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_has_alpha()
}

fn texture2d_udraw[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture2DDraw(unsafe{&T(voidptr(inst))})
    to_canvas_item := unsafe{&RID(args[0])}
    pos := unsafe{&Vector2(args[1])}
    modulate := unsafe{&Color(args[2])}
    transpose := unsafe{&bool(args[3])}
    i.virt_draw(to_canvas_item, pos, modulate, transpose)
}

fn texture2d_udraw_rect[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture2DDrawRect(unsafe{&T(voidptr(inst))})
    to_canvas_item := unsafe{&RID(args[0])}
    rect := unsafe{&Rect2(args[1])}
    tile := unsafe{&bool(args[2])}
    modulate := unsafe{&Color(args[3])}
    transpose := unsafe{&bool(args[4])}
    i.virt_draw_rect(to_canvas_item, rect, tile, modulate, transpose)
}

fn texture2d_udraw_rect_region[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture2DDrawRectRegion(unsafe{&T(voidptr(inst))})
    to_canvas_item := unsafe{&RID(args[0])}
    rect := unsafe{&Rect2(args[1])}
    src_rect := unsafe{&Rect2(args[2])}
    modulate := unsafe{&Color(args[3])}
    transpose := unsafe{&bool(args[4])}
    clip_uv := unsafe{&bool(args[5])}
    i.virt_draw_rect_region(to_canvas_item, rect, src_rect, modulate, transpose, clip_uv)
}

fn texture3d_uget_format[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture3DGetFormat(unsafe{&T(voidptr(inst))})
    *(&ImageFormat(ret)) := i.virt_get_format()
}

fn texture3d_uget_width[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture3DGetWidth(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_width()
}

fn texture3d_uget_height[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture3DGetHeight(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_height()
}

fn texture3d_uget_depth[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture3DGetDepth(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_depth()
}

fn texture3d_uhas_mipmaps[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture3DHasMipmaps(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_has_mipmaps()
}

fn texture3d_uget_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITexture3DGetData(unsafe{&T(voidptr(inst))})
    *(&Array(ret)) := i.virt_get_data()
}

fn texturelayered_uget_format[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextureLayeredGetFormat(unsafe{&T(voidptr(inst))})
    *(&ImageFormat(ret)) := i.virt_get_format()
}

fn texturelayered_uget_layered_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextureLayeredGetLayeredType(unsafe{&T(voidptr(inst))})
    *(&u32(ret)) := i.virt_get_layered_type()
}

fn texturelayered_uget_width[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextureLayeredGetWidth(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_width()
}

fn texturelayered_uget_height[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextureLayeredGetHeight(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_height()
}

fn texturelayered_uget_layers[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextureLayeredGetLayers(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_layers()
}

fn texturelayered_uhas_mipmaps[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextureLayeredHasMipmaps(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_has_mipmaps()
}

fn texturelayered_uget_layer_data[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITextureLayeredGetLayerData(unsafe{&T(voidptr(inst))})
    layer_index := unsafe{&i32(args[0])}
    *(&Image(ret)) := i.virt_get_layer_data(layer_index)
}

fn tilemap_uuse_tile_data_runtime_update[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITileMapUseTileDataRuntimeUpdate(unsafe{&T(voidptr(inst))})
    layer := unsafe{&i32(args[0])}
    coords := unsafe{&Vector2i(args[1])}
    *(&bool(ret)) := i.virt_use_tile_data_runtime_update(layer, coords)
}

fn tilemap_utile_data_runtime_update[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITileMapTileDataRuntimeUpdate(unsafe{&T(voidptr(inst))})
    layer := unsafe{&i32(args[0])}
    coords := unsafe{&Vector2i(args[1])}
    tile_data := unsafe{&TileData(args[2])}
    i.virt_tile_data_runtime_update(layer, coords, tile_data)
}

fn translation_uget_plural_message[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITranslationGetPluralMessage(unsafe{&T(voidptr(inst))})
    src_message := unsafe{&StringName(args[0])}
    src_plural_message := unsafe{&StringName(args[1])}
    n := unsafe{&i32(args[2])}
    context := unsafe{&StringName(args[3])}
    *(&StringName(ret)) := i.virt_get_plural_message(src_message, src_plural_message, n, context)
}

fn translation_uget_message[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &ITranslationGetMessage(unsafe{&T(voidptr(inst))})
    src_message := unsafe{&StringName(args[0])}
    context := unsafe{&StringName(args[1])}
    *(&StringName(ret)) := i.virt_get_message(src_message, context)
}

fn videostream_uinstantiate_playback[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamInstantiatePlayback(unsafe{&T(voidptr(inst))})
    *(&VideoStreamPlayback(ret)) := i.virt_instantiate_playback()
}

fn videostreamplayback_ustop[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackStop(unsafe{&T(voidptr(inst))})
    i.virt_stop()
}

fn videostreamplayback_uplay[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackPlay(unsafe{&T(voidptr(inst))})
    i.virt_play()
}

fn videostreamplayback_uis_playing[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackIsPlaying(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_playing()
}

fn videostreamplayback_uset_paused[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackSetPaused(unsafe{&T(voidptr(inst))})
    paused := unsafe{&bool(args[0])}
    i.virt_set_paused(paused)
}

fn videostreamplayback_uis_paused[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackIsPaused(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_paused()
}

fn videostreamplayback_uget_length[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackGetLength(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_length()
}

fn videostreamplayback_uget_playback_position[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackGetPlaybackPosition(unsafe{&T(voidptr(inst))})
    *(&f64(ret)) := i.virt_get_playback_position()
}

fn videostreamplayback_useek[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackSeek(unsafe{&T(voidptr(inst))})
    time := unsafe{&f64(args[0])}
    i.virt_seek(time)
}

fn videostreamplayback_uset_audio_track[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackSetAudioTrack(unsafe{&T(voidptr(inst))})
    idx := unsafe{&i32(args[0])}
    i.virt_set_audio_track(idx)
}

fn videostreamplayback_uget_texture[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackGetTexture(unsafe{&T(voidptr(inst))})
    *(&Texture2D(ret)) := i.virt_get_texture()
}

fn videostreamplayback_uupdate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackUpdate(unsafe{&T(voidptr(inst))})
    delta := unsafe{&f64(args[0])}
    i.virt_update(delta)
}

fn videostreamplayback_uget_channels[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackGetChannels(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_channels()
}

fn videostreamplayback_uget_mix_rate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVideoStreamPlaybackGetMixRate(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_mix_rate()
}

fn visualinstance3d_uget_aabb[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualInstance3DGetAabb(unsafe{&T(voidptr(inst))})
    *(&AABB(ret)) := i.virt_get_aabb()
}

fn visualshadernodecustom_uget_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetName(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_name()
}

fn visualshadernodecustom_uget_description[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetDescription(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_description()
}

fn visualshadernodecustom_uget_category[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetCategory(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_category()
}

fn visualshadernodecustom_uget_return_icon_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetReturnIconType(unsafe{&T(voidptr(inst))})
    *(&VisualShaderNodePortType(ret)) := i.virt_get_return_icon_type()
}

fn visualshadernodecustom_uget_input_port_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetInputPortCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_input_port_count()
}

fn visualshadernodecustom_uget_input_port_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetInputPortType(unsafe{&T(voidptr(inst))})
    port := unsafe{&i32(args[0])}
    *(&VisualShaderNodePortType(ret)) := i.virt_get_input_port_type(port)
}

fn visualshadernodecustom_uget_input_port_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetInputPortName(unsafe{&T(voidptr(inst))})
    port := unsafe{&i32(args[0])}
    *(&String(ret)) := i.virt_get_input_port_name(port)
}

fn visualshadernodecustom_uget_input_port_default_value[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetInputPortDefaultValue(unsafe{&T(voidptr(inst))})
    port := unsafe{&i32(args[0])}
    *(&Variant(ret)) := i.virt_get_input_port_default_value(port)
}

fn visualshadernodecustom_uget_default_input_port[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetDefaultInputPort(unsafe{&T(voidptr(inst))})
    type_name := unsafe{&VisualShaderNodePortType(args[0])}
    *(&i32(ret)) := i.virt_get_default_input_port(type_name)
}

fn visualshadernodecustom_uget_output_port_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetOutputPortCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_output_port_count()
}

fn visualshadernodecustom_uget_output_port_type[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetOutputPortType(unsafe{&T(voidptr(inst))})
    port := unsafe{&i32(args[0])}
    *(&VisualShaderNodePortType(ret)) := i.virt_get_output_port_type(port)
}

fn visualshadernodecustom_uget_output_port_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetOutputPortName(unsafe{&T(voidptr(inst))})
    port := unsafe{&i32(args[0])}
    *(&String(ret)) := i.virt_get_output_port_name(port)
}

fn visualshadernodecustom_uget_property_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetPropertyCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_property_count()
}

fn visualshadernodecustom_uget_property_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetPropertyName(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&String(ret)) := i.virt_get_property_name(index)
}

fn visualshadernodecustom_uget_property_default_index[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetPropertyDefaultIndex(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&i32(ret)) := i.virt_get_property_default_index(index)
}

fn visualshadernodecustom_uget_property_options[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetPropertyOptions(unsafe{&T(voidptr(inst))})
    index := unsafe{&i32(args[0])}
    *(&PackedStringArray(ret)) := i.virt_get_property_options(index)
}

fn visualshadernodecustom_uget_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetCode(unsafe{&T(voidptr(inst))})
    input_vars := unsafe{&Array(args[0])}
    output_vars := unsafe{&Array(args[1])}
    mode := unsafe{&ShaderMode(args[2])}
    type_name := unsafe{&VisualShaderType(args[3])}
    *(&String(ret)) := i.virt_get_code(input_vars, output_vars, mode, type_name)
}

fn visualshadernodecustom_uget_func_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetFuncCode(unsafe{&T(voidptr(inst))})
    mode := unsafe{&ShaderMode(args[0])}
    type_name := unsafe{&VisualShaderType(args[1])}
    *(&String(ret)) := i.virt_get_func_code(mode, type_name)
}

fn visualshadernodecustom_uget_global_code[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomGetGlobalCode(unsafe{&T(voidptr(inst))})
    mode := unsafe{&ShaderMode(args[0])}
    *(&String(ret)) := i.virt_get_global_code(mode)
}

fn visualshadernodecustom_uis_highend[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomIsHighend(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_highend()
}

fn visualshadernodecustom_uis_available[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IVisualShaderNodeCustomIsAvailable(unsafe{&T(voidptr(inst))})
    mode := unsafe{&ShaderMode(args[0])}
    type_name := unsafe{&VisualShaderType(args[1])}
    *(&bool(ret)) := i.virt_is_available(mode, type_name)
}

fn webrtcdatachannelextension_uget_packet[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetPacket(unsafe{&T(voidptr(inst))})
    r_buffer := unsafe{&&&u8 (args[0])}
    r_buffer_size := unsafe{&&i32(args[1])}
    *(&GDError(ret)) := i.virt_get_packet(r_buffer, r_buffer_size)
}

fn webrtcdatachannelextension_uput_packet[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionPutPacket(unsafe{&T(voidptr(inst))})
    p_buffer := unsafe{&&u8(args[0])}
    p_buffer_size := unsafe{&i32(args[1])}
    *(&GDError(ret)) := i.virt_put_packet(p_buffer, p_buffer_size)
}

fn webrtcdatachannelextension_uget_available_packet_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetAvailablePacketCount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_available_packet_count()
}

fn webrtcdatachannelextension_uget_max_packet_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetMaxPacketSize(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_max_packet_size()
}

fn webrtcdatachannelextension_upoll[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionPoll(unsafe{&T(voidptr(inst))})
    *(&GDError(ret)) := i.virt_poll()
}

fn webrtcdatachannelextension_uclose[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionClose(unsafe{&T(voidptr(inst))})
    i.virt_close()
}

fn webrtcdatachannelextension_uset_write_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionSetWriteMode(unsafe{&T(voidptr(inst))})
    p_write_mode := unsafe{&WebRTCDataChannelWriteMode(args[0])}
    i.virt_set_write_mode(p_write_mode)
}

fn webrtcdatachannelextension_uget_write_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetWriteMode(unsafe{&T(voidptr(inst))})
    *(&WebRTCDataChannelWriteMode(ret)) := i.virt_get_write_mode()
}

fn webrtcdatachannelextension_uwas_string_packet[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionWasStringPacket(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_was_string_packet()
}

fn webrtcdatachannelextension_uget_ready_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetReadyState(unsafe{&T(voidptr(inst))})
    *(&WebRTCDataChannelChannelState(ret)) := i.virt_get_ready_state()
}

fn webrtcdatachannelextension_uget_label[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetLabel(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_label()
}

fn webrtcdatachannelextension_uis_ordered[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionIsOrdered(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_ordered()
}

fn webrtcdatachannelextension_uget_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetId(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_id()
}

fn webrtcdatachannelextension_uget_max_packet_life_time[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetMaxPacketLifeTime(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_max_packet_life_time()
}

fn webrtcdatachannelextension_uget_max_retransmits[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetMaxRetransmits(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_max_retransmits()
}

fn webrtcdatachannelextension_uget_protocol[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetProtocol(unsafe{&T(voidptr(inst))})
    *(&String(ret)) := i.virt_get_protocol()
}

fn webrtcdatachannelextension_uis_negotiated[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionIsNegotiated(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_negotiated()
}

fn webrtcdatachannelextension_uget_buffered_amount[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCDataChannelExtensionGetBufferedAmount(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_buffered_amount()
}

fn webrtcpeerconnectionextension_uget_connection_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionGetConnectionState(unsafe{&T(voidptr(inst))})
    *(&WebRTCPeerConnectionConnectionState(ret)) := i.virt_get_connection_state()
}

fn webrtcpeerconnectionextension_uget_gathering_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionGetGatheringState(unsafe{&T(voidptr(inst))})
    *(&WebRTCPeerConnectionGatheringState(ret)) := i.virt_get_gathering_state()
}

fn webrtcpeerconnectionextension_uget_signaling_state[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionGetSignalingState(unsafe{&T(voidptr(inst))})
    *(&WebRTCPeerConnectionSignalingState(ret)) := i.virt_get_signaling_state()
}

fn webrtcpeerconnectionextension_uinitialize[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionInitialize(unsafe{&T(voidptr(inst))})
    p_config := unsafe{&Dictionary(args[0])}
    *(&GDError(ret)) := i.virt_initialize(p_config)
}

fn webrtcpeerconnectionextension_ucreate_data_channel[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionCreateDataChannel(unsafe{&T(voidptr(inst))})
    p_label := unsafe{&String(args[0])}
    p_config := unsafe{&Dictionary(args[1])}
    *(&WebRTCDataChannel(ret)) := i.virt_create_data_channel(p_label, p_config)
}

fn webrtcpeerconnectionextension_ucreate_offer[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionCreateOffer(unsafe{&T(voidptr(inst))})
    *(&GDError(ret)) := i.virt_create_offer()
}

fn webrtcpeerconnectionextension_uset_remote_description[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionSetRemoteDescription(unsafe{&T(voidptr(inst))})
    p_type := unsafe{&String(args[0])}
    p_sdp := unsafe{&String(args[1])}
    *(&GDError(ret)) := i.virt_set_remote_description(p_type, p_sdp)
}

fn webrtcpeerconnectionextension_uset_local_description[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionSetLocalDescription(unsafe{&T(voidptr(inst))})
    p_type := unsafe{&String(args[0])}
    p_sdp := unsafe{&String(args[1])}
    *(&GDError(ret)) := i.virt_set_local_description(p_type, p_sdp)
}

fn webrtcpeerconnectionextension_uadd_ice_candidate[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionAddIceCandidate(unsafe{&T(voidptr(inst))})
    p_sdp_mid_name := unsafe{&String(args[0])}
    p_sdp_mline_index := unsafe{&i32(args[1])}
    p_sdp_name := unsafe{&String(args[2])}
    *(&GDError(ret)) := i.virt_add_ice_candidate(p_sdp_mid_name, p_sdp_mline_index, p_sdp_name)
}

fn webrtcpeerconnectionextension_upoll[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionPoll(unsafe{&T(voidptr(inst))})
    *(&GDError(ret)) := i.virt_poll()
}

fn webrtcpeerconnectionextension_uclose[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWebRTCPeerConnectionExtensionClose(unsafe{&T(voidptr(inst))})
    i.virt_close()
}

fn window_uget_contents_minimum_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IWindowGetContentsMinimumSize(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_contents_minimum_size()
}

fn xrinterfaceextension_uget_name[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetName(unsafe{&T(voidptr(inst))})
    *(&StringName(ret)) := i.virt_get_name()
}

fn xrinterfaceextension_uget_capabilities[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetCapabilities(unsafe{&T(voidptr(inst))})
    *(&u32(ret)) := i.virt_get_capabilities()
}

fn xrinterfaceextension_uis_initialized[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionIsInitialized(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_is_initialized()
}

fn xrinterfaceextension_uinitialize[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionInitialize(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_initialize()
}

fn xrinterfaceextension_uuninitialize[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionUninitialize(unsafe{&T(voidptr(inst))})
    i.virt_uninitialize()
}

fn xrinterfaceextension_uget_system_info[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetSystemInfo(unsafe{&T(voidptr(inst))})
    *(&Dictionary(ret)) := i.virt_get_system_info()
}

fn xrinterfaceextension_usupports_play_area_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionSupportsPlayAreaMode(unsafe{&T(voidptr(inst))})
    mode := unsafe{&XRInterfacePlayAreaMode(args[0])}
    *(&bool(ret)) := i.virt_supports_play_area_mode(mode)
}

fn xrinterfaceextension_uget_play_area_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetPlayAreaMode(unsafe{&T(voidptr(inst))})
    *(&XRInterfacePlayAreaMode(ret)) := i.virt_get_play_area_mode()
}

fn xrinterfaceextension_uset_play_area_mode[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionSetPlayAreaMode(unsafe{&T(voidptr(inst))})
    mode := unsafe{&XRInterfacePlayAreaMode(args[0])}
    *(&bool(ret)) := i.virt_set_play_area_mode(mode)
}

fn xrinterfaceextension_uget_play_area[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetPlayArea(unsafe{&T(voidptr(inst))})
    *(&PackedVector3Array(ret)) := i.virt_get_play_area()
}

fn xrinterfaceextension_uget_render_target_size[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetRenderTargetSize(unsafe{&T(voidptr(inst))})
    *(&Vector2(ret)) := i.virt_get_render_target_size()
}

fn xrinterfaceextension_uget_view_count[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetViewCount(unsafe{&T(voidptr(inst))})
    *(&u32(ret)) := i.virt_get_view_count()
}

fn xrinterfaceextension_uget_camera_transform[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetCameraTransform(unsafe{&T(voidptr(inst))})
    *(&Transform3D(ret)) := i.virt_get_camera_transform()
}

fn xrinterfaceextension_uget_transform_for_view[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetTransformForView(unsafe{&T(voidptr(inst))})
    view := unsafe{&u32(args[0])}
    cam_transform := unsafe{&Transform3D(args[1])}
    *(&Transform3D(ret)) := i.virt_get_transform_for_view(view, cam_transform)
}

fn xrinterfaceextension_uget_projection_for_view[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetProjectionForView(unsafe{&T(voidptr(inst))})
    view := unsafe{&u32(args[0])}
    aspect := unsafe{&f64(args[1])}
    z_near := unsafe{&f64(args[2])}
    z_far := unsafe{&f64(args[3])}
    *(&PackedFloat64Array(ret)) := i.virt_get_projection_for_view(view, aspect, z_near, z_far)
}

fn xrinterfaceextension_uget_vrs_texture[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetVrsTexture(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_get_vrs_texture()
}

fn xrinterfaceextension_uprocess[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionProcess(unsafe{&T(voidptr(inst))})
    i.virt_process()
}

fn xrinterfaceextension_upre_render[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionPreRender(unsafe{&T(voidptr(inst))})
    i.virt_pre_render()
}

fn xrinterfaceextension_upre_draw_viewport[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionPreDrawViewport(unsafe{&T(voidptr(inst))})
    render_target := unsafe{&RID(args[0])}
    *(&bool(ret)) := i.virt_pre_draw_viewport(render_target)
}

fn xrinterfaceextension_upost_draw_viewport[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionPostDrawViewport(unsafe{&T(voidptr(inst))})
    render_target := unsafe{&RID(args[0])}
    screen_rect := unsafe{&Rect2(args[1])}
    i.virt_post_draw_viewport(render_target, screen_rect)
}

fn xrinterfaceextension_uend_frame[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionEndFrame(unsafe{&T(voidptr(inst))})
    i.virt_end_frame()
}

fn xrinterfaceextension_uget_suggested_tracker_names[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetSuggestedTrackerNames(unsafe{&T(voidptr(inst))})
    *(&PackedStringArray(ret)) := i.virt_get_suggested_tracker_names()
}

fn xrinterfaceextension_uget_suggested_pose_names[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetSuggestedPoseNames(unsafe{&T(voidptr(inst))})
    tracker_name := unsafe{&StringName(args[0])}
    *(&PackedStringArray(ret)) := i.virt_get_suggested_pose_names(tracker_name)
}

fn xrinterfaceextension_uget_tracking_status[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetTrackingStatus(unsafe{&T(voidptr(inst))})
    *(&XRInterfaceTrackingStatus(ret)) := i.virt_get_tracking_status()
}

fn xrinterfaceextension_utrigger_haptic_pulse[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionTriggerHapticPulse(unsafe{&T(voidptr(inst))})
    action_name := unsafe{&String(args[0])}
    tracker_name := unsafe{&StringName(args[1])}
    frequency := unsafe{&f64(args[2])}
    amplitude := unsafe{&f64(args[3])}
    duration_sec := unsafe{&f64(args[4])}
    delay_sec := unsafe{&f64(args[5])}
    i.virt_trigger_haptic_pulse(action_name, tracker_name, frequency, amplitude, duration_sec, delay_sec)
}

fn xrinterfaceextension_uget_anchor_detection_is_enabled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetAnchorDetectionIsEnabled(unsafe{&T(voidptr(inst))})
    *(&bool(ret)) := i.virt_get_anchor_detection_is_enabled()
}

fn xrinterfaceextension_uset_anchor_detection_is_enabled[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionSetAnchorDetectionIsEnabled(unsafe{&T(voidptr(inst))})
    enabled := unsafe{&bool(args[0])}
    i.virt_set_anchor_detection_is_enabled(enabled)
}

fn xrinterfaceextension_uget_camera_feed_id[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetCameraFeedId(unsafe{&T(voidptr(inst))})
    *(&i32(ret)) := i.virt_get_camera_feed_id()
}

fn xrinterfaceextension_uget_color_texture[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetColorTexture(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_get_color_texture()
}

fn xrinterfaceextension_uget_depth_texture[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetDepthTexture(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_get_depth_texture()
}

fn xrinterfaceextension_uget_velocity_texture[T] (inst GDExtensionClassInstancePtr, args &GDExtensionConstTypePtr, ret GDExtensionTypePtr) {
    mut i := &IXRInterfaceExtensionGetVelocityTexture(unsafe{&T(voidptr(inst))})
    *(&RID(ret)) := i.virt_get_velocity_texture()
}

fn register_virtual_methods[T](mut ci ClassInfo) {
    $if T is IAStar2DEstimateCost {
        ci.virtual_methods["_estimate_cost"] = astar2d_uestimate_cost[T]
    }
    $if T is IAStar2DComputeCost {
        ci.virtual_methods["_compute_cost"] = astar2d_ucompute_cost[T]
    }
    $if T is IAStar3DEstimateCost {
        ci.virtual_methods["_estimate_cost"] = astar3d_uestimate_cost[T]
    }
    $if T is IAStar3DComputeCost {
        ci.virtual_methods["_compute_cost"] = astar3d_ucompute_cost[T]
    }
    $if T is IAStarGrid2DEstimateCost {
        ci.virtual_methods["_estimate_cost"] = astargrid2d_uestimate_cost[T]
    }
    $if T is IAStarGrid2DComputeCost {
        ci.virtual_methods["_compute_cost"] = astargrid2d_ucompute_cost[T]
    }
    $if T is IAnimationMixerPostProcessKeyValue {
        ci.virtual_methods["_post_process_key_value"] = animationmixer_upost_process_key_value[T]
    }
    $if T is IAnimationNodeGetChildNodes {
        ci.virtual_methods["_get_child_nodes"] = animationnode_uget_child_nodes[T]
    }
    $if T is IAnimationNodeGetParameterList {
        ci.virtual_methods["_get_parameter_list"] = animationnode_uget_parameter_list[T]
    }
    $if T is IAnimationNodeGetChildByName {
        ci.virtual_methods["_get_child_by_name"] = animationnode_uget_child_by_name[T]
    }
    $if T is IAnimationNodeGetParameterDefaultValue {
        ci.virtual_methods["_get_parameter_default_value"] = animationnode_uget_parameter_default_value[T]
    }
    $if T is IAnimationNodeIsParameterReadOnly {
        ci.virtual_methods["_is_parameter_read_only"] = animationnode_uis_parameter_read_only[T]
    }
    $if T is IAnimationNodeProcess {
        ci.virtual_methods["_process"] = animationnode_uprocess[T]
    }
    $if T is IAnimationNodeGetCaption {
        ci.virtual_methods["_get_caption"] = animationnode_uget_caption[T]
    }
    $if T is IAnimationNodeHasFilter {
        ci.virtual_methods["_has_filter"] = animationnode_uhas_filter[T]
    }
    $if T is IAudioEffectInstantiate {
        ci.virtual_methods["_instantiate"] = audioeffect_uinstantiate[T]
    }
    $if T is IAudioEffectInstanceProcess {
        ci.virtual_methods["_process"] = audioeffectinstance_uprocess[T]
    }
    $if T is IAudioEffectInstanceProcessSilence {
        ci.virtual_methods["_process_silence"] = audioeffectinstance_uprocess_silence[T]
    }
    $if T is IAudioStreamInstantiatePlayback {
        ci.virtual_methods["_instantiate_playback"] = audiostream_uinstantiate_playback[T]
    }
    $if T is IAudioStreamGetStreamName {
        ci.virtual_methods["_get_stream_name"] = audiostream_uget_stream_name[T]
    }
    $if T is IAudioStreamGetLength {
        ci.virtual_methods["_get_length"] = audiostream_uget_length[T]
    }
    $if T is IAudioStreamIsMonophonic {
        ci.virtual_methods["_is_monophonic"] = audiostream_uis_monophonic[T]
    }
    $if T is IAudioStreamGetBpm {
        ci.virtual_methods["_get_bpm"] = audiostream_uget_bpm[T]
    }
    $if T is IAudioStreamGetBeatCount {
        ci.virtual_methods["_get_beat_count"] = audiostream_uget_beat_count[T]
    }
    $if T is IAudioStreamPlaybackStart {
        ci.virtual_methods["_start"] = audiostreamplayback_ustart[T]
    }
    $if T is IAudioStreamPlaybackStop {
        ci.virtual_methods["_stop"] = audiostreamplayback_ustop[T]
    }
    $if T is IAudioStreamPlaybackIsPlaying {
        ci.virtual_methods["_is_playing"] = audiostreamplayback_uis_playing[T]
    }
    $if T is IAudioStreamPlaybackGetLoopCount {
        ci.virtual_methods["_get_loop_count"] = audiostreamplayback_uget_loop_count[T]
    }
    $if T is IAudioStreamPlaybackGetPlaybackPosition {
        ci.virtual_methods["_get_playback_position"] = audiostreamplayback_uget_playback_position[T]
    }
    $if T is IAudioStreamPlaybackSeek {
        ci.virtual_methods["_seek"] = audiostreamplayback_useek[T]
    }
    $if T is IAudioStreamPlaybackMix {
        ci.virtual_methods["_mix"] = audiostreamplayback_umix[T]
    }
    $if T is IAudioStreamPlaybackTagUsedStreams {
        ci.virtual_methods["_tag_used_streams"] = audiostreamplayback_utag_used_streams[T]
    }
    $if T is IAudioStreamPlaybackResampledMixResampled {
        ci.virtual_methods["_mix_resampled"] = audiostreamplaybackresampled_umix_resampled[T]
    }
    $if T is IAudioStreamPlaybackResampledGetStreamSamplingRate {
        ci.virtual_methods["_get_stream_sampling_rate"] = audiostreamplaybackresampled_uget_stream_sampling_rate[T]
    }
    $if T is IBaseButtonPressed {
        ci.virtual_methods["_pressed"] = basebutton_upressed[T]
    }
    $if T is IBaseButtonToggled {
        ci.virtual_methods["_toggled"] = basebutton_utoggled[T]
    }
    $if T is ICanvasItemDraw {
        ci.virtual_methods["_draw"] = canvasitem_udraw[T]
    }
    $if T is ICodeEditConfirmCodeCompletion {
        ci.virtual_methods["_confirm_code_completion"] = codeedit_uconfirm_code_completion[T]
    }
    $if T is ICodeEditRequestCodeCompletion {
        ci.virtual_methods["_request_code_completion"] = codeedit_urequest_code_completion[T]
    }
    $if T is ICodeEditFilterCodeCompletionCandidates {
        ci.virtual_methods["_filter_code_completion_candidates"] = codeedit_ufilter_code_completion_candidates[T]
    }
    $if T is ICollisionObject2DInputEvent {
        ci.virtual_methods["_input_event"] = collisionobject2d_uinput_event[T]
    }
    $if T is ICollisionObject2DMouseEnter {
        ci.virtual_methods["_mouse_enter"] = collisionobject2d_umouse_enter[T]
    }
    $if T is ICollisionObject2DMouseExit {
        ci.virtual_methods["_mouse_exit"] = collisionobject2d_umouse_exit[T]
    }
    $if T is ICollisionObject2DMouseShapeEnter {
        ci.virtual_methods["_mouse_shape_enter"] = collisionobject2d_umouse_shape_enter[T]
    }
    $if T is ICollisionObject2DMouseShapeExit {
        ci.virtual_methods["_mouse_shape_exit"] = collisionobject2d_umouse_shape_exit[T]
    }
    $if T is ICollisionObject3DInputEvent {
        ci.virtual_methods["_input_event"] = collisionobject3d_uinput_event[T]
    }
    $if T is ICollisionObject3DMouseEnter {
        ci.virtual_methods["_mouse_enter"] = collisionobject3d_umouse_enter[T]
    }
    $if T is ICollisionObject3DMouseExit {
        ci.virtual_methods["_mouse_exit"] = collisionobject3d_umouse_exit[T]
    }
    $if T is IContainerGetAllowedSizeFlagsHorizontal {
        ci.virtual_methods["_get_allowed_size_flags_horizontal"] = container_uget_allowed_size_flags_horizontal[T]
    }
    $if T is IContainerGetAllowedSizeFlagsVertical {
        ci.virtual_methods["_get_allowed_size_flags_vertical"] = container_uget_allowed_size_flags_vertical[T]
    }
    $if T is IControlHasPoint {
        ci.virtual_methods["_has_point"] = control_uhas_point[T]
    }
    $if T is IControlStructuredTextParser {
        ci.virtual_methods["_structured_text_parser"] = control_ustructured_text_parser[T]
    }
    $if T is IControlGetMinimumSize {
        ci.virtual_methods["_get_minimum_size"] = control_uget_minimum_size[T]
    }
    $if T is IControlGetTooltip {
        ci.virtual_methods["_get_tooltip"] = control_uget_tooltip[T]
    }
    $if T is IControlGetDragData {
        ci.virtual_methods["_get_drag_data"] = control_uget_drag_data[T]
    }
    $if T is IControlCanDropData {
        ci.virtual_methods["_can_drop_data"] = control_ucan_drop_data[T]
    }
    $if T is IControlDropData {
        ci.virtual_methods["_drop_data"] = control_udrop_data[T]
    }
    $if T is IControlMakeCustomTooltip {
        ci.virtual_methods["_make_custom_tooltip"] = control_umake_custom_tooltip[T]
    }
    $if T is IControlGuiInput {
        ci.virtual_methods["_gui_input"] = control_ugui_input[T]
    }
    $if T is IEditorDebuggerPluginSetupSession {
        ci.virtual_methods["_setup_session"] = editordebuggerplugin_usetup_session[T]
    }
    $if T is IEditorDebuggerPluginHasCapture {
        ci.virtual_methods["_has_capture"] = editordebuggerplugin_uhas_capture[T]
    }
    $if T is IEditorDebuggerPluginCapture {
        ci.virtual_methods["_capture"] = editordebuggerplugin_ucapture[T]
    }
    $if T is IEditorExportPluginExportFile {
        ci.virtual_methods["_export_file"] = editorexportplugin_uexport_file[T]
    }
    $if T is IEditorExportPluginExportBegin {
        ci.virtual_methods["_export_begin"] = editorexportplugin_uexport_begin[T]
    }
    $if T is IEditorExportPluginExportEnd {
        ci.virtual_methods["_export_end"] = editorexportplugin_uexport_end[T]
    }
    $if T is IEditorExportPluginBeginCustomizeResources {
        ci.virtual_methods["_begin_customize_resources"] = editorexportplugin_ubegin_customize_resources[T]
    }
    $if T is IEditorExportPluginCustomizeResource {
        ci.virtual_methods["_customize_resource"] = editorexportplugin_ucustomize_resource[T]
    }
    $if T is IEditorExportPluginBeginCustomizeScenes {
        ci.virtual_methods["_begin_customize_scenes"] = editorexportplugin_ubegin_customize_scenes[T]
    }
    $if T is IEditorExportPluginCustomizeScene {
        ci.virtual_methods["_customize_scene"] = editorexportplugin_ucustomize_scene[T]
    }
    $if T is IEditorExportPluginGetCustomizationConfigurationHash {
        ci.virtual_methods["_get_customization_configuration_hash"] = editorexportplugin_uget_customization_configuration_hash[T]
    }
    $if T is IEditorExportPluginEndCustomizeScenes {
        ci.virtual_methods["_end_customize_scenes"] = editorexportplugin_uend_customize_scenes[T]
    }
    $if T is IEditorExportPluginEndCustomizeResources {
        ci.virtual_methods["_end_customize_resources"] = editorexportplugin_uend_customize_resources[T]
    }
    $if T is IEditorExportPluginGetExportOptions {
        ci.virtual_methods["_get_export_options"] = editorexportplugin_uget_export_options[T]
    }
    $if T is IEditorExportPluginShouldUpdateExportOptions {
        ci.virtual_methods["_should_update_export_options"] = editorexportplugin_ushould_update_export_options[T]
    }
    $if T is IEditorExportPluginGetExportOptionWarning {
        ci.virtual_methods["_get_export_option_warning"] = editorexportplugin_uget_export_option_warning[T]
    }
    $if T is IEditorExportPluginGetExportFeatures {
        ci.virtual_methods["_get_export_features"] = editorexportplugin_uget_export_features[T]
    }
    $if T is IEditorExportPluginGetName {
        ci.virtual_methods["_get_name"] = editorexportplugin_uget_name[T]
    }
    $if T is IEditorExportPluginSupportsPlatform {
        ci.virtual_methods["_supports_platform"] = editorexportplugin_usupports_platform[T]
    }
    $if T is IEditorExportPluginGetAndroidDependencies {
        ci.virtual_methods["_get_android_dependencies"] = editorexportplugin_uget_android_dependencies[T]
    }
    $if T is IEditorExportPluginGetAndroidDependenciesMavenRepos {
        ci.virtual_methods["_get_android_dependencies_maven_repos"] = editorexportplugin_uget_android_dependencies_maven_repos[T]
    }
    $if T is IEditorExportPluginGetAndroidLibraries {
        ci.virtual_methods["_get_android_libraries"] = editorexportplugin_uget_android_libraries[T]
    }
    $if T is IEditorExportPluginGetAndroidManifestActivityElementContents {
        ci.virtual_methods["_get_android_manifest_activity_element_contents"] = editorexportplugin_uget_android_manifest_activity_element_contents[T]
    }
    $if T is IEditorExportPluginGetAndroidManifestApplicationElementContents {
        ci.virtual_methods["_get_android_manifest_application_element_contents"] = editorexportplugin_uget_android_manifest_application_element_contents[T]
    }
    $if T is IEditorExportPluginGetAndroidManifestElementContents {
        ci.virtual_methods["_get_android_manifest_element_contents"] = editorexportplugin_uget_android_manifest_element_contents[T]
    }
    $if T is IEditorFileSystemImportFormatSupportQueryIsActive {
        ci.virtual_methods["_is_active"] = editorfilesystemimportformatsupportquery_uis_active[T]
    }
    $if T is IEditorFileSystemImportFormatSupportQueryGetFileExtensions {
        ci.virtual_methods["_get_file_extensions"] = editorfilesystemimportformatsupportquery_uget_file_extensions[T]
    }
    $if T is IEditorFileSystemImportFormatSupportQueryQuery {
        ci.virtual_methods["_query"] = editorfilesystemimportformatsupportquery_uquery[T]
    }
    $if T is IEditorImportPluginGetImporterName {
        ci.virtual_methods["_get_importer_name"] = editorimportplugin_uget_importer_name[T]
    }
    $if T is IEditorImportPluginGetVisibleName {
        ci.virtual_methods["_get_visible_name"] = editorimportplugin_uget_visible_name[T]
    }
    $if T is IEditorImportPluginGetPresetCount {
        ci.virtual_methods["_get_preset_count"] = editorimportplugin_uget_preset_count[T]
    }
    $if T is IEditorImportPluginGetPresetName {
        ci.virtual_methods["_get_preset_name"] = editorimportplugin_uget_preset_name[T]
    }
    $if T is IEditorImportPluginGetRecognizedExtensions {
        ci.virtual_methods["_get_recognized_extensions"] = editorimportplugin_uget_recognized_extensions[T]
    }
    $if T is IEditorImportPluginGetImportOptions {
        ci.virtual_methods["_get_import_options"] = editorimportplugin_uget_import_options[T]
    }
    $if T is IEditorImportPluginGetSaveExtension {
        ci.virtual_methods["_get_save_extension"] = editorimportplugin_uget_save_extension[T]
    }
    $if T is IEditorImportPluginGetResourceType {
        ci.virtual_methods["_get_resource_type"] = editorimportplugin_uget_resource_type[T]
    }
    $if T is IEditorImportPluginGetPriority {
        ci.virtual_methods["_get_priority"] = editorimportplugin_uget_priority[T]
    }
    $if T is IEditorImportPluginGetImportOrder {
        ci.virtual_methods["_get_import_order"] = editorimportplugin_uget_import_order[T]
    }
    $if T is IEditorImportPluginGetOptionVisibility {
        ci.virtual_methods["_get_option_visibility"] = editorimportplugin_uget_option_visibility[T]
    }
    $if T is IEditorImportPluginImport {
        ci.virtual_methods["_import"] = editorimportplugin_uimport[T]
    }
    $if T is IEditorInspectorPluginCanHandle {
        ci.virtual_methods["_can_handle"] = editorinspectorplugin_ucan_handle[T]
    }
    $if T is IEditorInspectorPluginParseBegin {
        ci.virtual_methods["_parse_begin"] = editorinspectorplugin_uparse_begin[T]
    }
    $if T is IEditorInspectorPluginParseCategory {
        ci.virtual_methods["_parse_category"] = editorinspectorplugin_uparse_category[T]
    }
    $if T is IEditorInspectorPluginParseGroup {
        ci.virtual_methods["_parse_group"] = editorinspectorplugin_uparse_group[T]
    }
    $if T is IEditorInspectorPluginParseProperty {
        ci.virtual_methods["_parse_property"] = editorinspectorplugin_uparse_property[T]
    }
    $if T is IEditorInspectorPluginParseEnd {
        ci.virtual_methods["_parse_end"] = editorinspectorplugin_uparse_end[T]
    }
    $if T is IEditorNode3DGizmoRedraw {
        ci.virtual_methods["_redraw"] = editornode3dgizmo_uredraw[T]
    }
    $if T is IEditorNode3DGizmoGetHandleName {
        ci.virtual_methods["_get_handle_name"] = editornode3dgizmo_uget_handle_name[T]
    }
    $if T is IEditorNode3DGizmoIsHandleHighlighted {
        ci.virtual_methods["_is_handle_highlighted"] = editornode3dgizmo_uis_handle_highlighted[T]
    }
    $if T is IEditorNode3DGizmoGetHandleValue {
        ci.virtual_methods["_get_handle_value"] = editornode3dgizmo_uget_handle_value[T]
    }
    $if T is IEditorNode3DGizmoSetHandle {
        ci.virtual_methods["_set_handle"] = editornode3dgizmo_uset_handle[T]
    }
    $if T is IEditorNode3DGizmoCommitHandle {
        ci.virtual_methods["_commit_handle"] = editornode3dgizmo_ucommit_handle[T]
    }
    $if T is IEditorNode3DGizmoSubgizmosIntersectRay {
        ci.virtual_methods["_subgizmos_intersect_ray"] = editornode3dgizmo_usubgizmos_intersect_ray[T]
    }
    $if T is IEditorNode3DGizmoSubgizmosIntersectFrustum {
        ci.virtual_methods["_subgizmos_intersect_frustum"] = editornode3dgizmo_usubgizmos_intersect_frustum[T]
    }
    $if T is IEditorNode3DGizmoSetSubgizmoTransform {
        ci.virtual_methods["_set_subgizmo_transform"] = editornode3dgizmo_uset_subgizmo_transform[T]
    }
    $if T is IEditorNode3DGizmoGetSubgizmoTransform {
        ci.virtual_methods["_get_subgizmo_transform"] = editornode3dgizmo_uget_subgizmo_transform[T]
    }
    $if T is IEditorNode3DGizmoCommitSubgizmos {
        ci.virtual_methods["_commit_subgizmos"] = editornode3dgizmo_ucommit_subgizmos[T]
    }
    $if T is IEditorNode3DGizmoPluginHasGizmo {
        ci.virtual_methods["_has_gizmo"] = editornode3dgizmoplugin_uhas_gizmo[T]
    }
    $if T is IEditorNode3DGizmoPluginCreateGizmo {
        ci.virtual_methods["_create_gizmo"] = editornode3dgizmoplugin_ucreate_gizmo[T]
    }
    $if T is IEditorNode3DGizmoPluginGetGizmoName {
        ci.virtual_methods["_get_gizmo_name"] = editornode3dgizmoplugin_uget_gizmo_name[T]
    }
    $if T is IEditorNode3DGizmoPluginGetPriority {
        ci.virtual_methods["_get_priority"] = editornode3dgizmoplugin_uget_priority[T]
    }
    $if T is IEditorNode3DGizmoPluginCanBeHidden {
        ci.virtual_methods["_can_be_hidden"] = editornode3dgizmoplugin_ucan_be_hidden[T]
    }
    $if T is IEditorNode3DGizmoPluginIsSelectableWhenHidden {
        ci.virtual_methods["_is_selectable_when_hidden"] = editornode3dgizmoplugin_uis_selectable_when_hidden[T]
    }
    $if T is IEditorNode3DGizmoPluginRedraw {
        ci.virtual_methods["_redraw"] = editornode3dgizmoplugin_uredraw[T]
    }
    $if T is IEditorNode3DGizmoPluginGetHandleName {
        ci.virtual_methods["_get_handle_name"] = editornode3dgizmoplugin_uget_handle_name[T]
    }
    $if T is IEditorNode3DGizmoPluginIsHandleHighlighted {
        ci.virtual_methods["_is_handle_highlighted"] = editornode3dgizmoplugin_uis_handle_highlighted[T]
    }
    $if T is IEditorNode3DGizmoPluginGetHandleValue {
        ci.virtual_methods["_get_handle_value"] = editornode3dgizmoplugin_uget_handle_value[T]
    }
    $if T is IEditorNode3DGizmoPluginSetHandle {
        ci.virtual_methods["_set_handle"] = editornode3dgizmoplugin_uset_handle[T]
    }
    $if T is IEditorNode3DGizmoPluginCommitHandle {
        ci.virtual_methods["_commit_handle"] = editornode3dgizmoplugin_ucommit_handle[T]
    }
    $if T is IEditorNode3DGizmoPluginSubgizmosIntersectRay {
        ci.virtual_methods["_subgizmos_intersect_ray"] = editornode3dgizmoplugin_usubgizmos_intersect_ray[T]
    }
    $if T is IEditorNode3DGizmoPluginSubgizmosIntersectFrustum {
        ci.virtual_methods["_subgizmos_intersect_frustum"] = editornode3dgizmoplugin_usubgizmos_intersect_frustum[T]
    }
    $if T is IEditorNode3DGizmoPluginGetSubgizmoTransform {
        ci.virtual_methods["_get_subgizmo_transform"] = editornode3dgizmoplugin_uget_subgizmo_transform[T]
    }
    $if T is IEditorNode3DGizmoPluginSetSubgizmoTransform {
        ci.virtual_methods["_set_subgizmo_transform"] = editornode3dgizmoplugin_uset_subgizmo_transform[T]
    }
    $if T is IEditorNode3DGizmoPluginCommitSubgizmos {
        ci.virtual_methods["_commit_subgizmos"] = editornode3dgizmoplugin_ucommit_subgizmos[T]
    }
    $if T is IEditorPluginForwardCanvasGuiInput {
        ci.virtual_methods["_forward_canvas_gui_input"] = editorplugin_uforward_canvas_gui_input[T]
    }
    $if T is IEditorPluginForwardCanvasDrawOverViewport {
        ci.virtual_methods["_forward_canvas_draw_over_viewport"] = editorplugin_uforward_canvas_draw_over_viewport[T]
    }
    $if T is IEditorPluginForwardCanvasForceDrawOverViewport {
        ci.virtual_methods["_forward_canvas_force_draw_over_viewport"] = editorplugin_uforward_canvas_force_draw_over_viewport[T]
    }
    $if T is IEditorPluginForward3dGuiInput {
        ci.virtual_methods["_forward_3d_gui_input"] = editorplugin_uforward_3d_gui_input[T]
    }
    $if T is IEditorPluginForward3dDrawOverViewport {
        ci.virtual_methods["_forward_3d_draw_over_viewport"] = editorplugin_uforward_3d_draw_over_viewport[T]
    }
    $if T is IEditorPluginForward3dForceDrawOverViewport {
        ci.virtual_methods["_forward_3d_force_draw_over_viewport"] = editorplugin_uforward_3d_force_draw_over_viewport[T]
    }
    $if T is IEditorPluginGetPluginName {
        ci.virtual_methods["_get_plugin_name"] = editorplugin_uget_plugin_name[T]
    }
    $if T is IEditorPluginGetPluginIcon {
        ci.virtual_methods["_get_plugin_icon"] = editorplugin_uget_plugin_icon[T]
    }
    $if T is IEditorPluginHasMainScreen {
        ci.virtual_methods["_has_main_screen"] = editorplugin_uhas_main_screen[T]
    }
    $if T is IEditorPluginMakeVisible {
        ci.virtual_methods["_make_visible"] = editorplugin_umake_visible[T]
    }
    $if T is IEditorPluginEdit {
        ci.virtual_methods["_edit"] = editorplugin_uedit[T]
    }
    $if T is IEditorPluginHandles {
        ci.virtual_methods["_handles"] = editorplugin_uhandles[T]
    }
    $if T is IEditorPluginGetState {
        ci.virtual_methods["_get_state"] = editorplugin_uget_state[T]
    }
    $if T is IEditorPluginSetState {
        ci.virtual_methods["_set_state"] = editorplugin_uset_state[T]
    }
    $if T is IEditorPluginClear {
        ci.virtual_methods["_clear"] = editorplugin_uclear[T]
    }
    $if T is IEditorPluginGetUnsavedStatus {
        ci.virtual_methods["_get_unsaved_status"] = editorplugin_uget_unsaved_status[T]
    }
    $if T is IEditorPluginSaveExternalData {
        ci.virtual_methods["_save_external_data"] = editorplugin_usave_external_data[T]
    }
    $if T is IEditorPluginApplyChanges {
        ci.virtual_methods["_apply_changes"] = editorplugin_uapply_changes[T]
    }
    $if T is IEditorPluginGetBreakpoints {
        ci.virtual_methods["_get_breakpoints"] = editorplugin_uget_breakpoints[T]
    }
    $if T is IEditorPluginSetWindowLayout {
        ci.virtual_methods["_set_window_layout"] = editorplugin_uset_window_layout[T]
    }
    $if T is IEditorPluginGetWindowLayout {
        ci.virtual_methods["_get_window_layout"] = editorplugin_uget_window_layout[T]
    }
    $if T is IEditorPluginBuild {
        ci.virtual_methods["_build"] = editorplugin_ubuild[T]
    }
    $if T is IEditorPluginEnablePlugin {
        ci.virtual_methods["_enable_plugin"] = editorplugin_uenable_plugin[T]
    }
    $if T is IEditorPluginDisablePlugin {
        ci.virtual_methods["_disable_plugin"] = editorplugin_udisable_plugin[T]
    }
    $if T is IEditorPropertyUpdateProperty {
        ci.virtual_methods["_update_property"] = editorproperty_uupdate_property[T]
    }
    $if T is IEditorPropertySetReadOnly {
        ci.virtual_methods["_set_read_only"] = editorproperty_uset_read_only[T]
    }
    $if T is IEditorResourceConversionPluginConvertsTo {
        ci.virtual_methods["_converts_to"] = editorresourceconversionplugin_uconverts_to[T]
    }
    $if T is IEditorResourceConversionPluginHandles {
        ci.virtual_methods["_handles"] = editorresourceconversionplugin_uhandles[T]
    }
    $if T is IEditorResourceConversionPluginConvert {
        ci.virtual_methods["_convert"] = editorresourceconversionplugin_uconvert[T]
    }
    $if T is IEditorResourcePickerSetCreateOptions {
        ci.virtual_methods["_set_create_options"] = editorresourcepicker_uset_create_options[T]
    }
    $if T is IEditorResourcePickerHandleMenuSelected {
        ci.virtual_methods["_handle_menu_selected"] = editorresourcepicker_uhandle_menu_selected[T]
    }
    $if T is IEditorResourcePreviewGeneratorHandles {
        ci.virtual_methods["_handles"] = editorresourcepreviewgenerator_uhandles[T]
    }
    $if T is IEditorResourcePreviewGeneratorGenerate {
        ci.virtual_methods["_generate"] = editorresourcepreviewgenerator_ugenerate[T]
    }
    $if T is IEditorResourcePreviewGeneratorGenerateFromPath {
        ci.virtual_methods["_generate_from_path"] = editorresourcepreviewgenerator_ugenerate_from_path[T]
    }
    $if T is IEditorResourcePreviewGeneratorGenerateSmallPreviewAutomatically {
        ci.virtual_methods["_generate_small_preview_automatically"] = editorresourcepreviewgenerator_ugenerate_small_preview_automatically[T]
    }
    $if T is IEditorResourcePreviewGeneratorCanGenerateSmallPreview {
        ci.virtual_methods["_can_generate_small_preview"] = editorresourcepreviewgenerator_ucan_generate_small_preview[T]
    }
    $if T is IEditorResourceTooltipPluginHandles {
        ci.virtual_methods["_handles"] = editorresourcetooltipplugin_uhandles[T]
    }
    $if T is IEditorResourceTooltipPluginMakeTooltipForPath {
        ci.virtual_methods["_make_tooltip_for_path"] = editorresourcetooltipplugin_umake_tooltip_for_path[T]
    }
    $if T is IEditorSceneFormatImporterGetImportFlags {
        ci.virtual_methods["_get_import_flags"] = editorsceneformatimporter_uget_import_flags[T]
    }
    $if T is IEditorSceneFormatImporterGetExtensions {
        ci.virtual_methods["_get_extensions"] = editorsceneformatimporter_uget_extensions[T]
    }
    $if T is IEditorSceneFormatImporterImportScene {
        ci.virtual_methods["_import_scene"] = editorsceneformatimporter_uimport_scene[T]
    }
    $if T is IEditorSceneFormatImporterGetImportOptions {
        ci.virtual_methods["_get_import_options"] = editorsceneformatimporter_uget_import_options[T]
    }
    $if T is IEditorSceneFormatImporterGetOptionVisibility {
        ci.virtual_methods["_get_option_visibility"] = editorsceneformatimporter_uget_option_visibility[T]
    }
    $if T is IEditorScenePostImportPostImport {
        ci.virtual_methods["_post_import"] = editorscenepostimport_upost_import[T]
    }
    $if T is IEditorScenePostImportPluginGetInternalImportOptions {
        ci.virtual_methods["_get_internal_import_options"] = editorscenepostimportplugin_uget_internal_import_options[T]
    }
    $if T is IEditorScenePostImportPluginGetInternalOptionVisibility {
        ci.virtual_methods["_get_internal_option_visibility"] = editorscenepostimportplugin_uget_internal_option_visibility[T]
    }
    $if T is IEditorScenePostImportPluginGetInternalOptionUpdateViewRequired {
        ci.virtual_methods["_get_internal_option_update_view_required"] = editorscenepostimportplugin_uget_internal_option_update_view_required[T]
    }
    $if T is IEditorScenePostImportPluginInternalProcess {
        ci.virtual_methods["_internal_process"] = editorscenepostimportplugin_uinternal_process[T]
    }
    $if T is IEditorScenePostImportPluginGetImportOptions {
        ci.virtual_methods["_get_import_options"] = editorscenepostimportplugin_uget_import_options[T]
    }
    $if T is IEditorScenePostImportPluginGetOptionVisibility {
        ci.virtual_methods["_get_option_visibility"] = editorscenepostimportplugin_uget_option_visibility[T]
    }
    $if T is IEditorScenePostImportPluginPreProcess {
        ci.virtual_methods["_pre_process"] = editorscenepostimportplugin_upre_process[T]
    }
    $if T is IEditorScenePostImportPluginPostProcess {
        ci.virtual_methods["_post_process"] = editorscenepostimportplugin_upost_process[T]
    }
    $if T is IEditorScriptRun {
        ci.virtual_methods["_run"] = editorscript_urun[T]
    }
    $if T is IEditorSyntaxHighlighterGetName {
        ci.virtual_methods["_get_name"] = editorsyntaxhighlighter_uget_name[T]
    }
    $if T is IEditorSyntaxHighlighterGetSupportedLanguages {
        ci.virtual_methods["_get_supported_languages"] = editorsyntaxhighlighter_uget_supported_languages[T]
    }
    $if T is IEditorTranslationParserPluginParseFile {
        ci.virtual_methods["_parse_file"] = editortranslationparserplugin_uparse_file[T]
    }
    $if T is IEditorTranslationParserPluginGetRecognizedExtensions {
        ci.virtual_methods["_get_recognized_extensions"] = editortranslationparserplugin_uget_recognized_extensions[T]
    }
    $if T is IEditorVCSInterfaceInitialize {
        ci.virtual_methods["_initialize"] = editorvcsinterface_uinitialize[T]
    }
    $if T is IEditorVCSInterfaceSetCredentials {
        ci.virtual_methods["_set_credentials"] = editorvcsinterface_uset_credentials[T]
    }
    $if T is IEditorVCSInterfaceGetModifiedFilesData {
        ci.virtual_methods["_get_modified_files_data"] = editorvcsinterface_uget_modified_files_data[T]
    }
    $if T is IEditorVCSInterfaceStageFile {
        ci.virtual_methods["_stage_file"] = editorvcsinterface_ustage_file[T]
    }
    $if T is IEditorVCSInterfaceUnstageFile {
        ci.virtual_methods["_unstage_file"] = editorvcsinterface_uunstage_file[T]
    }
    $if T is IEditorVCSInterfaceDiscardFile {
        ci.virtual_methods["_discard_file"] = editorvcsinterface_udiscard_file[T]
    }
    $if T is IEditorVCSInterfaceCommit {
        ci.virtual_methods["_commit"] = editorvcsinterface_ucommit[T]
    }
    $if T is IEditorVCSInterfaceGetDiff {
        ci.virtual_methods["_get_diff"] = editorvcsinterface_uget_diff[T]
    }
    $if T is IEditorVCSInterfaceShutDown {
        ci.virtual_methods["_shut_down"] = editorvcsinterface_ushut_down[T]
    }
    $if T is IEditorVCSInterfaceGetVcsName {
        ci.virtual_methods["_get_vcs_name"] = editorvcsinterface_uget_vcs_name[T]
    }
    $if T is IEditorVCSInterfaceGetPreviousCommits {
        ci.virtual_methods["_get_previous_commits"] = editorvcsinterface_uget_previous_commits[T]
    }
    $if T is IEditorVCSInterfaceGetBranchList {
        ci.virtual_methods["_get_branch_list"] = editorvcsinterface_uget_branch_list[T]
    }
    $if T is IEditorVCSInterfaceGetRemotes {
        ci.virtual_methods["_get_remotes"] = editorvcsinterface_uget_remotes[T]
    }
    $if T is IEditorVCSInterfaceCreateBranch {
        ci.virtual_methods["_create_branch"] = editorvcsinterface_ucreate_branch[T]
    }
    $if T is IEditorVCSInterfaceRemoveBranch {
        ci.virtual_methods["_remove_branch"] = editorvcsinterface_uremove_branch[T]
    }
    $if T is IEditorVCSInterfaceCreateRemote {
        ci.virtual_methods["_create_remote"] = editorvcsinterface_ucreate_remote[T]
    }
    $if T is IEditorVCSInterfaceRemoveRemote {
        ci.virtual_methods["_remove_remote"] = editorvcsinterface_uremove_remote[T]
    }
    $if T is IEditorVCSInterfaceGetCurrentBranchName {
        ci.virtual_methods["_get_current_branch_name"] = editorvcsinterface_uget_current_branch_name[T]
    }
    $if T is IEditorVCSInterfaceCheckoutBranch {
        ci.virtual_methods["_checkout_branch"] = editorvcsinterface_ucheckout_branch[T]
    }
    $if T is IEditorVCSInterfacePull {
        ci.virtual_methods["_pull"] = editorvcsinterface_upull[T]
    }
    $if T is IEditorVCSInterfacePush {
        ci.virtual_methods["_push"] = editorvcsinterface_upush[T]
    }
    $if T is IEditorVCSInterfaceFetch {
        ci.virtual_methods["_fetch"] = editorvcsinterface_ufetch[T]
    }
    $if T is IEditorVCSInterfaceGetLineDiff {
        ci.virtual_methods["_get_line_diff"] = editorvcsinterface_uget_line_diff[T]
    }
    $if T is IEngineProfilerToggle {
        ci.virtual_methods["_toggle"] = engineprofiler_utoggle[T]
    }
    $if T is IEngineProfilerAddFrame {
        ci.virtual_methods["_add_frame"] = engineprofiler_uadd_frame[T]
    }
    $if T is IEngineProfilerTick {
        ci.virtual_methods["_tick"] = engineprofiler_utick[T]
    }
    $if T is IGLTFDocumentExtensionImportPreflight {
        ci.virtual_methods["_import_preflight"] = gltfdocumentextension_uimport_preflight[T]
    }
    $if T is IGLTFDocumentExtensionGetSupportedExtensions {
        ci.virtual_methods["_get_supported_extensions"] = gltfdocumentextension_uget_supported_extensions[T]
    }
    $if T is IGLTFDocumentExtensionParseNodeExtensions {
        ci.virtual_methods["_parse_node_extensions"] = gltfdocumentextension_uparse_node_extensions[T]
    }
    $if T is IGLTFDocumentExtensionParseImageData {
        ci.virtual_methods["_parse_image_data"] = gltfdocumentextension_uparse_image_data[T]
    }
    $if T is IGLTFDocumentExtensionGetImageFileExtension {
        ci.virtual_methods["_get_image_file_extension"] = gltfdocumentextension_uget_image_file_extension[T]
    }
    $if T is IGLTFDocumentExtensionParseTextureJson {
        ci.virtual_methods["_parse_texture_json"] = gltfdocumentextension_uparse_texture_json[T]
    }
    $if T is IGLTFDocumentExtensionGenerateSceneNode {
        ci.virtual_methods["_generate_scene_node"] = gltfdocumentextension_ugenerate_scene_node[T]
    }
    $if T is IGLTFDocumentExtensionImportPostParse {
        ci.virtual_methods["_import_post_parse"] = gltfdocumentextension_uimport_post_parse[T]
    }
    $if T is IGLTFDocumentExtensionImportNode {
        ci.virtual_methods["_import_node"] = gltfdocumentextension_uimport_node[T]
    }
    $if T is IGLTFDocumentExtensionImportPost {
        ci.virtual_methods["_import_post"] = gltfdocumentextension_uimport_post[T]
    }
    $if T is IGLTFDocumentExtensionExportPreflight {
        ci.virtual_methods["_export_preflight"] = gltfdocumentextension_uexport_preflight[T]
    }
    $if T is IGLTFDocumentExtensionConvertSceneNode {
        ci.virtual_methods["_convert_scene_node"] = gltfdocumentextension_uconvert_scene_node[T]
    }
    $if T is IGLTFDocumentExtensionExportPreserialize {
        ci.virtual_methods["_export_preserialize"] = gltfdocumentextension_uexport_preserialize[T]
    }
    $if T is IGLTFDocumentExtensionGetSaveableImageFormats {
        ci.virtual_methods["_get_saveable_image_formats"] = gltfdocumentextension_uget_saveable_image_formats[T]
    }
    $if T is IGLTFDocumentExtensionSerializeImageToBytes {
        ci.virtual_methods["_serialize_image_to_bytes"] = gltfdocumentextension_userialize_image_to_bytes[T]
    }
    $if T is IGLTFDocumentExtensionSaveImageAtPath {
        ci.virtual_methods["_save_image_at_path"] = gltfdocumentextension_usave_image_at_path[T]
    }
    $if T is IGLTFDocumentExtensionSerializeTextureJson {
        ci.virtual_methods["_serialize_texture_json"] = gltfdocumentextension_userialize_texture_json[T]
    }
    $if T is IGLTFDocumentExtensionExportNode {
        ci.virtual_methods["_export_node"] = gltfdocumentextension_uexport_node[T]
    }
    $if T is IGLTFDocumentExtensionExportPost {
        ci.virtual_methods["_export_post"] = gltfdocumentextension_uexport_post[T]
    }
    $if T is IGraphEditIsInInputHotzone {
        ci.virtual_methods["_is_in_input_hotzone"] = graphedit_uis_in_input_hotzone[T]
    }
    $if T is IGraphEditIsInOutputHotzone {
        ci.virtual_methods["_is_in_output_hotzone"] = graphedit_uis_in_output_hotzone[T]
    }
    $if T is IGraphEditGetConnectionLine {
        ci.virtual_methods["_get_connection_line"] = graphedit_uget_connection_line[T]
    }
    $if T is IGraphEditIsNodeHoverValid {
        ci.virtual_methods["_is_node_hover_valid"] = graphedit_uis_node_hover_valid[T]
    }
    $if T is IGraphNodeDrawPort {
        ci.virtual_methods["_draw_port"] = graphnode_udraw_port[T]
    }
    $if T is IImageFormatLoaderExtensionGetRecognizedExtensions {
        ci.virtual_methods["_get_recognized_extensions"] = imageformatloaderextension_uget_recognized_extensions[T]
    }
    $if T is IImageFormatLoaderExtensionLoadImage {
        ci.virtual_methods["_load_image"] = imageformatloaderextension_uload_image[T]
    }
    $if T is IMainLoopInitialize {
        ci.virtual_methods["_initialize"] = mainloop_uinitialize[T]
    }
    $if T is IMainLoopPhysicsProcess {
        ci.virtual_methods["_physics_process"] = mainloop_uphysics_process[T]
    }
    $if T is IMainLoopProcess {
        ci.virtual_methods["_process"] = mainloop_uprocess[T]
    }
    $if T is IMainLoopFinalize {
        ci.virtual_methods["_finalize"] = mainloop_ufinalize[T]
    }
    $if T is IMaterialGetShaderRid {
        ci.virtual_methods["_get_shader_rid"] = material_uget_shader_rid[T]
    }
    $if T is IMaterialGetShaderMode {
        ci.virtual_methods["_get_shader_mode"] = material_uget_shader_mode[T]
    }
    $if T is IMaterialCanDoNextPass {
        ci.virtual_methods["_can_do_next_pass"] = material_ucan_do_next_pass[T]
    }
    $if T is IMaterialCanUseRenderPriority {
        ci.virtual_methods["_can_use_render_priority"] = material_ucan_use_render_priority[T]
    }
    $if T is IMeshGetSurfaceCount {
        ci.virtual_methods["_get_surface_count"] = mesh_uget_surface_count[T]
    }
    $if T is IMeshSurfaceGetArrayLen {
        ci.virtual_methods["_surface_get_array_len"] = mesh_usurface_get_array_len[T]
    }
    $if T is IMeshSurfaceGetArrayIndexLen {
        ci.virtual_methods["_surface_get_array_index_len"] = mesh_usurface_get_array_index_len[T]
    }
    $if T is IMeshSurfaceGetArrays {
        ci.virtual_methods["_surface_get_arrays"] = mesh_usurface_get_arrays[T]
    }
    $if T is IMeshSurfaceGetBlendShapeArrays {
        ci.virtual_methods["_surface_get_blend_shape_arrays"] = mesh_usurface_get_blend_shape_arrays[T]
    }
    $if T is IMeshSurfaceGetLods {
        ci.virtual_methods["_surface_get_lods"] = mesh_usurface_get_lods[T]
    }
    $if T is IMeshSurfaceGetFormat {
        ci.virtual_methods["_surface_get_format"] = mesh_usurface_get_format[T]
    }
    $if T is IMeshSurfaceGetPrimitiveType {
        ci.virtual_methods["_surface_get_primitive_type"] = mesh_usurface_get_primitive_type[T]
    }
    $if T is IMeshSurfaceSetMaterial {
        ci.virtual_methods["_surface_set_material"] = mesh_usurface_set_material[T]
    }
    $if T is IMeshSurfaceGetMaterial {
        ci.virtual_methods["_surface_get_material"] = mesh_usurface_get_material[T]
    }
    $if T is IMeshGetBlendShapeCount {
        ci.virtual_methods["_get_blend_shape_count"] = mesh_uget_blend_shape_count[T]
    }
    $if T is IMeshGetBlendShapeName {
        ci.virtual_methods["_get_blend_shape_name"] = mesh_uget_blend_shape_name[T]
    }
    $if T is IMeshSetBlendShapeName {
        ci.virtual_methods["_set_blend_shape_name"] = mesh_uset_blend_shape_name[T]
    }
    $if T is IMeshGetAabb {
        ci.virtual_methods["_get_aabb"] = mesh_uget_aabb[T]
    }
    $if T is IMovieWriterGetAudioMixRate {
        ci.virtual_methods["_get_audio_mix_rate"] = moviewriter_uget_audio_mix_rate[T]
    }
    $if T is IMovieWriterGetAudioSpeakerMode {
        ci.virtual_methods["_get_audio_speaker_mode"] = moviewriter_uget_audio_speaker_mode[T]
    }
    $if T is IMovieWriterHandlesFile {
        ci.virtual_methods["_handles_file"] = moviewriter_uhandles_file[T]
    }
    $if T is IMovieWriterWriteBegin {
        ci.virtual_methods["_write_begin"] = moviewriter_uwrite_begin[T]
    }
    $if T is IMovieWriterWriteFrame {
        ci.virtual_methods["_write_frame"] = moviewriter_uwrite_frame[T]
    }
    $if T is IMovieWriterWriteEnd {
        ci.virtual_methods["_write_end"] = moviewriter_uwrite_end[T]
    }
    $if T is IMultiplayerAPIExtensionPoll {
        ci.virtual_methods["_poll"] = multiplayerapiextension_upoll[T]
    }
    $if T is IMultiplayerAPIExtensionSetMultiplayerPeer {
        ci.virtual_methods["_set_multiplayer_peer"] = multiplayerapiextension_uset_multiplayer_peer[T]
    }
    $if T is IMultiplayerAPIExtensionGetMultiplayerPeer {
        ci.virtual_methods["_get_multiplayer_peer"] = multiplayerapiextension_uget_multiplayer_peer[T]
    }
    $if T is IMultiplayerAPIExtensionGetUniqueId {
        ci.virtual_methods["_get_unique_id"] = multiplayerapiextension_uget_unique_id[T]
    }
    $if T is IMultiplayerAPIExtensionGetPeerIds {
        ci.virtual_methods["_get_peer_ids"] = multiplayerapiextension_uget_peer_ids[T]
    }
    $if T is IMultiplayerAPIExtensionRpc {
        ci.virtual_methods["_rpc"] = multiplayerapiextension_urpc[T]
    }
    $if T is IMultiplayerAPIExtensionGetRemoteSenderId {
        ci.virtual_methods["_get_remote_sender_id"] = multiplayerapiextension_uget_remote_sender_id[T]
    }
    $if T is IMultiplayerAPIExtensionObjectConfigurationAdd {
        ci.virtual_methods["_object_configuration_add"] = multiplayerapiextension_uobject_configuration_add[T]
    }
    $if T is IMultiplayerAPIExtensionObjectConfigurationRemove {
        ci.virtual_methods["_object_configuration_remove"] = multiplayerapiextension_uobject_configuration_remove[T]
    }
    $if T is IMultiplayerPeerExtensionGetPacket {
        ci.virtual_methods["_get_packet"] = multiplayerpeerextension_uget_packet[T]
    }
    $if T is IMultiplayerPeerExtensionPutPacket {
        ci.virtual_methods["_put_packet"] = multiplayerpeerextension_uput_packet[T]
    }
    $if T is IMultiplayerPeerExtensionGetAvailablePacketCount {
        ci.virtual_methods["_get_available_packet_count"] = multiplayerpeerextension_uget_available_packet_count[T]
    }
    $if T is IMultiplayerPeerExtensionGetMaxPacketSize {
        ci.virtual_methods["_get_max_packet_size"] = multiplayerpeerextension_uget_max_packet_size[T]
    }
    $if T is IMultiplayerPeerExtensionGetPacketScript {
        ci.virtual_methods["_get_packet_script"] = multiplayerpeerextension_uget_packet_script[T]
    }
    $if T is IMultiplayerPeerExtensionPutPacketScript {
        ci.virtual_methods["_put_packet_script"] = multiplayerpeerextension_uput_packet_script[T]
    }
    $if T is IMultiplayerPeerExtensionGetPacketChannel {
        ci.virtual_methods["_get_packet_channel"] = multiplayerpeerextension_uget_packet_channel[T]
    }
    $if T is IMultiplayerPeerExtensionGetPacketMode {
        ci.virtual_methods["_get_packet_mode"] = multiplayerpeerextension_uget_packet_mode[T]
    }
    $if T is IMultiplayerPeerExtensionSetTransferChannel {
        ci.virtual_methods["_set_transfer_channel"] = multiplayerpeerextension_uset_transfer_channel[T]
    }
    $if T is IMultiplayerPeerExtensionGetTransferChannel {
        ci.virtual_methods["_get_transfer_channel"] = multiplayerpeerextension_uget_transfer_channel[T]
    }
    $if T is IMultiplayerPeerExtensionSetTransferMode {
        ci.virtual_methods["_set_transfer_mode"] = multiplayerpeerextension_uset_transfer_mode[T]
    }
    $if T is IMultiplayerPeerExtensionGetTransferMode {
        ci.virtual_methods["_get_transfer_mode"] = multiplayerpeerextension_uget_transfer_mode[T]
    }
    $if T is IMultiplayerPeerExtensionSetTargetPeer {
        ci.virtual_methods["_set_target_peer"] = multiplayerpeerextension_uset_target_peer[T]
    }
    $if T is IMultiplayerPeerExtensionGetPacketPeer {
        ci.virtual_methods["_get_packet_peer"] = multiplayerpeerextension_uget_packet_peer[T]
    }
    $if T is IMultiplayerPeerExtensionIsServer {
        ci.virtual_methods["_is_server"] = multiplayerpeerextension_uis_server[T]
    }
    $if T is IMultiplayerPeerExtensionPoll {
        ci.virtual_methods["_poll"] = multiplayerpeerextension_upoll[T]
    }
    $if T is IMultiplayerPeerExtensionClose {
        ci.virtual_methods["_close"] = multiplayerpeerextension_uclose[T]
    }
    $if T is IMultiplayerPeerExtensionDisconnectPeer {
        ci.virtual_methods["_disconnect_peer"] = multiplayerpeerextension_udisconnect_peer[T]
    }
    $if T is IMultiplayerPeerExtensionGetUniqueId {
        ci.virtual_methods["_get_unique_id"] = multiplayerpeerextension_uget_unique_id[T]
    }
    $if T is IMultiplayerPeerExtensionSetRefuseNewConnections {
        ci.virtual_methods["_set_refuse_new_connections"] = multiplayerpeerextension_uset_refuse_new_connections[T]
    }
    $if T is IMultiplayerPeerExtensionIsRefusingNewConnections {
        ci.virtual_methods["_is_refusing_new_connections"] = multiplayerpeerextension_uis_refusing_new_connections[T]
    }
    $if T is IMultiplayerPeerExtensionIsServerRelaySupported {
        ci.virtual_methods["_is_server_relay_supported"] = multiplayerpeerextension_uis_server_relay_supported[T]
    }
    $if T is IMultiplayerPeerExtensionGetConnectionStatus {
        ci.virtual_methods["_get_connection_status"] = multiplayerpeerextension_uget_connection_status[T]
    }
    $if T is INodeProcess {
        ci.virtual_methods["_process"] = node_uprocess[T]
    }
    $if T is INodePhysicsProcess {
        ci.virtual_methods["_physics_process"] = node_uphysics_process[T]
    }
    $if T is INodeEnterTree {
        ci.virtual_methods["_enter_tree"] = node_uenter_tree[T]
    }
    $if T is INodeExitTree {
        ci.virtual_methods["_exit_tree"] = node_uexit_tree[T]
    }
    $if T is INodeReady {
        ci.virtual_methods["_ready"] = node_uready[T]
    }
    $if T is INodeGetConfigurationWarnings {
        ci.virtual_methods["_get_configuration_warnings"] = node_uget_configuration_warnings[T]
    }
    $if T is INodeInput {
        ci.virtual_methods["_input"] = node_uinput[T]
    }
    $if T is INodeShortcutInput {
        ci.virtual_methods["_shortcut_input"] = node_ushortcut_input[T]
    }
    $if T is INodeUnhandledInput {
        ci.virtual_methods["_unhandled_input"] = node_uunhandled_input[T]
    }
    $if T is INodeUnhandledKeyInput {
        ci.virtual_methods["_unhandled_key_input"] = node_uunhandled_key_input[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionGetRequestedExtensions {
        ci.virtual_methods["_get_requested_extensions"] = openxrextensionwrapperextension_uget_requested_extensions[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionSetSystemPropertiesAndGetNextPointer {
        ci.virtual_methods["_set_system_properties_and_get_next_pointer"] = openxrextensionwrapperextension_uset_system_properties_and_get_next_pointer[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionSetInstanceCreateInfoAndGetNextPointer {
        ci.virtual_methods["_set_instance_create_info_and_get_next_pointer"] = openxrextensionwrapperextension_uset_instance_create_info_and_get_next_pointer[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionSetSessionCreateAndGetNextPointer {
        ci.virtual_methods["_set_session_create_and_get_next_pointer"] = openxrextensionwrapperextension_uset_session_create_and_get_next_pointer[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionSetSwapchainCreateInfoAndGetNextPointer {
        ci.virtual_methods["_set_swapchain_create_info_and_get_next_pointer"] = openxrextensionwrapperextension_uset_swapchain_create_info_and_get_next_pointer[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnRegisterMetadata {
        ci.virtual_methods["_on_register_metadata"] = openxrextensionwrapperextension_uon_register_metadata[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnBeforeInstanceCreated {
        ci.virtual_methods["_on_before_instance_created"] = openxrextensionwrapperextension_uon_before_instance_created[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnInstanceCreated {
        ci.virtual_methods["_on_instance_created"] = openxrextensionwrapperextension_uon_instance_created[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnInstanceDestroyed {
        ci.virtual_methods["_on_instance_destroyed"] = openxrextensionwrapperextension_uon_instance_destroyed[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnSessionCreated {
        ci.virtual_methods["_on_session_created"] = openxrextensionwrapperextension_uon_session_created[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnProcess {
        ci.virtual_methods["_on_process"] = openxrextensionwrapperextension_uon_process[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnPreRender {
        ci.virtual_methods["_on_pre_render"] = openxrextensionwrapperextension_uon_pre_render[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnSessionDestroyed {
        ci.virtual_methods["_on_session_destroyed"] = openxrextensionwrapperextension_uon_session_destroyed[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnStateIdle {
        ci.virtual_methods["_on_state_idle"] = openxrextensionwrapperextension_uon_state_idle[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnStateReady {
        ci.virtual_methods["_on_state_ready"] = openxrextensionwrapperextension_uon_state_ready[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnStateSynchronized {
        ci.virtual_methods["_on_state_synchronized"] = openxrextensionwrapperextension_uon_state_synchronized[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnStateVisible {
        ci.virtual_methods["_on_state_visible"] = openxrextensionwrapperextension_uon_state_visible[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnStateFocused {
        ci.virtual_methods["_on_state_focused"] = openxrextensionwrapperextension_uon_state_focused[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnStateStopping {
        ci.virtual_methods["_on_state_stopping"] = openxrextensionwrapperextension_uon_state_stopping[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnStateLossPending {
        ci.virtual_methods["_on_state_loss_pending"] = openxrextensionwrapperextension_uon_state_loss_pending[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnStateExiting {
        ci.virtual_methods["_on_state_exiting"] = openxrextensionwrapperextension_uon_state_exiting[T]
    }
    $if T is IOpenXRExtensionWrapperExtensionOnEventPolled {
        ci.virtual_methods["_on_event_polled"] = openxrextensionwrapperextension_uon_event_polled[T]
    }
    $if T is IPacketPeerExtensionGetPacket {
        ci.virtual_methods["_get_packet"] = packetpeerextension_uget_packet[T]
    }
    $if T is IPacketPeerExtensionPutPacket {
        ci.virtual_methods["_put_packet"] = packetpeerextension_uput_packet[T]
    }
    $if T is IPacketPeerExtensionGetAvailablePacketCount {
        ci.virtual_methods["_get_available_packet_count"] = packetpeerextension_uget_available_packet_count[T]
    }
    $if T is IPacketPeerExtensionGetMaxPacketSize {
        ci.virtual_methods["_get_max_packet_size"] = packetpeerextension_uget_max_packet_size[T]
    }
    $if T is IPhysicalBone3DIntegrateForces {
        ci.virtual_methods["_integrate_forces"] = physicalbone3d_uintegrate_forces[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetTotalGravity {
        ci.virtual_methods["_get_total_gravity"] = physicsdirectbodystate2dextension_uget_total_gravity[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetTotalLinearDamp {
        ci.virtual_methods["_get_total_linear_damp"] = physicsdirectbodystate2dextension_uget_total_linear_damp[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetTotalAngularDamp {
        ci.virtual_methods["_get_total_angular_damp"] = physicsdirectbodystate2dextension_uget_total_angular_damp[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetCenterOfMass {
        ci.virtual_methods["_get_center_of_mass"] = physicsdirectbodystate2dextension_uget_center_of_mass[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetCenterOfMassLocal {
        ci.virtual_methods["_get_center_of_mass_local"] = physicsdirectbodystate2dextension_uget_center_of_mass_local[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetInverseMass {
        ci.virtual_methods["_get_inverse_mass"] = physicsdirectbodystate2dextension_uget_inverse_mass[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetInverseInertia {
        ci.virtual_methods["_get_inverse_inertia"] = physicsdirectbodystate2dextension_uget_inverse_inertia[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionSetLinearVelocity {
        ci.virtual_methods["_set_linear_velocity"] = physicsdirectbodystate2dextension_uset_linear_velocity[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetLinearVelocity {
        ci.virtual_methods["_get_linear_velocity"] = physicsdirectbodystate2dextension_uget_linear_velocity[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionSetAngularVelocity {
        ci.virtual_methods["_set_angular_velocity"] = physicsdirectbodystate2dextension_uset_angular_velocity[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetAngularVelocity {
        ci.virtual_methods["_get_angular_velocity"] = physicsdirectbodystate2dextension_uget_angular_velocity[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionSetTransform {
        ci.virtual_methods["_set_transform"] = physicsdirectbodystate2dextension_uset_transform[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetTransform {
        ci.virtual_methods["_get_transform"] = physicsdirectbodystate2dextension_uget_transform[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetVelocityAtLocalPosition {
        ci.virtual_methods["_get_velocity_at_local_position"] = physicsdirectbodystate2dextension_uget_velocity_at_local_position[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionApplyCentralImpulse {
        ci.virtual_methods["_apply_central_impulse"] = physicsdirectbodystate2dextension_uapply_central_impulse[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionApplyImpulse {
        ci.virtual_methods["_apply_impulse"] = physicsdirectbodystate2dextension_uapply_impulse[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionApplyTorqueImpulse {
        ci.virtual_methods["_apply_torque_impulse"] = physicsdirectbodystate2dextension_uapply_torque_impulse[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionApplyCentralForce {
        ci.virtual_methods["_apply_central_force"] = physicsdirectbodystate2dextension_uapply_central_force[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionApplyForce {
        ci.virtual_methods["_apply_force"] = physicsdirectbodystate2dextension_uapply_force[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionApplyTorque {
        ci.virtual_methods["_apply_torque"] = physicsdirectbodystate2dextension_uapply_torque[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionAddConstantCentralForce {
        ci.virtual_methods["_add_constant_central_force"] = physicsdirectbodystate2dextension_uadd_constant_central_force[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionAddConstantForce {
        ci.virtual_methods["_add_constant_force"] = physicsdirectbodystate2dextension_uadd_constant_force[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionAddConstantTorque {
        ci.virtual_methods["_add_constant_torque"] = physicsdirectbodystate2dextension_uadd_constant_torque[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionSetConstantForce {
        ci.virtual_methods["_set_constant_force"] = physicsdirectbodystate2dextension_uset_constant_force[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetConstantForce {
        ci.virtual_methods["_get_constant_force"] = physicsdirectbodystate2dextension_uget_constant_force[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionSetConstantTorque {
        ci.virtual_methods["_set_constant_torque"] = physicsdirectbodystate2dextension_uset_constant_torque[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetConstantTorque {
        ci.virtual_methods["_get_constant_torque"] = physicsdirectbodystate2dextension_uget_constant_torque[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionSetSleepState {
        ci.virtual_methods["_set_sleep_state"] = physicsdirectbodystate2dextension_uset_sleep_state[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionIsSleeping {
        ci.virtual_methods["_is_sleeping"] = physicsdirectbodystate2dextension_uis_sleeping[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactCount {
        ci.virtual_methods["_get_contact_count"] = physicsdirectbodystate2dextension_uget_contact_count[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactLocalPosition {
        ci.virtual_methods["_get_contact_local_position"] = physicsdirectbodystate2dextension_uget_contact_local_position[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactLocalNormal {
        ci.virtual_methods["_get_contact_local_normal"] = physicsdirectbodystate2dextension_uget_contact_local_normal[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactLocalShape {
        ci.virtual_methods["_get_contact_local_shape"] = physicsdirectbodystate2dextension_uget_contact_local_shape[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactLocalVelocityAtPosition {
        ci.virtual_methods["_get_contact_local_velocity_at_position"] = physicsdirectbodystate2dextension_uget_contact_local_velocity_at_position[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactCollider {
        ci.virtual_methods["_get_contact_collider"] = physicsdirectbodystate2dextension_uget_contact_collider[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderPosition {
        ci.virtual_methods["_get_contact_collider_position"] = physicsdirectbodystate2dextension_uget_contact_collider_position[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderId {
        ci.virtual_methods["_get_contact_collider_id"] = physicsdirectbodystate2dextension_uget_contact_collider_id[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderObject {
        ci.virtual_methods["_get_contact_collider_object"] = physicsdirectbodystate2dextension_uget_contact_collider_object[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderShape {
        ci.virtual_methods["_get_contact_collider_shape"] = physicsdirectbodystate2dextension_uget_contact_collider_shape[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderVelocityAtPosition {
        ci.virtual_methods["_get_contact_collider_velocity_at_position"] = physicsdirectbodystate2dextension_uget_contact_collider_velocity_at_position[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetContactImpulse {
        ci.virtual_methods["_get_contact_impulse"] = physicsdirectbodystate2dextension_uget_contact_impulse[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetStep {
        ci.virtual_methods["_get_step"] = physicsdirectbodystate2dextension_uget_step[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionIntegrateForces {
        ci.virtual_methods["_integrate_forces"] = physicsdirectbodystate2dextension_uintegrate_forces[T]
    }
    $if T is IPhysicsDirectBodyState2DExtensionGetSpaceState {
        ci.virtual_methods["_get_space_state"] = physicsdirectbodystate2dextension_uget_space_state[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetTotalGravity {
        ci.virtual_methods["_get_total_gravity"] = physicsdirectbodystate3dextension_uget_total_gravity[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetTotalLinearDamp {
        ci.virtual_methods["_get_total_linear_damp"] = physicsdirectbodystate3dextension_uget_total_linear_damp[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetTotalAngularDamp {
        ci.virtual_methods["_get_total_angular_damp"] = physicsdirectbodystate3dextension_uget_total_angular_damp[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetCenterOfMass {
        ci.virtual_methods["_get_center_of_mass"] = physicsdirectbodystate3dextension_uget_center_of_mass[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetCenterOfMassLocal {
        ci.virtual_methods["_get_center_of_mass_local"] = physicsdirectbodystate3dextension_uget_center_of_mass_local[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetPrincipalInertiaAxes {
        ci.virtual_methods["_get_principal_inertia_axes"] = physicsdirectbodystate3dextension_uget_principal_inertia_axes[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetInverseMass {
        ci.virtual_methods["_get_inverse_mass"] = physicsdirectbodystate3dextension_uget_inverse_mass[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetInverseInertia {
        ci.virtual_methods["_get_inverse_inertia"] = physicsdirectbodystate3dextension_uget_inverse_inertia[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetInverseInertiaTensor {
        ci.virtual_methods["_get_inverse_inertia_tensor"] = physicsdirectbodystate3dextension_uget_inverse_inertia_tensor[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionSetLinearVelocity {
        ci.virtual_methods["_set_linear_velocity"] = physicsdirectbodystate3dextension_uset_linear_velocity[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetLinearVelocity {
        ci.virtual_methods["_get_linear_velocity"] = physicsdirectbodystate3dextension_uget_linear_velocity[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionSetAngularVelocity {
        ci.virtual_methods["_set_angular_velocity"] = physicsdirectbodystate3dextension_uset_angular_velocity[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetAngularVelocity {
        ci.virtual_methods["_get_angular_velocity"] = physicsdirectbodystate3dextension_uget_angular_velocity[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionSetTransform {
        ci.virtual_methods["_set_transform"] = physicsdirectbodystate3dextension_uset_transform[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetTransform {
        ci.virtual_methods["_get_transform"] = physicsdirectbodystate3dextension_uget_transform[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetVelocityAtLocalPosition {
        ci.virtual_methods["_get_velocity_at_local_position"] = physicsdirectbodystate3dextension_uget_velocity_at_local_position[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionApplyCentralImpulse {
        ci.virtual_methods["_apply_central_impulse"] = physicsdirectbodystate3dextension_uapply_central_impulse[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionApplyImpulse {
        ci.virtual_methods["_apply_impulse"] = physicsdirectbodystate3dextension_uapply_impulse[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionApplyTorqueImpulse {
        ci.virtual_methods["_apply_torque_impulse"] = physicsdirectbodystate3dextension_uapply_torque_impulse[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionApplyCentralForce {
        ci.virtual_methods["_apply_central_force"] = physicsdirectbodystate3dextension_uapply_central_force[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionApplyForce {
        ci.virtual_methods["_apply_force"] = physicsdirectbodystate3dextension_uapply_force[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionApplyTorque {
        ci.virtual_methods["_apply_torque"] = physicsdirectbodystate3dextension_uapply_torque[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionAddConstantCentralForce {
        ci.virtual_methods["_add_constant_central_force"] = physicsdirectbodystate3dextension_uadd_constant_central_force[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionAddConstantForce {
        ci.virtual_methods["_add_constant_force"] = physicsdirectbodystate3dextension_uadd_constant_force[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionAddConstantTorque {
        ci.virtual_methods["_add_constant_torque"] = physicsdirectbodystate3dextension_uadd_constant_torque[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionSetConstantForce {
        ci.virtual_methods["_set_constant_force"] = physicsdirectbodystate3dextension_uset_constant_force[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetConstantForce {
        ci.virtual_methods["_get_constant_force"] = physicsdirectbodystate3dextension_uget_constant_force[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionSetConstantTorque {
        ci.virtual_methods["_set_constant_torque"] = physicsdirectbodystate3dextension_uset_constant_torque[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetConstantTorque {
        ci.virtual_methods["_get_constant_torque"] = physicsdirectbodystate3dextension_uget_constant_torque[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionSetSleepState {
        ci.virtual_methods["_set_sleep_state"] = physicsdirectbodystate3dextension_uset_sleep_state[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionIsSleeping {
        ci.virtual_methods["_is_sleeping"] = physicsdirectbodystate3dextension_uis_sleeping[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactCount {
        ci.virtual_methods["_get_contact_count"] = physicsdirectbodystate3dextension_uget_contact_count[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactLocalPosition {
        ci.virtual_methods["_get_contact_local_position"] = physicsdirectbodystate3dextension_uget_contact_local_position[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactLocalNormal {
        ci.virtual_methods["_get_contact_local_normal"] = physicsdirectbodystate3dextension_uget_contact_local_normal[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactImpulse {
        ci.virtual_methods["_get_contact_impulse"] = physicsdirectbodystate3dextension_uget_contact_impulse[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactLocalShape {
        ci.virtual_methods["_get_contact_local_shape"] = physicsdirectbodystate3dextension_uget_contact_local_shape[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactLocalVelocityAtPosition {
        ci.virtual_methods["_get_contact_local_velocity_at_position"] = physicsdirectbodystate3dextension_uget_contact_local_velocity_at_position[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactCollider {
        ci.virtual_methods["_get_contact_collider"] = physicsdirectbodystate3dextension_uget_contact_collider[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderPosition {
        ci.virtual_methods["_get_contact_collider_position"] = physicsdirectbodystate3dextension_uget_contact_collider_position[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderId {
        ci.virtual_methods["_get_contact_collider_id"] = physicsdirectbodystate3dextension_uget_contact_collider_id[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderObject {
        ci.virtual_methods["_get_contact_collider_object"] = physicsdirectbodystate3dextension_uget_contact_collider_object[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderShape {
        ci.virtual_methods["_get_contact_collider_shape"] = physicsdirectbodystate3dextension_uget_contact_collider_shape[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderVelocityAtPosition {
        ci.virtual_methods["_get_contact_collider_velocity_at_position"] = physicsdirectbodystate3dextension_uget_contact_collider_velocity_at_position[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetStep {
        ci.virtual_methods["_get_step"] = physicsdirectbodystate3dextension_uget_step[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionIntegrateForces {
        ci.virtual_methods["_integrate_forces"] = physicsdirectbodystate3dextension_uintegrate_forces[T]
    }
    $if T is IPhysicsDirectBodyState3DExtensionGetSpaceState {
        ci.virtual_methods["_get_space_state"] = physicsdirectbodystate3dextension_uget_space_state[T]
    }
    $if T is IPhysicsDirectSpaceState2DExtensionIntersectRay {
        ci.virtual_methods["_intersect_ray"] = physicsdirectspacestate2dextension_uintersect_ray[T]
    }
    $if T is IPhysicsDirectSpaceState2DExtensionIntersectPoint {
        ci.virtual_methods["_intersect_point"] = physicsdirectspacestate2dextension_uintersect_point[T]
    }
    $if T is IPhysicsDirectSpaceState2DExtensionIntersectShape {
        ci.virtual_methods["_intersect_shape"] = physicsdirectspacestate2dextension_uintersect_shape[T]
    }
    $if T is IPhysicsDirectSpaceState2DExtensionCastMotion {
        ci.virtual_methods["_cast_motion"] = physicsdirectspacestate2dextension_ucast_motion[T]
    }
    $if T is IPhysicsDirectSpaceState2DExtensionCollideShape {
        ci.virtual_methods["_collide_shape"] = physicsdirectspacestate2dextension_ucollide_shape[T]
    }
    $if T is IPhysicsDirectSpaceState2DExtensionRestInfo {
        ci.virtual_methods["_rest_info"] = physicsdirectspacestate2dextension_urest_info[T]
    }
    $if T is IPhysicsDirectSpaceState3DExtensionIntersectRay {
        ci.virtual_methods["_intersect_ray"] = physicsdirectspacestate3dextension_uintersect_ray[T]
    }
    $if T is IPhysicsDirectSpaceState3DExtensionIntersectPoint {
        ci.virtual_methods["_intersect_point"] = physicsdirectspacestate3dextension_uintersect_point[T]
    }
    $if T is IPhysicsDirectSpaceState3DExtensionIntersectShape {
        ci.virtual_methods["_intersect_shape"] = physicsdirectspacestate3dextension_uintersect_shape[T]
    }
    $if T is IPhysicsDirectSpaceState3DExtensionCastMotion {
        ci.virtual_methods["_cast_motion"] = physicsdirectspacestate3dextension_ucast_motion[T]
    }
    $if T is IPhysicsDirectSpaceState3DExtensionCollideShape {
        ci.virtual_methods["_collide_shape"] = physicsdirectspacestate3dextension_ucollide_shape[T]
    }
    $if T is IPhysicsDirectSpaceState3DExtensionRestInfo {
        ci.virtual_methods["_rest_info"] = physicsdirectspacestate3dextension_urest_info[T]
    }
    $if T is IPhysicsDirectSpaceState3DExtensionGetClosestPointToObjectVolume {
        ci.virtual_methods["_get_closest_point_to_object_volume"] = physicsdirectspacestate3dextension_uget_closest_point_to_object_volume[T]
    }
    $if T is IPhysicsServer2DExtensionWorldBoundaryShapeCreate {
        ci.virtual_methods["_world_boundary_shape_create"] = physicsserver2dextension_uworld_boundary_shape_create[T]
    }
    $if T is IPhysicsServer2DExtensionSeparationRayShapeCreate {
        ci.virtual_methods["_separation_ray_shape_create"] = physicsserver2dextension_useparation_ray_shape_create[T]
    }
    $if T is IPhysicsServer2DExtensionSegmentShapeCreate {
        ci.virtual_methods["_segment_shape_create"] = physicsserver2dextension_usegment_shape_create[T]
    }
    $if T is IPhysicsServer2DExtensionCircleShapeCreate {
        ci.virtual_methods["_circle_shape_create"] = physicsserver2dextension_ucircle_shape_create[T]
    }
    $if T is IPhysicsServer2DExtensionRectangleShapeCreate {
        ci.virtual_methods["_rectangle_shape_create"] = physicsserver2dextension_urectangle_shape_create[T]
    }
    $if T is IPhysicsServer2DExtensionCapsuleShapeCreate {
        ci.virtual_methods["_capsule_shape_create"] = physicsserver2dextension_ucapsule_shape_create[T]
    }
    $if T is IPhysicsServer2DExtensionConvexPolygonShapeCreate {
        ci.virtual_methods["_convex_polygon_shape_create"] = physicsserver2dextension_uconvex_polygon_shape_create[T]
    }
    $if T is IPhysicsServer2DExtensionConcavePolygonShapeCreate {
        ci.virtual_methods["_concave_polygon_shape_create"] = physicsserver2dextension_uconcave_polygon_shape_create[T]
    }
    $if T is IPhysicsServer2DExtensionShapeSetData {
        ci.virtual_methods["_shape_set_data"] = physicsserver2dextension_ushape_set_data[T]
    }
    $if T is IPhysicsServer2DExtensionShapeSetCustomSolverBias {
        ci.virtual_methods["_shape_set_custom_solver_bias"] = physicsserver2dextension_ushape_set_custom_solver_bias[T]
    }
    $if T is IPhysicsServer2DExtensionShapeGetType {
        ci.virtual_methods["_shape_get_type"] = physicsserver2dextension_ushape_get_type[T]
    }
    $if T is IPhysicsServer2DExtensionShapeGetData {
        ci.virtual_methods["_shape_get_data"] = physicsserver2dextension_ushape_get_data[T]
    }
    $if T is IPhysicsServer2DExtensionShapeGetCustomSolverBias {
        ci.virtual_methods["_shape_get_custom_solver_bias"] = physicsserver2dextension_ushape_get_custom_solver_bias[T]
    }
    $if T is IPhysicsServer2DExtensionShapeCollide {
        ci.virtual_methods["_shape_collide"] = physicsserver2dextension_ushape_collide[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceCreate {
        ci.virtual_methods["_space_create"] = physicsserver2dextension_uspace_create[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceSetActive {
        ci.virtual_methods["_space_set_active"] = physicsserver2dextension_uspace_set_active[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceIsActive {
        ci.virtual_methods["_space_is_active"] = physicsserver2dextension_uspace_is_active[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceSetParam {
        ci.virtual_methods["_space_set_param"] = physicsserver2dextension_uspace_set_param[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceGetParam {
        ci.virtual_methods["_space_get_param"] = physicsserver2dextension_uspace_get_param[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceGetDirectState {
        ci.virtual_methods["_space_get_direct_state"] = physicsserver2dextension_uspace_get_direct_state[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceSetDebugContacts {
        ci.virtual_methods["_space_set_debug_contacts"] = physicsserver2dextension_uspace_set_debug_contacts[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceGetContacts {
        ci.virtual_methods["_space_get_contacts"] = physicsserver2dextension_uspace_get_contacts[T]
    }
    $if T is IPhysicsServer2DExtensionSpaceGetContactCount {
        ci.virtual_methods["_space_get_contact_count"] = physicsserver2dextension_uspace_get_contact_count[T]
    }
    $if T is IPhysicsServer2DExtensionAreaCreate {
        ci.virtual_methods["_area_create"] = physicsserver2dextension_uarea_create[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetSpace {
        ci.virtual_methods["_area_set_space"] = physicsserver2dextension_uarea_set_space[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetSpace {
        ci.virtual_methods["_area_get_space"] = physicsserver2dextension_uarea_get_space[T]
    }
    $if T is IPhysicsServer2DExtensionAreaAddShape {
        ci.virtual_methods["_area_add_shape"] = physicsserver2dextension_uarea_add_shape[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetShape {
        ci.virtual_methods["_area_set_shape"] = physicsserver2dextension_uarea_set_shape[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetShapeTransform {
        ci.virtual_methods["_area_set_shape_transform"] = physicsserver2dextension_uarea_set_shape_transform[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetShapeDisabled {
        ci.virtual_methods["_area_set_shape_disabled"] = physicsserver2dextension_uarea_set_shape_disabled[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetShapeCount {
        ci.virtual_methods["_area_get_shape_count"] = physicsserver2dextension_uarea_get_shape_count[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetShape {
        ci.virtual_methods["_area_get_shape"] = physicsserver2dextension_uarea_get_shape[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetShapeTransform {
        ci.virtual_methods["_area_get_shape_transform"] = physicsserver2dextension_uarea_get_shape_transform[T]
    }
    $if T is IPhysicsServer2DExtensionAreaRemoveShape {
        ci.virtual_methods["_area_remove_shape"] = physicsserver2dextension_uarea_remove_shape[T]
    }
    $if T is IPhysicsServer2DExtensionAreaClearShapes {
        ci.virtual_methods["_area_clear_shapes"] = physicsserver2dextension_uarea_clear_shapes[T]
    }
    $if T is IPhysicsServer2DExtensionAreaAttachObjectInstanceId {
        ci.virtual_methods["_area_attach_object_instance_id"] = physicsserver2dextension_uarea_attach_object_instance_id[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetObjectInstanceId {
        ci.virtual_methods["_area_get_object_instance_id"] = physicsserver2dextension_uarea_get_object_instance_id[T]
    }
    $if T is IPhysicsServer2DExtensionAreaAttachCanvasInstanceId {
        ci.virtual_methods["_area_attach_canvas_instance_id"] = physicsserver2dextension_uarea_attach_canvas_instance_id[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetCanvasInstanceId {
        ci.virtual_methods["_area_get_canvas_instance_id"] = physicsserver2dextension_uarea_get_canvas_instance_id[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetParam {
        ci.virtual_methods["_area_set_param"] = physicsserver2dextension_uarea_set_param[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetTransform {
        ci.virtual_methods["_area_set_transform"] = physicsserver2dextension_uarea_set_transform[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetParam {
        ci.virtual_methods["_area_get_param"] = physicsserver2dextension_uarea_get_param[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetTransform {
        ci.virtual_methods["_area_get_transform"] = physicsserver2dextension_uarea_get_transform[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetCollisionLayer {
        ci.virtual_methods["_area_set_collision_layer"] = physicsserver2dextension_uarea_set_collision_layer[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetCollisionLayer {
        ci.virtual_methods["_area_get_collision_layer"] = physicsserver2dextension_uarea_get_collision_layer[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetCollisionMask {
        ci.virtual_methods["_area_set_collision_mask"] = physicsserver2dextension_uarea_set_collision_mask[T]
    }
    $if T is IPhysicsServer2DExtensionAreaGetCollisionMask {
        ci.virtual_methods["_area_get_collision_mask"] = physicsserver2dextension_uarea_get_collision_mask[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetMonitorable {
        ci.virtual_methods["_area_set_monitorable"] = physicsserver2dextension_uarea_set_monitorable[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetPickable {
        ci.virtual_methods["_area_set_pickable"] = physicsserver2dextension_uarea_set_pickable[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetMonitorCallback {
        ci.virtual_methods["_area_set_monitor_callback"] = physicsserver2dextension_uarea_set_monitor_callback[T]
    }
    $if T is IPhysicsServer2DExtensionAreaSetAreaMonitorCallback {
        ci.virtual_methods["_area_set_area_monitor_callback"] = physicsserver2dextension_uarea_set_area_monitor_callback[T]
    }
    $if T is IPhysicsServer2DExtensionBodyCreate {
        ci.virtual_methods["_body_create"] = physicsserver2dextension_ubody_create[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetSpace {
        ci.virtual_methods["_body_set_space"] = physicsserver2dextension_ubody_set_space[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetSpace {
        ci.virtual_methods["_body_get_space"] = physicsserver2dextension_ubody_get_space[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetMode {
        ci.virtual_methods["_body_set_mode"] = physicsserver2dextension_ubody_set_mode[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetMode {
        ci.virtual_methods["_body_get_mode"] = physicsserver2dextension_ubody_get_mode[T]
    }
    $if T is IPhysicsServer2DExtensionBodyAddShape {
        ci.virtual_methods["_body_add_shape"] = physicsserver2dextension_ubody_add_shape[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetShape {
        ci.virtual_methods["_body_set_shape"] = physicsserver2dextension_ubody_set_shape[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetShapeTransform {
        ci.virtual_methods["_body_set_shape_transform"] = physicsserver2dextension_ubody_set_shape_transform[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetShapeCount {
        ci.virtual_methods["_body_get_shape_count"] = physicsserver2dextension_ubody_get_shape_count[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetShape {
        ci.virtual_methods["_body_get_shape"] = physicsserver2dextension_ubody_get_shape[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetShapeTransform {
        ci.virtual_methods["_body_get_shape_transform"] = physicsserver2dextension_ubody_get_shape_transform[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetShapeDisabled {
        ci.virtual_methods["_body_set_shape_disabled"] = physicsserver2dextension_ubody_set_shape_disabled[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetShapeAsOneWayCollision {
        ci.virtual_methods["_body_set_shape_as_one_way_collision"] = physicsserver2dextension_ubody_set_shape_as_one_way_collision[T]
    }
    $if T is IPhysicsServer2DExtensionBodyRemoveShape {
        ci.virtual_methods["_body_remove_shape"] = physicsserver2dextension_ubody_remove_shape[T]
    }
    $if T is IPhysicsServer2DExtensionBodyClearShapes {
        ci.virtual_methods["_body_clear_shapes"] = physicsserver2dextension_ubody_clear_shapes[T]
    }
    $if T is IPhysicsServer2DExtensionBodyAttachObjectInstanceId {
        ci.virtual_methods["_body_attach_object_instance_id"] = physicsserver2dextension_ubody_attach_object_instance_id[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetObjectInstanceId {
        ci.virtual_methods["_body_get_object_instance_id"] = physicsserver2dextension_ubody_get_object_instance_id[T]
    }
    $if T is IPhysicsServer2DExtensionBodyAttachCanvasInstanceId {
        ci.virtual_methods["_body_attach_canvas_instance_id"] = physicsserver2dextension_ubody_attach_canvas_instance_id[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetCanvasInstanceId {
        ci.virtual_methods["_body_get_canvas_instance_id"] = physicsserver2dextension_ubody_get_canvas_instance_id[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetContinuousCollisionDetectionMode {
        ci.virtual_methods["_body_set_continuous_collision_detection_mode"] = physicsserver2dextension_ubody_set_continuous_collision_detection_mode[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetContinuousCollisionDetectionMode {
        ci.virtual_methods["_body_get_continuous_collision_detection_mode"] = physicsserver2dextension_ubody_get_continuous_collision_detection_mode[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetCollisionLayer {
        ci.virtual_methods["_body_set_collision_layer"] = physicsserver2dextension_ubody_set_collision_layer[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetCollisionLayer {
        ci.virtual_methods["_body_get_collision_layer"] = physicsserver2dextension_ubody_get_collision_layer[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetCollisionMask {
        ci.virtual_methods["_body_set_collision_mask"] = physicsserver2dextension_ubody_set_collision_mask[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetCollisionMask {
        ci.virtual_methods["_body_get_collision_mask"] = physicsserver2dextension_ubody_get_collision_mask[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetCollisionPriority {
        ci.virtual_methods["_body_set_collision_priority"] = physicsserver2dextension_ubody_set_collision_priority[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetCollisionPriority {
        ci.virtual_methods["_body_get_collision_priority"] = physicsserver2dextension_ubody_get_collision_priority[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetParam {
        ci.virtual_methods["_body_set_param"] = physicsserver2dextension_ubody_set_param[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetParam {
        ci.virtual_methods["_body_get_param"] = physicsserver2dextension_ubody_get_param[T]
    }
    $if T is IPhysicsServer2DExtensionBodyResetMassProperties {
        ci.virtual_methods["_body_reset_mass_properties"] = physicsserver2dextension_ubody_reset_mass_properties[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetState {
        ci.virtual_methods["_body_set_state"] = physicsserver2dextension_ubody_set_state[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetState {
        ci.virtual_methods["_body_get_state"] = physicsserver2dextension_ubody_get_state[T]
    }
    $if T is IPhysicsServer2DExtensionBodyApplyCentralImpulse {
        ci.virtual_methods["_body_apply_central_impulse"] = physicsserver2dextension_ubody_apply_central_impulse[T]
    }
    $if T is IPhysicsServer2DExtensionBodyApplyTorqueImpulse {
        ci.virtual_methods["_body_apply_torque_impulse"] = physicsserver2dextension_ubody_apply_torque_impulse[T]
    }
    $if T is IPhysicsServer2DExtensionBodyApplyImpulse {
        ci.virtual_methods["_body_apply_impulse"] = physicsserver2dextension_ubody_apply_impulse[T]
    }
    $if T is IPhysicsServer2DExtensionBodyApplyCentralForce {
        ci.virtual_methods["_body_apply_central_force"] = physicsserver2dextension_ubody_apply_central_force[T]
    }
    $if T is IPhysicsServer2DExtensionBodyApplyForce {
        ci.virtual_methods["_body_apply_force"] = physicsserver2dextension_ubody_apply_force[T]
    }
    $if T is IPhysicsServer2DExtensionBodyApplyTorque {
        ci.virtual_methods["_body_apply_torque"] = physicsserver2dextension_ubody_apply_torque[T]
    }
    $if T is IPhysicsServer2DExtensionBodyAddConstantCentralForce {
        ci.virtual_methods["_body_add_constant_central_force"] = physicsserver2dextension_ubody_add_constant_central_force[T]
    }
    $if T is IPhysicsServer2DExtensionBodyAddConstantForce {
        ci.virtual_methods["_body_add_constant_force"] = physicsserver2dextension_ubody_add_constant_force[T]
    }
    $if T is IPhysicsServer2DExtensionBodyAddConstantTorque {
        ci.virtual_methods["_body_add_constant_torque"] = physicsserver2dextension_ubody_add_constant_torque[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetConstantForce {
        ci.virtual_methods["_body_set_constant_force"] = physicsserver2dextension_ubody_set_constant_force[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetConstantForce {
        ci.virtual_methods["_body_get_constant_force"] = physicsserver2dextension_ubody_get_constant_force[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetConstantTorque {
        ci.virtual_methods["_body_set_constant_torque"] = physicsserver2dextension_ubody_set_constant_torque[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetConstantTorque {
        ci.virtual_methods["_body_get_constant_torque"] = physicsserver2dextension_ubody_get_constant_torque[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetAxisVelocity {
        ci.virtual_methods["_body_set_axis_velocity"] = physicsserver2dextension_ubody_set_axis_velocity[T]
    }
    $if T is IPhysicsServer2DExtensionBodyAddCollisionException {
        ci.virtual_methods["_body_add_collision_exception"] = physicsserver2dextension_ubody_add_collision_exception[T]
    }
    $if T is IPhysicsServer2DExtensionBodyRemoveCollisionException {
        ci.virtual_methods["_body_remove_collision_exception"] = physicsserver2dextension_ubody_remove_collision_exception[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetCollisionExceptions {
        ci.virtual_methods["_body_get_collision_exceptions"] = physicsserver2dextension_ubody_get_collision_exceptions[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetMaxContactsReported {
        ci.virtual_methods["_body_set_max_contacts_reported"] = physicsserver2dextension_ubody_set_max_contacts_reported[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetMaxContactsReported {
        ci.virtual_methods["_body_get_max_contacts_reported"] = physicsserver2dextension_ubody_get_max_contacts_reported[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetContactsReportedDepthThreshold {
        ci.virtual_methods["_body_set_contacts_reported_depth_threshold"] = physicsserver2dextension_ubody_set_contacts_reported_depth_threshold[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetContactsReportedDepthThreshold {
        ci.virtual_methods["_body_get_contacts_reported_depth_threshold"] = physicsserver2dextension_ubody_get_contacts_reported_depth_threshold[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetOmitForceIntegration {
        ci.virtual_methods["_body_set_omit_force_integration"] = physicsserver2dextension_ubody_set_omit_force_integration[T]
    }
    $if T is IPhysicsServer2DExtensionBodyIsOmittingForceIntegration {
        ci.virtual_methods["_body_is_omitting_force_integration"] = physicsserver2dextension_ubody_is_omitting_force_integration[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetStateSyncCallback {
        ci.virtual_methods["_body_set_state_sync_callback"] = physicsserver2dextension_ubody_set_state_sync_callback[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetForceIntegrationCallback {
        ci.virtual_methods["_body_set_force_integration_callback"] = physicsserver2dextension_ubody_set_force_integration_callback[T]
    }
    $if T is IPhysicsServer2DExtensionBodyCollideShape {
        ci.virtual_methods["_body_collide_shape"] = physicsserver2dextension_ubody_collide_shape[T]
    }
    $if T is IPhysicsServer2DExtensionBodySetPickable {
        ci.virtual_methods["_body_set_pickable"] = physicsserver2dextension_ubody_set_pickable[T]
    }
    $if T is IPhysicsServer2DExtensionBodyGetDirectState {
        ci.virtual_methods["_body_get_direct_state"] = physicsserver2dextension_ubody_get_direct_state[T]
    }
    $if T is IPhysicsServer2DExtensionBodyTestMotion {
        ci.virtual_methods["_body_test_motion"] = physicsserver2dextension_ubody_test_motion[T]
    }
    $if T is IPhysicsServer2DExtensionJointCreate {
        ci.virtual_methods["_joint_create"] = physicsserver2dextension_ujoint_create[T]
    }
    $if T is IPhysicsServer2DExtensionJointClear {
        ci.virtual_methods["_joint_clear"] = physicsserver2dextension_ujoint_clear[T]
    }
    $if T is IPhysicsServer2DExtensionJointSetParam {
        ci.virtual_methods["_joint_set_param"] = physicsserver2dextension_ujoint_set_param[T]
    }
    $if T is IPhysicsServer2DExtensionJointGetParam {
        ci.virtual_methods["_joint_get_param"] = physicsserver2dextension_ujoint_get_param[T]
    }
    $if T is IPhysicsServer2DExtensionJointDisableCollisionsBetweenBodies {
        ci.virtual_methods["_joint_disable_collisions_between_bodies"] = physicsserver2dextension_ujoint_disable_collisions_between_bodies[T]
    }
    $if T is IPhysicsServer2DExtensionJointIsDisabledCollisionsBetweenBodies {
        ci.virtual_methods["_joint_is_disabled_collisions_between_bodies"] = physicsserver2dextension_ujoint_is_disabled_collisions_between_bodies[T]
    }
    $if T is IPhysicsServer2DExtensionJointMakePin {
        ci.virtual_methods["_joint_make_pin"] = physicsserver2dextension_ujoint_make_pin[T]
    }
    $if T is IPhysicsServer2DExtensionJointMakeGroove {
        ci.virtual_methods["_joint_make_groove"] = physicsserver2dextension_ujoint_make_groove[T]
    }
    $if T is IPhysicsServer2DExtensionJointMakeDampedSpring {
        ci.virtual_methods["_joint_make_damped_spring"] = physicsserver2dextension_ujoint_make_damped_spring[T]
    }
    $if T is IPhysicsServer2DExtensionPinJointSetFlag {
        ci.virtual_methods["_pin_joint_set_flag"] = physicsserver2dextension_upin_joint_set_flag[T]
    }
    $if T is IPhysicsServer2DExtensionPinJointGetFlag {
        ci.virtual_methods["_pin_joint_get_flag"] = physicsserver2dextension_upin_joint_get_flag[T]
    }
    $if T is IPhysicsServer2DExtensionPinJointSetParam {
        ci.virtual_methods["_pin_joint_set_param"] = physicsserver2dextension_upin_joint_set_param[T]
    }
    $if T is IPhysicsServer2DExtensionPinJointGetParam {
        ci.virtual_methods["_pin_joint_get_param"] = physicsserver2dextension_upin_joint_get_param[T]
    }
    $if T is IPhysicsServer2DExtensionDampedSpringJointSetParam {
        ci.virtual_methods["_damped_spring_joint_set_param"] = physicsserver2dextension_udamped_spring_joint_set_param[T]
    }
    $if T is IPhysicsServer2DExtensionDampedSpringJointGetParam {
        ci.virtual_methods["_damped_spring_joint_get_param"] = physicsserver2dextension_udamped_spring_joint_get_param[T]
    }
    $if T is IPhysicsServer2DExtensionJointGetType {
        ci.virtual_methods["_joint_get_type"] = physicsserver2dextension_ujoint_get_type[T]
    }
    $if T is IPhysicsServer2DExtensionFreeRid {
        ci.virtual_methods["_free_rid"] = physicsserver2dextension_ufree_rid[T]
    }
    $if T is IPhysicsServer2DExtensionSetActive {
        ci.virtual_methods["_set_active"] = physicsserver2dextension_uset_active[T]
    }
    $if T is IPhysicsServer2DExtensionInit {
        ci.virtual_methods["_init"] = physicsserver2dextension_uinit[T]
    }
    $if T is IPhysicsServer2DExtensionStep {
        ci.virtual_methods["_step"] = physicsserver2dextension_ustep[T]
    }
    $if T is IPhysicsServer2DExtensionSync {
        ci.virtual_methods["_sync"] = physicsserver2dextension_usync[T]
    }
    $if T is IPhysicsServer2DExtensionFlushQueries {
        ci.virtual_methods["_flush_queries"] = physicsserver2dextension_uflush_queries[T]
    }
    $if T is IPhysicsServer2DExtensionEndSync {
        ci.virtual_methods["_end_sync"] = physicsserver2dextension_uend_sync[T]
    }
    $if T is IPhysicsServer2DExtensionFinish {
        ci.virtual_methods["_finish"] = physicsserver2dextension_ufinish[T]
    }
    $if T is IPhysicsServer2DExtensionIsFlushingQueries {
        ci.virtual_methods["_is_flushing_queries"] = physicsserver2dextension_uis_flushing_queries[T]
    }
    $if T is IPhysicsServer2DExtensionGetProcessInfo {
        ci.virtual_methods["_get_process_info"] = physicsserver2dextension_uget_process_info[T]
    }
    $if T is IPhysicsServer3DExtensionWorldBoundaryShapeCreate {
        ci.virtual_methods["_world_boundary_shape_create"] = physicsserver3dextension_uworld_boundary_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionSeparationRayShapeCreate {
        ci.virtual_methods["_separation_ray_shape_create"] = physicsserver3dextension_useparation_ray_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionSphereShapeCreate {
        ci.virtual_methods["_sphere_shape_create"] = physicsserver3dextension_usphere_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionBoxShapeCreate {
        ci.virtual_methods["_box_shape_create"] = physicsserver3dextension_ubox_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionCapsuleShapeCreate {
        ci.virtual_methods["_capsule_shape_create"] = physicsserver3dextension_ucapsule_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionCylinderShapeCreate {
        ci.virtual_methods["_cylinder_shape_create"] = physicsserver3dextension_ucylinder_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionConvexPolygonShapeCreate {
        ci.virtual_methods["_convex_polygon_shape_create"] = physicsserver3dextension_uconvex_polygon_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionConcavePolygonShapeCreate {
        ci.virtual_methods["_concave_polygon_shape_create"] = physicsserver3dextension_uconcave_polygon_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionHeightmapShapeCreate {
        ci.virtual_methods["_heightmap_shape_create"] = physicsserver3dextension_uheightmap_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionCustomShapeCreate {
        ci.virtual_methods["_custom_shape_create"] = physicsserver3dextension_ucustom_shape_create[T]
    }
    $if T is IPhysicsServer3DExtensionShapeSetData {
        ci.virtual_methods["_shape_set_data"] = physicsserver3dextension_ushape_set_data[T]
    }
    $if T is IPhysicsServer3DExtensionShapeSetCustomSolverBias {
        ci.virtual_methods["_shape_set_custom_solver_bias"] = physicsserver3dextension_ushape_set_custom_solver_bias[T]
    }
    $if T is IPhysicsServer3DExtensionShapeSetMargin {
        ci.virtual_methods["_shape_set_margin"] = physicsserver3dextension_ushape_set_margin[T]
    }
    $if T is IPhysicsServer3DExtensionShapeGetMargin {
        ci.virtual_methods["_shape_get_margin"] = physicsserver3dextension_ushape_get_margin[T]
    }
    $if T is IPhysicsServer3DExtensionShapeGetType {
        ci.virtual_methods["_shape_get_type"] = physicsserver3dextension_ushape_get_type[T]
    }
    $if T is IPhysicsServer3DExtensionShapeGetData {
        ci.virtual_methods["_shape_get_data"] = physicsserver3dextension_ushape_get_data[T]
    }
    $if T is IPhysicsServer3DExtensionShapeGetCustomSolverBias {
        ci.virtual_methods["_shape_get_custom_solver_bias"] = physicsserver3dextension_ushape_get_custom_solver_bias[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceCreate {
        ci.virtual_methods["_space_create"] = physicsserver3dextension_uspace_create[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceSetActive {
        ci.virtual_methods["_space_set_active"] = physicsserver3dextension_uspace_set_active[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceIsActive {
        ci.virtual_methods["_space_is_active"] = physicsserver3dextension_uspace_is_active[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceSetParam {
        ci.virtual_methods["_space_set_param"] = physicsserver3dextension_uspace_set_param[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceGetParam {
        ci.virtual_methods["_space_get_param"] = physicsserver3dextension_uspace_get_param[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceGetDirectState {
        ci.virtual_methods["_space_get_direct_state"] = physicsserver3dextension_uspace_get_direct_state[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceSetDebugContacts {
        ci.virtual_methods["_space_set_debug_contacts"] = physicsserver3dextension_uspace_set_debug_contacts[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceGetContacts {
        ci.virtual_methods["_space_get_contacts"] = physicsserver3dextension_uspace_get_contacts[T]
    }
    $if T is IPhysicsServer3DExtensionSpaceGetContactCount {
        ci.virtual_methods["_space_get_contact_count"] = physicsserver3dextension_uspace_get_contact_count[T]
    }
    $if T is IPhysicsServer3DExtensionAreaCreate {
        ci.virtual_methods["_area_create"] = physicsserver3dextension_uarea_create[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetSpace {
        ci.virtual_methods["_area_set_space"] = physicsserver3dextension_uarea_set_space[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetSpace {
        ci.virtual_methods["_area_get_space"] = physicsserver3dextension_uarea_get_space[T]
    }
    $if T is IPhysicsServer3DExtensionAreaAddShape {
        ci.virtual_methods["_area_add_shape"] = physicsserver3dextension_uarea_add_shape[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetShape {
        ci.virtual_methods["_area_set_shape"] = physicsserver3dextension_uarea_set_shape[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetShapeTransform {
        ci.virtual_methods["_area_set_shape_transform"] = physicsserver3dextension_uarea_set_shape_transform[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetShapeDisabled {
        ci.virtual_methods["_area_set_shape_disabled"] = physicsserver3dextension_uarea_set_shape_disabled[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetShapeCount {
        ci.virtual_methods["_area_get_shape_count"] = physicsserver3dextension_uarea_get_shape_count[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetShape {
        ci.virtual_methods["_area_get_shape"] = physicsserver3dextension_uarea_get_shape[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetShapeTransform {
        ci.virtual_methods["_area_get_shape_transform"] = physicsserver3dextension_uarea_get_shape_transform[T]
    }
    $if T is IPhysicsServer3DExtensionAreaRemoveShape {
        ci.virtual_methods["_area_remove_shape"] = physicsserver3dextension_uarea_remove_shape[T]
    }
    $if T is IPhysicsServer3DExtensionAreaClearShapes {
        ci.virtual_methods["_area_clear_shapes"] = physicsserver3dextension_uarea_clear_shapes[T]
    }
    $if T is IPhysicsServer3DExtensionAreaAttachObjectInstanceId {
        ci.virtual_methods["_area_attach_object_instance_id"] = physicsserver3dextension_uarea_attach_object_instance_id[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetObjectInstanceId {
        ci.virtual_methods["_area_get_object_instance_id"] = physicsserver3dextension_uarea_get_object_instance_id[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetParam {
        ci.virtual_methods["_area_set_param"] = physicsserver3dextension_uarea_set_param[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetTransform {
        ci.virtual_methods["_area_set_transform"] = physicsserver3dextension_uarea_set_transform[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetParam {
        ci.virtual_methods["_area_get_param"] = physicsserver3dextension_uarea_get_param[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetTransform {
        ci.virtual_methods["_area_get_transform"] = physicsserver3dextension_uarea_get_transform[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetCollisionLayer {
        ci.virtual_methods["_area_set_collision_layer"] = physicsserver3dextension_uarea_set_collision_layer[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetCollisionLayer {
        ci.virtual_methods["_area_get_collision_layer"] = physicsserver3dextension_uarea_get_collision_layer[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetCollisionMask {
        ci.virtual_methods["_area_set_collision_mask"] = physicsserver3dextension_uarea_set_collision_mask[T]
    }
    $if T is IPhysicsServer3DExtensionAreaGetCollisionMask {
        ci.virtual_methods["_area_get_collision_mask"] = physicsserver3dextension_uarea_get_collision_mask[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetMonitorable {
        ci.virtual_methods["_area_set_monitorable"] = physicsserver3dextension_uarea_set_monitorable[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetRayPickable {
        ci.virtual_methods["_area_set_ray_pickable"] = physicsserver3dextension_uarea_set_ray_pickable[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetMonitorCallback {
        ci.virtual_methods["_area_set_monitor_callback"] = physicsserver3dextension_uarea_set_monitor_callback[T]
    }
    $if T is IPhysicsServer3DExtensionAreaSetAreaMonitorCallback {
        ci.virtual_methods["_area_set_area_monitor_callback"] = physicsserver3dextension_uarea_set_area_monitor_callback[T]
    }
    $if T is IPhysicsServer3DExtensionBodyCreate {
        ci.virtual_methods["_body_create"] = physicsserver3dextension_ubody_create[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetSpace {
        ci.virtual_methods["_body_set_space"] = physicsserver3dextension_ubody_set_space[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetSpace {
        ci.virtual_methods["_body_get_space"] = physicsserver3dextension_ubody_get_space[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetMode {
        ci.virtual_methods["_body_set_mode"] = physicsserver3dextension_ubody_set_mode[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetMode {
        ci.virtual_methods["_body_get_mode"] = physicsserver3dextension_ubody_get_mode[T]
    }
    $if T is IPhysicsServer3DExtensionBodyAddShape {
        ci.virtual_methods["_body_add_shape"] = physicsserver3dextension_ubody_add_shape[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetShape {
        ci.virtual_methods["_body_set_shape"] = physicsserver3dextension_ubody_set_shape[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetShapeTransform {
        ci.virtual_methods["_body_set_shape_transform"] = physicsserver3dextension_ubody_set_shape_transform[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetShapeDisabled {
        ci.virtual_methods["_body_set_shape_disabled"] = physicsserver3dextension_ubody_set_shape_disabled[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetShapeCount {
        ci.virtual_methods["_body_get_shape_count"] = physicsserver3dextension_ubody_get_shape_count[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetShape {
        ci.virtual_methods["_body_get_shape"] = physicsserver3dextension_ubody_get_shape[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetShapeTransform {
        ci.virtual_methods["_body_get_shape_transform"] = physicsserver3dextension_ubody_get_shape_transform[T]
    }
    $if T is IPhysicsServer3DExtensionBodyRemoveShape {
        ci.virtual_methods["_body_remove_shape"] = physicsserver3dextension_ubody_remove_shape[T]
    }
    $if T is IPhysicsServer3DExtensionBodyClearShapes {
        ci.virtual_methods["_body_clear_shapes"] = physicsserver3dextension_ubody_clear_shapes[T]
    }
    $if T is IPhysicsServer3DExtensionBodyAttachObjectInstanceId {
        ci.virtual_methods["_body_attach_object_instance_id"] = physicsserver3dextension_ubody_attach_object_instance_id[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetObjectInstanceId {
        ci.virtual_methods["_body_get_object_instance_id"] = physicsserver3dextension_ubody_get_object_instance_id[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetEnableContinuousCollisionDetection {
        ci.virtual_methods["_body_set_enable_continuous_collision_detection"] = physicsserver3dextension_ubody_set_enable_continuous_collision_detection[T]
    }
    $if T is IPhysicsServer3DExtensionBodyIsContinuousCollisionDetectionEnabled {
        ci.virtual_methods["_body_is_continuous_collision_detection_enabled"] = physicsserver3dextension_ubody_is_continuous_collision_detection_enabled[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetCollisionLayer {
        ci.virtual_methods["_body_set_collision_layer"] = physicsserver3dextension_ubody_set_collision_layer[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetCollisionLayer {
        ci.virtual_methods["_body_get_collision_layer"] = physicsserver3dextension_ubody_get_collision_layer[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetCollisionMask {
        ci.virtual_methods["_body_set_collision_mask"] = physicsserver3dextension_ubody_set_collision_mask[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetCollisionMask {
        ci.virtual_methods["_body_get_collision_mask"] = physicsserver3dextension_ubody_get_collision_mask[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetCollisionPriority {
        ci.virtual_methods["_body_set_collision_priority"] = physicsserver3dextension_ubody_set_collision_priority[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetCollisionPriority {
        ci.virtual_methods["_body_get_collision_priority"] = physicsserver3dextension_ubody_get_collision_priority[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetUserFlags {
        ci.virtual_methods["_body_set_user_flags"] = physicsserver3dextension_ubody_set_user_flags[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetUserFlags {
        ci.virtual_methods["_body_get_user_flags"] = physicsserver3dextension_ubody_get_user_flags[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetParam {
        ci.virtual_methods["_body_set_param"] = physicsserver3dextension_ubody_set_param[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetParam {
        ci.virtual_methods["_body_get_param"] = physicsserver3dextension_ubody_get_param[T]
    }
    $if T is IPhysicsServer3DExtensionBodyResetMassProperties {
        ci.virtual_methods["_body_reset_mass_properties"] = physicsserver3dextension_ubody_reset_mass_properties[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetState {
        ci.virtual_methods["_body_set_state"] = physicsserver3dextension_ubody_set_state[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetState {
        ci.virtual_methods["_body_get_state"] = physicsserver3dextension_ubody_get_state[T]
    }
    $if T is IPhysicsServer3DExtensionBodyApplyCentralImpulse {
        ci.virtual_methods["_body_apply_central_impulse"] = physicsserver3dextension_ubody_apply_central_impulse[T]
    }
    $if T is IPhysicsServer3DExtensionBodyApplyImpulse {
        ci.virtual_methods["_body_apply_impulse"] = physicsserver3dextension_ubody_apply_impulse[T]
    }
    $if T is IPhysicsServer3DExtensionBodyApplyTorqueImpulse {
        ci.virtual_methods["_body_apply_torque_impulse"] = physicsserver3dextension_ubody_apply_torque_impulse[T]
    }
    $if T is IPhysicsServer3DExtensionBodyApplyCentralForce {
        ci.virtual_methods["_body_apply_central_force"] = physicsserver3dextension_ubody_apply_central_force[T]
    }
    $if T is IPhysicsServer3DExtensionBodyApplyForce {
        ci.virtual_methods["_body_apply_force"] = physicsserver3dextension_ubody_apply_force[T]
    }
    $if T is IPhysicsServer3DExtensionBodyApplyTorque {
        ci.virtual_methods["_body_apply_torque"] = physicsserver3dextension_ubody_apply_torque[T]
    }
    $if T is IPhysicsServer3DExtensionBodyAddConstantCentralForce {
        ci.virtual_methods["_body_add_constant_central_force"] = physicsserver3dextension_ubody_add_constant_central_force[T]
    }
    $if T is IPhysicsServer3DExtensionBodyAddConstantForce {
        ci.virtual_methods["_body_add_constant_force"] = physicsserver3dextension_ubody_add_constant_force[T]
    }
    $if T is IPhysicsServer3DExtensionBodyAddConstantTorque {
        ci.virtual_methods["_body_add_constant_torque"] = physicsserver3dextension_ubody_add_constant_torque[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetConstantForce {
        ci.virtual_methods["_body_set_constant_force"] = physicsserver3dextension_ubody_set_constant_force[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetConstantForce {
        ci.virtual_methods["_body_get_constant_force"] = physicsserver3dextension_ubody_get_constant_force[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetConstantTorque {
        ci.virtual_methods["_body_set_constant_torque"] = physicsserver3dextension_ubody_set_constant_torque[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetConstantTorque {
        ci.virtual_methods["_body_get_constant_torque"] = physicsserver3dextension_ubody_get_constant_torque[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetAxisVelocity {
        ci.virtual_methods["_body_set_axis_velocity"] = physicsserver3dextension_ubody_set_axis_velocity[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetAxisLock {
        ci.virtual_methods["_body_set_axis_lock"] = physicsserver3dextension_ubody_set_axis_lock[T]
    }
    $if T is IPhysicsServer3DExtensionBodyIsAxisLocked {
        ci.virtual_methods["_body_is_axis_locked"] = physicsserver3dextension_ubody_is_axis_locked[T]
    }
    $if T is IPhysicsServer3DExtensionBodyAddCollisionException {
        ci.virtual_methods["_body_add_collision_exception"] = physicsserver3dextension_ubody_add_collision_exception[T]
    }
    $if T is IPhysicsServer3DExtensionBodyRemoveCollisionException {
        ci.virtual_methods["_body_remove_collision_exception"] = physicsserver3dextension_ubody_remove_collision_exception[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetCollisionExceptions {
        ci.virtual_methods["_body_get_collision_exceptions"] = physicsserver3dextension_ubody_get_collision_exceptions[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetMaxContactsReported {
        ci.virtual_methods["_body_set_max_contacts_reported"] = physicsserver3dextension_ubody_set_max_contacts_reported[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetMaxContactsReported {
        ci.virtual_methods["_body_get_max_contacts_reported"] = physicsserver3dextension_ubody_get_max_contacts_reported[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetContactsReportedDepthThreshold {
        ci.virtual_methods["_body_set_contacts_reported_depth_threshold"] = physicsserver3dextension_ubody_set_contacts_reported_depth_threshold[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetContactsReportedDepthThreshold {
        ci.virtual_methods["_body_get_contacts_reported_depth_threshold"] = physicsserver3dextension_ubody_get_contacts_reported_depth_threshold[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetOmitForceIntegration {
        ci.virtual_methods["_body_set_omit_force_integration"] = physicsserver3dextension_ubody_set_omit_force_integration[T]
    }
    $if T is IPhysicsServer3DExtensionBodyIsOmittingForceIntegration {
        ci.virtual_methods["_body_is_omitting_force_integration"] = physicsserver3dextension_ubody_is_omitting_force_integration[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetStateSyncCallback {
        ci.virtual_methods["_body_set_state_sync_callback"] = physicsserver3dextension_ubody_set_state_sync_callback[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetForceIntegrationCallback {
        ci.virtual_methods["_body_set_force_integration_callback"] = physicsserver3dextension_ubody_set_force_integration_callback[T]
    }
    $if T is IPhysicsServer3DExtensionBodySetRayPickable {
        ci.virtual_methods["_body_set_ray_pickable"] = physicsserver3dextension_ubody_set_ray_pickable[T]
    }
    $if T is IPhysicsServer3DExtensionBodyTestMotion {
        ci.virtual_methods["_body_test_motion"] = physicsserver3dextension_ubody_test_motion[T]
    }
    $if T is IPhysicsServer3DExtensionBodyGetDirectState {
        ci.virtual_methods["_body_get_direct_state"] = physicsserver3dextension_ubody_get_direct_state[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyCreate {
        ci.virtual_methods["_soft_body_create"] = physicsserver3dextension_usoft_body_create[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyUpdateRenderingServer {
        ci.virtual_methods["_soft_body_update_rendering_server"] = physicsserver3dextension_usoft_body_update_rendering_server[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetSpace {
        ci.virtual_methods["_soft_body_set_space"] = physicsserver3dextension_usoft_body_set_space[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetSpace {
        ci.virtual_methods["_soft_body_get_space"] = physicsserver3dextension_usoft_body_get_space[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetRayPickable {
        ci.virtual_methods["_soft_body_set_ray_pickable"] = physicsserver3dextension_usoft_body_set_ray_pickable[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetCollisionLayer {
        ci.virtual_methods["_soft_body_set_collision_layer"] = physicsserver3dextension_usoft_body_set_collision_layer[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetCollisionLayer {
        ci.virtual_methods["_soft_body_get_collision_layer"] = physicsserver3dextension_usoft_body_get_collision_layer[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetCollisionMask {
        ci.virtual_methods["_soft_body_set_collision_mask"] = physicsserver3dextension_usoft_body_set_collision_mask[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetCollisionMask {
        ci.virtual_methods["_soft_body_get_collision_mask"] = physicsserver3dextension_usoft_body_get_collision_mask[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyAddCollisionException {
        ci.virtual_methods["_soft_body_add_collision_exception"] = physicsserver3dextension_usoft_body_add_collision_exception[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyRemoveCollisionException {
        ci.virtual_methods["_soft_body_remove_collision_exception"] = physicsserver3dextension_usoft_body_remove_collision_exception[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetCollisionExceptions {
        ci.virtual_methods["_soft_body_get_collision_exceptions"] = physicsserver3dextension_usoft_body_get_collision_exceptions[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetState {
        ci.virtual_methods["_soft_body_set_state"] = physicsserver3dextension_usoft_body_set_state[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetState {
        ci.virtual_methods["_soft_body_get_state"] = physicsserver3dextension_usoft_body_get_state[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetTransform {
        ci.virtual_methods["_soft_body_set_transform"] = physicsserver3dextension_usoft_body_set_transform[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetSimulationPrecision {
        ci.virtual_methods["_soft_body_set_simulation_precision"] = physicsserver3dextension_usoft_body_set_simulation_precision[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetSimulationPrecision {
        ci.virtual_methods["_soft_body_get_simulation_precision"] = physicsserver3dextension_usoft_body_get_simulation_precision[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetTotalMass {
        ci.virtual_methods["_soft_body_set_total_mass"] = physicsserver3dextension_usoft_body_set_total_mass[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetTotalMass {
        ci.virtual_methods["_soft_body_get_total_mass"] = physicsserver3dextension_usoft_body_get_total_mass[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetLinearStiffness {
        ci.virtual_methods["_soft_body_set_linear_stiffness"] = physicsserver3dextension_usoft_body_set_linear_stiffness[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetLinearStiffness {
        ci.virtual_methods["_soft_body_get_linear_stiffness"] = physicsserver3dextension_usoft_body_get_linear_stiffness[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetPressureCoefficient {
        ci.virtual_methods["_soft_body_set_pressure_coefficient"] = physicsserver3dextension_usoft_body_set_pressure_coefficient[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetPressureCoefficient {
        ci.virtual_methods["_soft_body_get_pressure_coefficient"] = physicsserver3dextension_usoft_body_get_pressure_coefficient[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetDampingCoefficient {
        ci.virtual_methods["_soft_body_set_damping_coefficient"] = physicsserver3dextension_usoft_body_set_damping_coefficient[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetDampingCoefficient {
        ci.virtual_methods["_soft_body_get_damping_coefficient"] = physicsserver3dextension_usoft_body_get_damping_coefficient[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetDragCoefficient {
        ci.virtual_methods["_soft_body_set_drag_coefficient"] = physicsserver3dextension_usoft_body_set_drag_coefficient[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetDragCoefficient {
        ci.virtual_methods["_soft_body_get_drag_coefficient"] = physicsserver3dextension_usoft_body_get_drag_coefficient[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodySetMesh {
        ci.virtual_methods["_soft_body_set_mesh"] = physicsserver3dextension_usoft_body_set_mesh[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetBounds {
        ci.virtual_methods["_soft_body_get_bounds"] = physicsserver3dextension_usoft_body_get_bounds[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyMovePoint {
        ci.virtual_methods["_soft_body_move_point"] = physicsserver3dextension_usoft_body_move_point[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyGetPointGlobalPosition {
        ci.virtual_methods["_soft_body_get_point_global_position"] = physicsserver3dextension_usoft_body_get_point_global_position[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyRemoveAllPinnedPoints {
        ci.virtual_methods["_soft_body_remove_all_pinned_points"] = physicsserver3dextension_usoft_body_remove_all_pinned_points[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyPinPoint {
        ci.virtual_methods["_soft_body_pin_point"] = physicsserver3dextension_usoft_body_pin_point[T]
    }
    $if T is IPhysicsServer3DExtensionSoftBodyIsPointPinned {
        ci.virtual_methods["_soft_body_is_point_pinned"] = physicsserver3dextension_usoft_body_is_point_pinned[T]
    }
    $if T is IPhysicsServer3DExtensionJointCreate {
        ci.virtual_methods["_joint_create"] = physicsserver3dextension_ujoint_create[T]
    }
    $if T is IPhysicsServer3DExtensionJointClear {
        ci.virtual_methods["_joint_clear"] = physicsserver3dextension_ujoint_clear[T]
    }
    $if T is IPhysicsServer3DExtensionJointMakePin {
        ci.virtual_methods["_joint_make_pin"] = physicsserver3dextension_ujoint_make_pin[T]
    }
    $if T is IPhysicsServer3DExtensionPinJointSetParam {
        ci.virtual_methods["_pin_joint_set_param"] = physicsserver3dextension_upin_joint_set_param[T]
    }
    $if T is IPhysicsServer3DExtensionPinJointGetParam {
        ci.virtual_methods["_pin_joint_get_param"] = physicsserver3dextension_upin_joint_get_param[T]
    }
    $if T is IPhysicsServer3DExtensionPinJointSetLocalA {
        ci.virtual_methods["_pin_joint_set_local_a"] = physicsserver3dextension_upin_joint_set_local_a[T]
    }
    $if T is IPhysicsServer3DExtensionPinJointGetLocalA {
        ci.virtual_methods["_pin_joint_get_local_a"] = physicsserver3dextension_upin_joint_get_local_a[T]
    }
    $if T is IPhysicsServer3DExtensionPinJointSetLocalB {
        ci.virtual_methods["_pin_joint_set_local_b"] = physicsserver3dextension_upin_joint_set_local_b[T]
    }
    $if T is IPhysicsServer3DExtensionPinJointGetLocalB {
        ci.virtual_methods["_pin_joint_get_local_b"] = physicsserver3dextension_upin_joint_get_local_b[T]
    }
    $if T is IPhysicsServer3DExtensionJointMakeHinge {
        ci.virtual_methods["_joint_make_hinge"] = physicsserver3dextension_ujoint_make_hinge[T]
    }
    $if T is IPhysicsServer3DExtensionJointMakeHingeSimple {
        ci.virtual_methods["_joint_make_hinge_simple"] = physicsserver3dextension_ujoint_make_hinge_simple[T]
    }
    $if T is IPhysicsServer3DExtensionHingeJointSetParam {
        ci.virtual_methods["_hinge_joint_set_param"] = physicsserver3dextension_uhinge_joint_set_param[T]
    }
    $if T is IPhysicsServer3DExtensionHingeJointGetParam {
        ci.virtual_methods["_hinge_joint_get_param"] = physicsserver3dextension_uhinge_joint_get_param[T]
    }
    $if T is IPhysicsServer3DExtensionHingeJointSetFlag {
        ci.virtual_methods["_hinge_joint_set_flag"] = physicsserver3dextension_uhinge_joint_set_flag[T]
    }
    $if T is IPhysicsServer3DExtensionHingeJointGetFlag {
        ci.virtual_methods["_hinge_joint_get_flag"] = physicsserver3dextension_uhinge_joint_get_flag[T]
    }
    $if T is IPhysicsServer3DExtensionJointMakeSlider {
        ci.virtual_methods["_joint_make_slider"] = physicsserver3dextension_ujoint_make_slider[T]
    }
    $if T is IPhysicsServer3DExtensionSliderJointSetParam {
        ci.virtual_methods["_slider_joint_set_param"] = physicsserver3dextension_uslider_joint_set_param[T]
    }
    $if T is IPhysicsServer3DExtensionSliderJointGetParam {
        ci.virtual_methods["_slider_joint_get_param"] = physicsserver3dextension_uslider_joint_get_param[T]
    }
    $if T is IPhysicsServer3DExtensionJointMakeConeTwist {
        ci.virtual_methods["_joint_make_cone_twist"] = physicsserver3dextension_ujoint_make_cone_twist[T]
    }
    $if T is IPhysicsServer3DExtensionConeTwistJointSetParam {
        ci.virtual_methods["_cone_twist_joint_set_param"] = physicsserver3dextension_ucone_twist_joint_set_param[T]
    }
    $if T is IPhysicsServer3DExtensionConeTwistJointGetParam {
        ci.virtual_methods["_cone_twist_joint_get_param"] = physicsserver3dextension_ucone_twist_joint_get_param[T]
    }
    $if T is IPhysicsServer3DExtensionJointMakeGeneric6dof {
        ci.virtual_methods["_joint_make_generic_6dof"] = physicsserver3dextension_ujoint_make_generic_6dof[T]
    }
    $if T is IPhysicsServer3DExtensionGeneric6dofJointSetParam {
        ci.virtual_methods["_generic_6dof_joint_set_param"] = physicsserver3dextension_ugeneric_6dof_joint_set_param[T]
    }
    $if T is IPhysicsServer3DExtensionGeneric6dofJointGetParam {
        ci.virtual_methods["_generic_6dof_joint_get_param"] = physicsserver3dextension_ugeneric_6dof_joint_get_param[T]
    }
    $if T is IPhysicsServer3DExtensionGeneric6dofJointSetFlag {
        ci.virtual_methods["_generic_6dof_joint_set_flag"] = physicsserver3dextension_ugeneric_6dof_joint_set_flag[T]
    }
    $if T is IPhysicsServer3DExtensionGeneric6dofJointGetFlag {
        ci.virtual_methods["_generic_6dof_joint_get_flag"] = physicsserver3dextension_ugeneric_6dof_joint_get_flag[T]
    }
    $if T is IPhysicsServer3DExtensionJointGetType {
        ci.virtual_methods["_joint_get_type"] = physicsserver3dextension_ujoint_get_type[T]
    }
    $if T is IPhysicsServer3DExtensionJointSetSolverPriority {
        ci.virtual_methods["_joint_set_solver_priority"] = physicsserver3dextension_ujoint_set_solver_priority[T]
    }
    $if T is IPhysicsServer3DExtensionJointGetSolverPriority {
        ci.virtual_methods["_joint_get_solver_priority"] = physicsserver3dextension_ujoint_get_solver_priority[T]
    }
    $if T is IPhysicsServer3DExtensionJointDisableCollisionsBetweenBodies {
        ci.virtual_methods["_joint_disable_collisions_between_bodies"] = physicsserver3dextension_ujoint_disable_collisions_between_bodies[T]
    }
    $if T is IPhysicsServer3DExtensionJointIsDisabledCollisionsBetweenBodies {
        ci.virtual_methods["_joint_is_disabled_collisions_between_bodies"] = physicsserver3dextension_ujoint_is_disabled_collisions_between_bodies[T]
    }
    $if T is IPhysicsServer3DExtensionFreeRid {
        ci.virtual_methods["_free_rid"] = physicsserver3dextension_ufree_rid[T]
    }
    $if T is IPhysicsServer3DExtensionSetActive {
        ci.virtual_methods["_set_active"] = physicsserver3dextension_uset_active[T]
    }
    $if T is IPhysicsServer3DExtensionInit {
        ci.virtual_methods["_init"] = physicsserver3dextension_uinit[T]
    }
    $if T is IPhysicsServer3DExtensionStep {
        ci.virtual_methods["_step"] = physicsserver3dextension_ustep[T]
    }
    $if T is IPhysicsServer3DExtensionSync {
        ci.virtual_methods["_sync"] = physicsserver3dextension_usync[T]
    }
    $if T is IPhysicsServer3DExtensionFlushQueries {
        ci.virtual_methods["_flush_queries"] = physicsserver3dextension_uflush_queries[T]
    }
    $if T is IPhysicsServer3DExtensionEndSync {
        ci.virtual_methods["_end_sync"] = physicsserver3dextension_uend_sync[T]
    }
    $if T is IPhysicsServer3DExtensionFinish {
        ci.virtual_methods["_finish"] = physicsserver3dextension_ufinish[T]
    }
    $if T is IPhysicsServer3DExtensionIsFlushingQueries {
        ci.virtual_methods["_is_flushing_queries"] = physicsserver3dextension_uis_flushing_queries[T]
    }
    $if T is IPhysicsServer3DExtensionGetProcessInfo {
        ci.virtual_methods["_get_process_info"] = physicsserver3dextension_uget_process_info[T]
    }
    $if T is IPhysicsServer3DRenderingServerHandlerSetVertex {
        ci.virtual_methods["_set_vertex"] = physicsserver3drenderingserverhandler_uset_vertex[T]
    }
    $if T is IPhysicsServer3DRenderingServerHandlerSetNormal {
        ci.virtual_methods["_set_normal"] = physicsserver3drenderingserverhandler_uset_normal[T]
    }
    $if T is IPhysicsServer3DRenderingServerHandlerSetAabb {
        ci.virtual_methods["_set_aabb"] = physicsserver3drenderingserverhandler_uset_aabb[T]
    }
    $if T is IPrimitiveMeshCreateMeshArray {
        ci.virtual_methods["_create_mesh_array"] = primitivemesh_ucreate_mesh_array[T]
    }
    $if T is IRangeValueChanged {
        ci.virtual_methods["_value_changed"] = range_uvalue_changed[T]
    }
    $if T is IRenderSceneBuffersExtensionConfigure {
        ci.virtual_methods["_configure"] = renderscenebuffersextension_uconfigure[T]
    }
    $if T is IRenderSceneBuffersExtensionSetFsrSharpness {
        ci.virtual_methods["_set_fsr_sharpness"] = renderscenebuffersextension_uset_fsr_sharpness[T]
    }
    $if T is IRenderSceneBuffersExtensionSetTextureMipmapBias {
        ci.virtual_methods["_set_texture_mipmap_bias"] = renderscenebuffersextension_uset_texture_mipmap_bias[T]
    }
    $if T is IRenderSceneBuffersExtensionSetUseDebanding {
        ci.virtual_methods["_set_use_debanding"] = renderscenebuffersextension_uset_use_debanding[T]
    }
    $if T is IResourceSetupLocalToScene {
        ci.virtual_methods["_setup_local_to_scene"] = resource_usetup_local_to_scene[T]
    }
    $if T is IResourceFormatLoaderGetRecognizedExtensions {
        ci.virtual_methods["_get_recognized_extensions"] = resourceformatloader_uget_recognized_extensions[T]
    }
    $if T is IResourceFormatLoaderRecognizePath {
        ci.virtual_methods["_recognize_path"] = resourceformatloader_urecognize_path[T]
    }
    $if T is IResourceFormatLoaderHandlesType {
        ci.virtual_methods["_handles_type"] = resourceformatloader_uhandles_type[T]
    }
    $if T is IResourceFormatLoaderGetResourceType {
        ci.virtual_methods["_get_resource_type"] = resourceformatloader_uget_resource_type[T]
    }
    $if T is IResourceFormatLoaderGetResourceScriptClass {
        ci.virtual_methods["_get_resource_script_class"] = resourceformatloader_uget_resource_script_class[T]
    }
    $if T is IResourceFormatLoaderGetResourceUid {
        ci.virtual_methods["_get_resource_uid"] = resourceformatloader_uget_resource_uid[T]
    }
    $if T is IResourceFormatLoaderGetDependencies {
        ci.virtual_methods["_get_dependencies"] = resourceformatloader_uget_dependencies[T]
    }
    $if T is IResourceFormatLoaderRenameDependencies {
        ci.virtual_methods["_rename_dependencies"] = resourceformatloader_urename_dependencies[T]
    }
    $if T is IResourceFormatLoaderExists {
        ci.virtual_methods["_exists"] = resourceformatloader_uexists[T]
    }
    $if T is IResourceFormatLoaderGetClassesUsed {
        ci.virtual_methods["_get_classes_used"] = resourceformatloader_uget_classes_used[T]
    }
    $if T is IResourceFormatLoaderLoad {
        ci.virtual_methods["_load"] = resourceformatloader_uload[T]
    }
    $if T is IResourceFormatSaverSave {
        ci.virtual_methods["_save"] = resourceformatsaver_usave[T]
    }
    $if T is IResourceFormatSaverSetUid {
        ci.virtual_methods["_set_uid"] = resourceformatsaver_uset_uid[T]
    }
    $if T is IResourceFormatSaverRecognize {
        ci.virtual_methods["_recognize"] = resourceformatsaver_urecognize[T]
    }
    $if T is IResourceFormatSaverGetRecognizedExtensions {
        ci.virtual_methods["_get_recognized_extensions"] = resourceformatsaver_uget_recognized_extensions[T]
    }
    $if T is IResourceFormatSaverRecognizePath {
        ci.virtual_methods["_recognize_path"] = resourceformatsaver_urecognize_path[T]
    }
    $if T is IRichTextEffectProcessCustomFx {
        ci.virtual_methods["_process_custom_fx"] = richtexteffect_uprocess_custom_fx[T]
    }
    $if T is IRigidBody2DIntegrateForces {
        ci.virtual_methods["_integrate_forces"] = rigidbody2d_uintegrate_forces[T]
    }
    $if T is IRigidBody3DIntegrateForces {
        ci.virtual_methods["_integrate_forces"] = rigidbody3d_uintegrate_forces[T]
    }
    $if T is IScriptExtensionEditorCanReloadFromFile {
        ci.virtual_methods["_editor_can_reload_from_file"] = scriptextension_ueditor_can_reload_from_file[T]
    }
    $if T is IScriptExtensionPlaceholderErased {
        ci.virtual_methods["_placeholder_erased"] = scriptextension_uplaceholder_erased[T]
    }
    $if T is IScriptExtensionCanInstantiate {
        ci.virtual_methods["_can_instantiate"] = scriptextension_ucan_instantiate[T]
    }
    $if T is IScriptExtensionGetBaseScript {
        ci.virtual_methods["_get_base_script"] = scriptextension_uget_base_script[T]
    }
    $if T is IScriptExtensionGetGlobalName {
        ci.virtual_methods["_get_global_name"] = scriptextension_uget_global_name[T]
    }
    $if T is IScriptExtensionInheritsScript {
        ci.virtual_methods["_inherits_script"] = scriptextension_uinherits_script[T]
    }
    $if T is IScriptExtensionGetInstanceBaseType {
        ci.virtual_methods["_get_instance_base_type"] = scriptextension_uget_instance_base_type[T]
    }
    $if T is IScriptExtensionInstanceCreate {
        ci.virtual_methods["_instance_create"] = scriptextension_uinstance_create[T]
    }
    $if T is IScriptExtensionPlaceholderInstanceCreate {
        ci.virtual_methods["_placeholder_instance_create"] = scriptextension_uplaceholder_instance_create[T]
    }
    $if T is IScriptExtensionInstanceHas {
        ci.virtual_methods["_instance_has"] = scriptextension_uinstance_has[T]
    }
    $if T is IScriptExtensionHasSourceCode {
        ci.virtual_methods["_has_source_code"] = scriptextension_uhas_source_code[T]
    }
    $if T is IScriptExtensionGetSourceCode {
        ci.virtual_methods["_get_source_code"] = scriptextension_uget_source_code[T]
    }
    $if T is IScriptExtensionSetSourceCode {
        ci.virtual_methods["_set_source_code"] = scriptextension_uset_source_code[T]
    }
    $if T is IScriptExtensionReload {
        ci.virtual_methods["_reload"] = scriptextension_ureload[T]
    }
    $if T is IScriptExtensionGetDocumentation {
        ci.virtual_methods["_get_documentation"] = scriptextension_uget_documentation[T]
    }
    $if T is IScriptExtensionGetClassIconPath {
        ci.virtual_methods["_get_class_icon_path"] = scriptextension_uget_class_icon_path[T]
    }
    $if T is IScriptExtensionHasMethod {
        ci.virtual_methods["_has_method"] = scriptextension_uhas_method[T]
    }
    $if T is IScriptExtensionHasStaticMethod {
        ci.virtual_methods["_has_static_method"] = scriptextension_uhas_static_method[T]
    }
    $if T is IScriptExtensionGetMethodInfo {
        ci.virtual_methods["_get_method_info"] = scriptextension_uget_method_info[T]
    }
    $if T is IScriptExtensionIsTool {
        ci.virtual_methods["_is_tool"] = scriptextension_uis_tool[T]
    }
    $if T is IScriptExtensionIsValid {
        ci.virtual_methods["_is_valid"] = scriptextension_uis_valid[T]
    }
    $if T is IScriptExtensionIsAbstract {
        ci.virtual_methods["_is_abstract"] = scriptextension_uis_abstract[T]
    }
    $if T is IScriptExtensionGetLanguage {
        ci.virtual_methods["_get_language"] = scriptextension_uget_language[T]
    }
    $if T is IScriptExtensionHasScriptSignal {
        ci.virtual_methods["_has_script_signal"] = scriptextension_uhas_script_signal[T]
    }
    $if T is IScriptExtensionGetScriptSignalList {
        ci.virtual_methods["_get_script_signal_list"] = scriptextension_uget_script_signal_list[T]
    }
    $if T is IScriptExtensionHasPropertyDefaultValue {
        ci.virtual_methods["_has_property_default_value"] = scriptextension_uhas_property_default_value[T]
    }
    $if T is IScriptExtensionGetPropertyDefaultValue {
        ci.virtual_methods["_get_property_default_value"] = scriptextension_uget_property_default_value[T]
    }
    $if T is IScriptExtensionUpdateExports {
        ci.virtual_methods["_update_exports"] = scriptextension_uupdate_exports[T]
    }
    $if T is IScriptExtensionGetScriptMethodList {
        ci.virtual_methods["_get_script_method_list"] = scriptextension_uget_script_method_list[T]
    }
    $if T is IScriptExtensionGetScriptPropertyList {
        ci.virtual_methods["_get_script_property_list"] = scriptextension_uget_script_property_list[T]
    }
    $if T is IScriptExtensionGetMemberLine {
        ci.virtual_methods["_get_member_line"] = scriptextension_uget_member_line[T]
    }
    $if T is IScriptExtensionGetConstants {
        ci.virtual_methods["_get_constants"] = scriptextension_uget_constants[T]
    }
    $if T is IScriptExtensionGetMembers {
        ci.virtual_methods["_get_members"] = scriptextension_uget_members[T]
    }
    $if T is IScriptExtensionIsPlaceholderFallbackEnabled {
        ci.virtual_methods["_is_placeholder_fallback_enabled"] = scriptextension_uis_placeholder_fallback_enabled[T]
    }
    $if T is IScriptExtensionGetRpcConfig {
        ci.virtual_methods["_get_rpc_config"] = scriptextension_uget_rpc_config[T]
    }
    $if T is IScriptLanguageExtensionGetName {
        ci.virtual_methods["_get_name"] = scriptlanguageextension_uget_name[T]
    }
    $if T is IScriptLanguageExtensionInit {
        ci.virtual_methods["_init"] = scriptlanguageextension_uinit[T]
    }
    $if T is IScriptLanguageExtensionGetType {
        ci.virtual_methods["_get_type"] = scriptlanguageextension_uget_type[T]
    }
    $if T is IScriptLanguageExtensionGetExtension {
        ci.virtual_methods["_get_extension"] = scriptlanguageextension_uget_extension[T]
    }
    $if T is IScriptLanguageExtensionFinish {
        ci.virtual_methods["_finish"] = scriptlanguageextension_ufinish[T]
    }
    $if T is IScriptLanguageExtensionGetReservedWords {
        ci.virtual_methods["_get_reserved_words"] = scriptlanguageextension_uget_reserved_words[T]
    }
    $if T is IScriptLanguageExtensionIsControlFlowKeyword {
        ci.virtual_methods["_is_control_flow_keyword"] = scriptlanguageextension_uis_control_flow_keyword[T]
    }
    $if T is IScriptLanguageExtensionGetCommentDelimiters {
        ci.virtual_methods["_get_comment_delimiters"] = scriptlanguageextension_uget_comment_delimiters[T]
    }
    $if T is IScriptLanguageExtensionGetDocCommentDelimiters {
        ci.virtual_methods["_get_doc_comment_delimiters"] = scriptlanguageextension_uget_doc_comment_delimiters[T]
    }
    $if T is IScriptLanguageExtensionGetStringDelimiters {
        ci.virtual_methods["_get_string_delimiters"] = scriptlanguageextension_uget_string_delimiters[T]
    }
    $if T is IScriptLanguageExtensionMakeTemplate {
        ci.virtual_methods["_make_template"] = scriptlanguageextension_umake_template[T]
    }
    $if T is IScriptLanguageExtensionGetBuiltInTemplates {
        ci.virtual_methods["_get_built_in_templates"] = scriptlanguageextension_uget_built_in_templates[T]
    }
    $if T is IScriptLanguageExtensionIsUsingTemplates {
        ci.virtual_methods["_is_using_templates"] = scriptlanguageextension_uis_using_templates[T]
    }
    $if T is IScriptLanguageExtensionValidate {
        ci.virtual_methods["_validate"] = scriptlanguageextension_uvalidate[T]
    }
    $if T is IScriptLanguageExtensionValidatePath {
        ci.virtual_methods["_validate_path"] = scriptlanguageextension_uvalidate_path[T]
    }
    $if T is IScriptLanguageExtensionCreateScript {
        ci.virtual_methods["_create_script"] = scriptlanguageextension_ucreate_script[T]
    }
    $if T is IScriptLanguageExtensionHasNamedClasses {
        ci.virtual_methods["_has_named_classes"] = scriptlanguageextension_uhas_named_classes[T]
    }
    $if T is IScriptLanguageExtensionSupportsBuiltinMode {
        ci.virtual_methods["_supports_builtin_mode"] = scriptlanguageextension_usupports_builtin_mode[T]
    }
    $if T is IScriptLanguageExtensionSupportsDocumentation {
        ci.virtual_methods["_supports_documentation"] = scriptlanguageextension_usupports_documentation[T]
    }
    $if T is IScriptLanguageExtensionCanInheritFromFile {
        ci.virtual_methods["_can_inherit_from_file"] = scriptlanguageextension_ucan_inherit_from_file[T]
    }
    $if T is IScriptLanguageExtensionFindFunction {
        ci.virtual_methods["_find_function"] = scriptlanguageextension_ufind_function[T]
    }
    $if T is IScriptLanguageExtensionMakeFunction {
        ci.virtual_methods["_make_function"] = scriptlanguageextension_umake_function[T]
    }
    $if T is IScriptLanguageExtensionOpenInExternalEditor {
        ci.virtual_methods["_open_in_external_editor"] = scriptlanguageextension_uopen_in_external_editor[T]
    }
    $if T is IScriptLanguageExtensionOverridesExternalEditor {
        ci.virtual_methods["_overrides_external_editor"] = scriptlanguageextension_uoverrides_external_editor[T]
    }
    $if T is IScriptLanguageExtensionCompleteCode {
        ci.virtual_methods["_complete_code"] = scriptlanguageextension_ucomplete_code[T]
    }
    $if T is IScriptLanguageExtensionLookupCode {
        ci.virtual_methods["_lookup_code"] = scriptlanguageextension_ulookup_code[T]
    }
    $if T is IScriptLanguageExtensionAutoIndentCode {
        ci.virtual_methods["_auto_indent_code"] = scriptlanguageextension_uauto_indent_code[T]
    }
    $if T is IScriptLanguageExtensionAddGlobalConstant {
        ci.virtual_methods["_add_global_constant"] = scriptlanguageextension_uadd_global_constant[T]
    }
    $if T is IScriptLanguageExtensionAddNamedGlobalConstant {
        ci.virtual_methods["_add_named_global_constant"] = scriptlanguageextension_uadd_named_global_constant[T]
    }
    $if T is IScriptLanguageExtensionRemoveNamedGlobalConstant {
        ci.virtual_methods["_remove_named_global_constant"] = scriptlanguageextension_uremove_named_global_constant[T]
    }
    $if T is IScriptLanguageExtensionThreadEnter {
        ci.virtual_methods["_thread_enter"] = scriptlanguageextension_uthread_enter[T]
    }
    $if T is IScriptLanguageExtensionThreadExit {
        ci.virtual_methods["_thread_exit"] = scriptlanguageextension_uthread_exit[T]
    }
    $if T is IScriptLanguageExtensionDebugGetError {
        ci.virtual_methods["_debug_get_error"] = scriptlanguageextension_udebug_get_error[T]
    }
    $if T is IScriptLanguageExtensionDebugGetStackLevelCount {
        ci.virtual_methods["_debug_get_stack_level_count"] = scriptlanguageextension_udebug_get_stack_level_count[T]
    }
    $if T is IScriptLanguageExtensionDebugGetStackLevelLine {
        ci.virtual_methods["_debug_get_stack_level_line"] = scriptlanguageextension_udebug_get_stack_level_line[T]
    }
    $if T is IScriptLanguageExtensionDebugGetStackLevelFunction {
        ci.virtual_methods["_debug_get_stack_level_function"] = scriptlanguageextension_udebug_get_stack_level_function[T]
    }
    $if T is IScriptLanguageExtensionDebugGetStackLevelLocals {
        ci.virtual_methods["_debug_get_stack_level_locals"] = scriptlanguageextension_udebug_get_stack_level_locals[T]
    }
    $if T is IScriptLanguageExtensionDebugGetStackLevelMembers {
        ci.virtual_methods["_debug_get_stack_level_members"] = scriptlanguageextension_udebug_get_stack_level_members[T]
    }
    $if T is IScriptLanguageExtensionDebugGetStackLevelInstance {
        ci.virtual_methods["_debug_get_stack_level_instance"] = scriptlanguageextension_udebug_get_stack_level_instance[T]
    }
    $if T is IScriptLanguageExtensionDebugGetGlobals {
        ci.virtual_methods["_debug_get_globals"] = scriptlanguageextension_udebug_get_globals[T]
    }
    $if T is IScriptLanguageExtensionDebugParseStackLevelExpression {
        ci.virtual_methods["_debug_parse_stack_level_expression"] = scriptlanguageextension_udebug_parse_stack_level_expression[T]
    }
    $if T is IScriptLanguageExtensionDebugGetCurrentStackInfo {
        ci.virtual_methods["_debug_get_current_stack_info"] = scriptlanguageextension_udebug_get_current_stack_info[T]
    }
    $if T is IScriptLanguageExtensionReloadAllScripts {
        ci.virtual_methods["_reload_all_scripts"] = scriptlanguageextension_ureload_all_scripts[T]
    }
    $if T is IScriptLanguageExtensionReloadToolScript {
        ci.virtual_methods["_reload_tool_script"] = scriptlanguageextension_ureload_tool_script[T]
    }
    $if T is IScriptLanguageExtensionGetRecognizedExtensions {
        ci.virtual_methods["_get_recognized_extensions"] = scriptlanguageextension_uget_recognized_extensions[T]
    }
    $if T is IScriptLanguageExtensionGetPublicFunctions {
        ci.virtual_methods["_get_public_functions"] = scriptlanguageextension_uget_public_functions[T]
    }
    $if T is IScriptLanguageExtensionGetPublicConstants {
        ci.virtual_methods["_get_public_constants"] = scriptlanguageextension_uget_public_constants[T]
    }
    $if T is IScriptLanguageExtensionGetPublicAnnotations {
        ci.virtual_methods["_get_public_annotations"] = scriptlanguageextension_uget_public_annotations[T]
    }
    $if T is IScriptLanguageExtensionProfilingStart {
        ci.virtual_methods["_profiling_start"] = scriptlanguageextension_uprofiling_start[T]
    }
    $if T is IScriptLanguageExtensionProfilingStop {
        ci.virtual_methods["_profiling_stop"] = scriptlanguageextension_uprofiling_stop[T]
    }
    $if T is IScriptLanguageExtensionProfilingGetAccumulatedData {
        ci.virtual_methods["_profiling_get_accumulated_data"] = scriptlanguageextension_uprofiling_get_accumulated_data[T]
    }
    $if T is IScriptLanguageExtensionProfilingGetFrameData {
        ci.virtual_methods["_profiling_get_frame_data"] = scriptlanguageextension_uprofiling_get_frame_data[T]
    }
    $if T is IScriptLanguageExtensionFrame {
        ci.virtual_methods["_frame"] = scriptlanguageextension_uframe[T]
    }
    $if T is IScriptLanguageExtensionHandlesGlobalClassType {
        ci.virtual_methods["_handles_global_class_type"] = scriptlanguageextension_uhandles_global_class_type[T]
    }
    $if T is IScriptLanguageExtensionGetGlobalClassName {
        ci.virtual_methods["_get_global_class_name"] = scriptlanguageextension_uget_global_class_name[T]
    }
    $if T is ISkeletonModification2DExecute {
        ci.virtual_methods["_execute"] = skeletonmodification2d_uexecute[T]
    }
    $if T is ISkeletonModification2DSetupModification {
        ci.virtual_methods["_setup_modification"] = skeletonmodification2d_usetup_modification[T]
    }
    $if T is ISkeletonModification2DDrawEditorGizmo {
        ci.virtual_methods["_draw_editor_gizmo"] = skeletonmodification2d_udraw_editor_gizmo[T]
    }
    $if T is IStreamPeerExtensionGetData {
        ci.virtual_methods["_get_data"] = streampeerextension_uget_data[T]
    }
    $if T is IStreamPeerExtensionGetPartialData {
        ci.virtual_methods["_get_partial_data"] = streampeerextension_uget_partial_data[T]
    }
    $if T is IStreamPeerExtensionPutData {
        ci.virtual_methods["_put_data"] = streampeerextension_uput_data[T]
    }
    $if T is IStreamPeerExtensionPutPartialData {
        ci.virtual_methods["_put_partial_data"] = streampeerextension_uput_partial_data[T]
    }
    $if T is IStreamPeerExtensionGetAvailableBytes {
        ci.virtual_methods["_get_available_bytes"] = streampeerextension_uget_available_bytes[T]
    }
    $if T is IStyleBoxDraw {
        ci.virtual_methods["_draw"] = stylebox_udraw[T]
    }
    $if T is IStyleBoxGetDrawRect {
        ci.virtual_methods["_get_draw_rect"] = stylebox_uget_draw_rect[T]
    }
    $if T is IStyleBoxGetMinimumSize {
        ci.virtual_methods["_get_minimum_size"] = stylebox_uget_minimum_size[T]
    }
    $if T is IStyleBoxTestMask {
        ci.virtual_methods["_test_mask"] = stylebox_utest_mask[T]
    }
    $if T is ISubViewportContainerPropagateInputEvent {
        ci.virtual_methods["_propagate_input_event"] = subviewportcontainer_upropagate_input_event[T]
    }
    $if T is ISyntaxHighlighterGetLineSyntaxHighlighting {
        ci.virtual_methods["_get_line_syntax_highlighting"] = syntaxhighlighter_uget_line_syntax_highlighting[T]
    }
    $if T is ISyntaxHighlighterClearHighlightingCache {
        ci.virtual_methods["_clear_highlighting_cache"] = syntaxhighlighter_uclear_highlighting_cache[T]
    }
    $if T is ISyntaxHighlighterUpdateCache {
        ci.virtual_methods["_update_cache"] = syntaxhighlighter_uupdate_cache[T]
    }
    $if T is ITextEditHandleUnicodeInput {
        ci.virtual_methods["_handle_unicode_input"] = textedit_uhandle_unicode_input[T]
    }
    $if T is ITextEditBackspace {
        ci.virtual_methods["_backspace"] = textedit_ubackspace[T]
    }
    $if T is ITextEditCut {
        ci.virtual_methods["_cut"] = textedit_ucut[T]
    }
    $if T is ITextEditCopy {
        ci.virtual_methods["_copy"] = textedit_ucopy[T]
    }
    $if T is ITextEditPaste {
        ci.virtual_methods["_paste"] = textedit_upaste[T]
    }
    $if T is ITextEditPastePrimaryClipboard {
        ci.virtual_methods["_paste_primary_clipboard"] = textedit_upaste_primary_clipboard[T]
    }
    $if T is ITextServerExtensionHasFeature {
        ci.virtual_methods["_has_feature"] = textserverextension_uhas_feature[T]
    }
    $if T is ITextServerExtensionGetName {
        ci.virtual_methods["_get_name"] = textserverextension_uget_name[T]
    }
    $if T is ITextServerExtensionGetFeatures {
        ci.virtual_methods["_get_features"] = textserverextension_uget_features[T]
    }
    $if T is ITextServerExtensionFreeRid {
        ci.virtual_methods["_free_rid"] = textserverextension_ufree_rid[T]
    }
    $if T is ITextServerExtensionHas {
        ci.virtual_methods["_has"] = textserverextension_uhas[T]
    }
    $if T is ITextServerExtensionLoadSupportData {
        ci.virtual_methods["_load_support_data"] = textserverextension_uload_support_data[T]
    }
    $if T is ITextServerExtensionGetSupportDataFilename {
        ci.virtual_methods["_get_support_data_filename"] = textserverextension_uget_support_data_filename[T]
    }
    $if T is ITextServerExtensionGetSupportDataInfo {
        ci.virtual_methods["_get_support_data_info"] = textserverextension_uget_support_data_info[T]
    }
    $if T is ITextServerExtensionSaveSupportData {
        ci.virtual_methods["_save_support_data"] = textserverextension_usave_support_data[T]
    }
    $if T is ITextServerExtensionIsLocaleRightToLeft {
        ci.virtual_methods["_is_locale_right_to_left"] = textserverextension_uis_locale_right_to_left[T]
    }
    $if T is ITextServerExtensionNameToTag {
        ci.virtual_methods["_name_to_tag"] = textserverextension_uname_to_tag[T]
    }
    $if T is ITextServerExtensionTagToName {
        ci.virtual_methods["_tag_to_name"] = textserverextension_utag_to_name[T]
    }
    $if T is ITextServerExtensionCreateFont {
        ci.virtual_methods["_create_font"] = textserverextension_ucreate_font[T]
    }
    $if T is ITextServerExtensionCreateFontLinkedVariation {
        ci.virtual_methods["_create_font_linked_variation"] = textserverextension_ucreate_font_linked_variation[T]
    }
    $if T is ITextServerExtensionFontSetData {
        ci.virtual_methods["_font_set_data"] = textserverextension_ufont_set_data[T]
    }
    $if T is ITextServerExtensionFontSetDataPtr {
        ci.virtual_methods["_font_set_data_ptr"] = textserverextension_ufont_set_data_ptr[T]
    }
    $if T is ITextServerExtensionFontSetFaceIndex {
        ci.virtual_methods["_font_set_face_index"] = textserverextension_ufont_set_face_index[T]
    }
    $if T is ITextServerExtensionFontGetFaceIndex {
        ci.virtual_methods["_font_get_face_index"] = textserverextension_ufont_get_face_index[T]
    }
    $if T is ITextServerExtensionFontGetFaceCount {
        ci.virtual_methods["_font_get_face_count"] = textserverextension_ufont_get_face_count[T]
    }
    $if T is ITextServerExtensionFontSetStyle {
        ci.virtual_methods["_font_set_style"] = textserverextension_ufont_set_style[T]
    }
    $if T is ITextServerExtensionFontGetStyle {
        ci.virtual_methods["_font_get_style"] = textserverextension_ufont_get_style[T]
    }
    $if T is ITextServerExtensionFontSetName {
        ci.virtual_methods["_font_set_name"] = textserverextension_ufont_set_name[T]
    }
    $if T is ITextServerExtensionFontGetName {
        ci.virtual_methods["_font_get_name"] = textserverextension_ufont_get_name[T]
    }
    $if T is ITextServerExtensionFontGetOtNameStrings {
        ci.virtual_methods["_font_get_ot_name_strings"] = textserverextension_ufont_get_ot_name_strings[T]
    }
    $if T is ITextServerExtensionFontSetStyleName {
        ci.virtual_methods["_font_set_style_name"] = textserverextension_ufont_set_style_name[T]
    }
    $if T is ITextServerExtensionFontGetStyleName {
        ci.virtual_methods["_font_get_style_name"] = textserverextension_ufont_get_style_name[T]
    }
    $if T is ITextServerExtensionFontSetWeight {
        ci.virtual_methods["_font_set_weight"] = textserverextension_ufont_set_weight[T]
    }
    $if T is ITextServerExtensionFontGetWeight {
        ci.virtual_methods["_font_get_weight"] = textserverextension_ufont_get_weight[T]
    }
    $if T is ITextServerExtensionFontSetStretch {
        ci.virtual_methods["_font_set_stretch"] = textserverextension_ufont_set_stretch[T]
    }
    $if T is ITextServerExtensionFontGetStretch {
        ci.virtual_methods["_font_get_stretch"] = textserverextension_ufont_get_stretch[T]
    }
    $if T is ITextServerExtensionFontSetAntialiasing {
        ci.virtual_methods["_font_set_antialiasing"] = textserverextension_ufont_set_antialiasing[T]
    }
    $if T is ITextServerExtensionFontGetAntialiasing {
        ci.virtual_methods["_font_get_antialiasing"] = textserverextension_ufont_get_antialiasing[T]
    }
    $if T is ITextServerExtensionFontSetGenerateMipmaps {
        ci.virtual_methods["_font_set_generate_mipmaps"] = textserverextension_ufont_set_generate_mipmaps[T]
    }
    $if T is ITextServerExtensionFontGetGenerateMipmaps {
        ci.virtual_methods["_font_get_generate_mipmaps"] = textserverextension_ufont_get_generate_mipmaps[T]
    }
    $if T is ITextServerExtensionFontSetMultichannelSignedDistanceField {
        ci.virtual_methods["_font_set_multichannel_signed_distance_field"] = textserverextension_ufont_set_multichannel_signed_distance_field[T]
    }
    $if T is ITextServerExtensionFontIsMultichannelSignedDistanceField {
        ci.virtual_methods["_font_is_multichannel_signed_distance_field"] = textserverextension_ufont_is_multichannel_signed_distance_field[T]
    }
    $if T is ITextServerExtensionFontSetMsdfPixelRange {
        ci.virtual_methods["_font_set_msdf_pixel_range"] = textserverextension_ufont_set_msdf_pixel_range[T]
    }
    $if T is ITextServerExtensionFontGetMsdfPixelRange {
        ci.virtual_methods["_font_get_msdf_pixel_range"] = textserverextension_ufont_get_msdf_pixel_range[T]
    }
    $if T is ITextServerExtensionFontSetMsdfSize {
        ci.virtual_methods["_font_set_msdf_size"] = textserverextension_ufont_set_msdf_size[T]
    }
    $if T is ITextServerExtensionFontGetMsdfSize {
        ci.virtual_methods["_font_get_msdf_size"] = textserverextension_ufont_get_msdf_size[T]
    }
    $if T is ITextServerExtensionFontSetFixedSize {
        ci.virtual_methods["_font_set_fixed_size"] = textserverextension_ufont_set_fixed_size[T]
    }
    $if T is ITextServerExtensionFontGetFixedSize {
        ci.virtual_methods["_font_get_fixed_size"] = textserverextension_ufont_get_fixed_size[T]
    }
    $if T is ITextServerExtensionFontSetFixedSizeScaleMode {
        ci.virtual_methods["_font_set_fixed_size_scale_mode"] = textserverextension_ufont_set_fixed_size_scale_mode[T]
    }
    $if T is ITextServerExtensionFontGetFixedSizeScaleMode {
        ci.virtual_methods["_font_get_fixed_size_scale_mode"] = textserverextension_ufont_get_fixed_size_scale_mode[T]
    }
    $if T is ITextServerExtensionFontSetAllowSystemFallback {
        ci.virtual_methods["_font_set_allow_system_fallback"] = textserverextension_ufont_set_allow_system_fallback[T]
    }
    $if T is ITextServerExtensionFontIsAllowSystemFallback {
        ci.virtual_methods["_font_is_allow_system_fallback"] = textserverextension_ufont_is_allow_system_fallback[T]
    }
    $if T is ITextServerExtensionFontSetForceAutohinter {
        ci.virtual_methods["_font_set_force_autohinter"] = textserverextension_ufont_set_force_autohinter[T]
    }
    $if T is ITextServerExtensionFontIsForceAutohinter {
        ci.virtual_methods["_font_is_force_autohinter"] = textserverextension_ufont_is_force_autohinter[T]
    }
    $if T is ITextServerExtensionFontSetHinting {
        ci.virtual_methods["_font_set_hinting"] = textserverextension_ufont_set_hinting[T]
    }
    $if T is ITextServerExtensionFontGetHinting {
        ci.virtual_methods["_font_get_hinting"] = textserverextension_ufont_get_hinting[T]
    }
    $if T is ITextServerExtensionFontSetSubpixelPositioning {
        ci.virtual_methods["_font_set_subpixel_positioning"] = textserverextension_ufont_set_subpixel_positioning[T]
    }
    $if T is ITextServerExtensionFontGetSubpixelPositioning {
        ci.virtual_methods["_font_get_subpixel_positioning"] = textserverextension_ufont_get_subpixel_positioning[T]
    }
    $if T is ITextServerExtensionFontSetEmbolden {
        ci.virtual_methods["_font_set_embolden"] = textserverextension_ufont_set_embolden[T]
    }
    $if T is ITextServerExtensionFontGetEmbolden {
        ci.virtual_methods["_font_get_embolden"] = textserverextension_ufont_get_embolden[T]
    }
    $if T is ITextServerExtensionFontSetSpacing {
        ci.virtual_methods["_font_set_spacing"] = textserverextension_ufont_set_spacing[T]
    }
    $if T is ITextServerExtensionFontGetSpacing {
        ci.virtual_methods["_font_get_spacing"] = textserverextension_ufont_get_spacing[T]
    }
    $if T is ITextServerExtensionFontSetTransform {
        ci.virtual_methods["_font_set_transform"] = textserverextension_ufont_set_transform[T]
    }
    $if T is ITextServerExtensionFontGetTransform {
        ci.virtual_methods["_font_get_transform"] = textserverextension_ufont_get_transform[T]
    }
    $if T is ITextServerExtensionFontSetVariationCoordinates {
        ci.virtual_methods["_font_set_variation_coordinates"] = textserverextension_ufont_set_variation_coordinates[T]
    }
    $if T is ITextServerExtensionFontGetVariationCoordinates {
        ci.virtual_methods["_font_get_variation_coordinates"] = textserverextension_ufont_get_variation_coordinates[T]
    }
    $if T is ITextServerExtensionFontSetOversampling {
        ci.virtual_methods["_font_set_oversampling"] = textserverextension_ufont_set_oversampling[T]
    }
    $if T is ITextServerExtensionFontGetOversampling {
        ci.virtual_methods["_font_get_oversampling"] = textserverextension_ufont_get_oversampling[T]
    }
    $if T is ITextServerExtensionFontGetSizeCacheList {
        ci.virtual_methods["_font_get_size_cache_list"] = textserverextension_ufont_get_size_cache_list[T]
    }
    $if T is ITextServerExtensionFontClearSizeCache {
        ci.virtual_methods["_font_clear_size_cache"] = textserverextension_ufont_clear_size_cache[T]
    }
    $if T is ITextServerExtensionFontRemoveSizeCache {
        ci.virtual_methods["_font_remove_size_cache"] = textserverextension_ufont_remove_size_cache[T]
    }
    $if T is ITextServerExtensionFontSetAscent {
        ci.virtual_methods["_font_set_ascent"] = textserverextension_ufont_set_ascent[T]
    }
    $if T is ITextServerExtensionFontGetAscent {
        ci.virtual_methods["_font_get_ascent"] = textserverextension_ufont_get_ascent[T]
    }
    $if T is ITextServerExtensionFontSetDescent {
        ci.virtual_methods["_font_set_descent"] = textserverextension_ufont_set_descent[T]
    }
    $if T is ITextServerExtensionFontGetDescent {
        ci.virtual_methods["_font_get_descent"] = textserverextension_ufont_get_descent[T]
    }
    $if T is ITextServerExtensionFontSetUnderlinePosition {
        ci.virtual_methods["_font_set_underline_position"] = textserverextension_ufont_set_underline_position[T]
    }
    $if T is ITextServerExtensionFontGetUnderlinePosition {
        ci.virtual_methods["_font_get_underline_position"] = textserverextension_ufont_get_underline_position[T]
    }
    $if T is ITextServerExtensionFontSetUnderlineThickness {
        ci.virtual_methods["_font_set_underline_thickness"] = textserverextension_ufont_set_underline_thickness[T]
    }
    $if T is ITextServerExtensionFontGetUnderlineThickness {
        ci.virtual_methods["_font_get_underline_thickness"] = textserverextension_ufont_get_underline_thickness[T]
    }
    $if T is ITextServerExtensionFontSetScale {
        ci.virtual_methods["_font_set_scale"] = textserverextension_ufont_set_scale[T]
    }
    $if T is ITextServerExtensionFontGetScale {
        ci.virtual_methods["_font_get_scale"] = textserverextension_ufont_get_scale[T]
    }
    $if T is ITextServerExtensionFontGetTextureCount {
        ci.virtual_methods["_font_get_texture_count"] = textserverextension_ufont_get_texture_count[T]
    }
    $if T is ITextServerExtensionFontClearTextures {
        ci.virtual_methods["_font_clear_textures"] = textserverextension_ufont_clear_textures[T]
    }
    $if T is ITextServerExtensionFontRemoveTexture {
        ci.virtual_methods["_font_remove_texture"] = textserverextension_ufont_remove_texture[T]
    }
    $if T is ITextServerExtensionFontSetTextureImage {
        ci.virtual_methods["_font_set_texture_image"] = textserverextension_ufont_set_texture_image[T]
    }
    $if T is ITextServerExtensionFontGetTextureImage {
        ci.virtual_methods["_font_get_texture_image"] = textserverextension_ufont_get_texture_image[T]
    }
    $if T is ITextServerExtensionFontSetTextureOffsets {
        ci.virtual_methods["_font_set_texture_offsets"] = textserverextension_ufont_set_texture_offsets[T]
    }
    $if T is ITextServerExtensionFontGetTextureOffsets {
        ci.virtual_methods["_font_get_texture_offsets"] = textserverextension_ufont_get_texture_offsets[T]
    }
    $if T is ITextServerExtensionFontGetGlyphList {
        ci.virtual_methods["_font_get_glyph_list"] = textserverextension_ufont_get_glyph_list[T]
    }
    $if T is ITextServerExtensionFontClearGlyphs {
        ci.virtual_methods["_font_clear_glyphs"] = textserverextension_ufont_clear_glyphs[T]
    }
    $if T is ITextServerExtensionFontRemoveGlyph {
        ci.virtual_methods["_font_remove_glyph"] = textserverextension_ufont_remove_glyph[T]
    }
    $if T is ITextServerExtensionFontGetGlyphAdvance {
        ci.virtual_methods["_font_get_glyph_advance"] = textserverextension_ufont_get_glyph_advance[T]
    }
    $if T is ITextServerExtensionFontSetGlyphAdvance {
        ci.virtual_methods["_font_set_glyph_advance"] = textserverextension_ufont_set_glyph_advance[T]
    }
    $if T is ITextServerExtensionFontGetGlyphOffset {
        ci.virtual_methods["_font_get_glyph_offset"] = textserverextension_ufont_get_glyph_offset[T]
    }
    $if T is ITextServerExtensionFontSetGlyphOffset {
        ci.virtual_methods["_font_set_glyph_offset"] = textserverextension_ufont_set_glyph_offset[T]
    }
    $if T is ITextServerExtensionFontGetGlyphSize {
        ci.virtual_methods["_font_get_glyph_size"] = textserverextension_ufont_get_glyph_size[T]
    }
    $if T is ITextServerExtensionFontSetGlyphSize {
        ci.virtual_methods["_font_set_glyph_size"] = textserverextension_ufont_set_glyph_size[T]
    }
    $if T is ITextServerExtensionFontGetGlyphUvRect {
        ci.virtual_methods["_font_get_glyph_uv_rect"] = textserverextension_ufont_get_glyph_uv_rect[T]
    }
    $if T is ITextServerExtensionFontSetGlyphUvRect {
        ci.virtual_methods["_font_set_glyph_uv_rect"] = textserverextension_ufont_set_glyph_uv_rect[T]
    }
    $if T is ITextServerExtensionFontGetGlyphTextureIdx {
        ci.virtual_methods["_font_get_glyph_texture_idx"] = textserverextension_ufont_get_glyph_texture_idx[T]
    }
    $if T is ITextServerExtensionFontSetGlyphTextureIdx {
        ci.virtual_methods["_font_set_glyph_texture_idx"] = textserverextension_ufont_set_glyph_texture_idx[T]
    }
    $if T is ITextServerExtensionFontGetGlyphTextureRid {
        ci.virtual_methods["_font_get_glyph_texture_rid"] = textserverextension_ufont_get_glyph_texture_rid[T]
    }
    $if T is ITextServerExtensionFontGetGlyphTextureSize {
        ci.virtual_methods["_font_get_glyph_texture_size"] = textserverextension_ufont_get_glyph_texture_size[T]
    }
    $if T is ITextServerExtensionFontGetGlyphContours {
        ci.virtual_methods["_font_get_glyph_contours"] = textserverextension_ufont_get_glyph_contours[T]
    }
    $if T is ITextServerExtensionFontGetKerningList {
        ci.virtual_methods["_font_get_kerning_list"] = textserverextension_ufont_get_kerning_list[T]
    }
    $if T is ITextServerExtensionFontClearKerningMap {
        ci.virtual_methods["_font_clear_kerning_map"] = textserverextension_ufont_clear_kerning_map[T]
    }
    $if T is ITextServerExtensionFontRemoveKerning {
        ci.virtual_methods["_font_remove_kerning"] = textserverextension_ufont_remove_kerning[T]
    }
    $if T is ITextServerExtensionFontSetKerning {
        ci.virtual_methods["_font_set_kerning"] = textserverextension_ufont_set_kerning[T]
    }
    $if T is ITextServerExtensionFontGetKerning {
        ci.virtual_methods["_font_get_kerning"] = textserverextension_ufont_get_kerning[T]
    }
    $if T is ITextServerExtensionFontGetGlyphIndex {
        ci.virtual_methods["_font_get_glyph_index"] = textserverextension_ufont_get_glyph_index[T]
    }
    $if T is ITextServerExtensionFontGetCharFromGlyphIndex {
        ci.virtual_methods["_font_get_char_from_glyph_index"] = textserverextension_ufont_get_char_from_glyph_index[T]
    }
    $if T is ITextServerExtensionFontHasChar {
        ci.virtual_methods["_font_has_char"] = textserverextension_ufont_has_char[T]
    }
    $if T is ITextServerExtensionFontGetSupportedChars {
        ci.virtual_methods["_font_get_supported_chars"] = textserverextension_ufont_get_supported_chars[T]
    }
    $if T is ITextServerExtensionFontRenderRange {
        ci.virtual_methods["_font_render_range"] = textserverextension_ufont_render_range[T]
    }
    $if T is ITextServerExtensionFontRenderGlyph {
        ci.virtual_methods["_font_render_glyph"] = textserverextension_ufont_render_glyph[T]
    }
    $if T is ITextServerExtensionFontDrawGlyph {
        ci.virtual_methods["_font_draw_glyph"] = textserverextension_ufont_draw_glyph[T]
    }
    $if T is ITextServerExtensionFontDrawGlyphOutline {
        ci.virtual_methods["_font_draw_glyph_outline"] = textserverextension_ufont_draw_glyph_outline[T]
    }
    $if T is ITextServerExtensionFontIsLanguageSupported {
        ci.virtual_methods["_font_is_language_supported"] = textserverextension_ufont_is_language_supported[T]
    }
    $if T is ITextServerExtensionFontSetLanguageSupportOverride {
        ci.virtual_methods["_font_set_language_support_override"] = textserverextension_ufont_set_language_support_override[T]
    }
    $if T is ITextServerExtensionFontGetLanguageSupportOverride {
        ci.virtual_methods["_font_get_language_support_override"] = textserverextension_ufont_get_language_support_override[T]
    }
    $if T is ITextServerExtensionFontRemoveLanguageSupportOverride {
        ci.virtual_methods["_font_remove_language_support_override"] = textserverextension_ufont_remove_language_support_override[T]
    }
    $if T is ITextServerExtensionFontGetLanguageSupportOverrides {
        ci.virtual_methods["_font_get_language_support_overrides"] = textserverextension_ufont_get_language_support_overrides[T]
    }
    $if T is ITextServerExtensionFontIsScriptSupported {
        ci.virtual_methods["_font_is_script_supported"] = textserverextension_ufont_is_script_supported[T]
    }
    $if T is ITextServerExtensionFontSetScriptSupportOverride {
        ci.virtual_methods["_font_set_script_support_override"] = textserverextension_ufont_set_script_support_override[T]
    }
    $if T is ITextServerExtensionFontGetScriptSupportOverride {
        ci.virtual_methods["_font_get_script_support_override"] = textserverextension_ufont_get_script_support_override[T]
    }
    $if T is ITextServerExtensionFontRemoveScriptSupportOverride {
        ci.virtual_methods["_font_remove_script_support_override"] = textserverextension_ufont_remove_script_support_override[T]
    }
    $if T is ITextServerExtensionFontGetScriptSupportOverrides {
        ci.virtual_methods["_font_get_script_support_overrides"] = textserverextension_ufont_get_script_support_overrides[T]
    }
    $if T is ITextServerExtensionFontSetOpentypeFeatureOverrides {
        ci.virtual_methods["_font_set_opentype_feature_overrides"] = textserverextension_ufont_set_opentype_feature_overrides[T]
    }
    $if T is ITextServerExtensionFontGetOpentypeFeatureOverrides {
        ci.virtual_methods["_font_get_opentype_feature_overrides"] = textserverextension_ufont_get_opentype_feature_overrides[T]
    }
    $if T is ITextServerExtensionFontSupportedFeatureList {
        ci.virtual_methods["_font_supported_feature_list"] = textserverextension_ufont_supported_feature_list[T]
    }
    $if T is ITextServerExtensionFontSupportedVariationList {
        ci.virtual_methods["_font_supported_variation_list"] = textserverextension_ufont_supported_variation_list[T]
    }
    $if T is ITextServerExtensionFontGetGlobalOversampling {
        ci.virtual_methods["_font_get_global_oversampling"] = textserverextension_ufont_get_global_oversampling[T]
    }
    $if T is ITextServerExtensionFontSetGlobalOversampling {
        ci.virtual_methods["_font_set_global_oversampling"] = textserverextension_ufont_set_global_oversampling[T]
    }
    $if T is ITextServerExtensionGetHexCodeBoxSize {
        ci.virtual_methods["_get_hex_code_box_size"] = textserverextension_uget_hex_code_box_size[T]
    }
    $if T is ITextServerExtensionDrawHexCodeBox {
        ci.virtual_methods["_draw_hex_code_box"] = textserverextension_udraw_hex_code_box[T]
    }
    $if T is ITextServerExtensionCreateShapedText {
        ci.virtual_methods["_create_shaped_text"] = textserverextension_ucreate_shaped_text[T]
    }
    $if T is ITextServerExtensionShapedTextClear {
        ci.virtual_methods["_shaped_text_clear"] = textserverextension_ushaped_text_clear[T]
    }
    $if T is ITextServerExtensionShapedTextSetDirection {
        ci.virtual_methods["_shaped_text_set_direction"] = textserverextension_ushaped_text_set_direction[T]
    }
    $if T is ITextServerExtensionShapedTextGetDirection {
        ci.virtual_methods["_shaped_text_get_direction"] = textserverextension_ushaped_text_get_direction[T]
    }
    $if T is ITextServerExtensionShapedTextGetInferredDirection {
        ci.virtual_methods["_shaped_text_get_inferred_direction"] = textserverextension_ushaped_text_get_inferred_direction[T]
    }
    $if T is ITextServerExtensionShapedTextSetBidiOverride {
        ci.virtual_methods["_shaped_text_set_bidi_override"] = textserverextension_ushaped_text_set_bidi_override[T]
    }
    $if T is ITextServerExtensionShapedTextSetCustomPunctuation {
        ci.virtual_methods["_shaped_text_set_custom_punctuation"] = textserverextension_ushaped_text_set_custom_punctuation[T]
    }
    $if T is ITextServerExtensionShapedTextGetCustomPunctuation {
        ci.virtual_methods["_shaped_text_get_custom_punctuation"] = textserverextension_ushaped_text_get_custom_punctuation[T]
    }
    $if T is ITextServerExtensionShapedTextSetOrientation {
        ci.virtual_methods["_shaped_text_set_orientation"] = textserverextension_ushaped_text_set_orientation[T]
    }
    $if T is ITextServerExtensionShapedTextGetOrientation {
        ci.virtual_methods["_shaped_text_get_orientation"] = textserverextension_ushaped_text_get_orientation[T]
    }
    $if T is ITextServerExtensionShapedTextSetPreserveInvalid {
        ci.virtual_methods["_shaped_text_set_preserve_invalid"] = textserverextension_ushaped_text_set_preserve_invalid[T]
    }
    $if T is ITextServerExtensionShapedTextGetPreserveInvalid {
        ci.virtual_methods["_shaped_text_get_preserve_invalid"] = textserverextension_ushaped_text_get_preserve_invalid[T]
    }
    $if T is ITextServerExtensionShapedTextSetPreserveControl {
        ci.virtual_methods["_shaped_text_set_preserve_control"] = textserverextension_ushaped_text_set_preserve_control[T]
    }
    $if T is ITextServerExtensionShapedTextGetPreserveControl {
        ci.virtual_methods["_shaped_text_get_preserve_control"] = textserverextension_ushaped_text_get_preserve_control[T]
    }
    $if T is ITextServerExtensionShapedTextSetSpacing {
        ci.virtual_methods["_shaped_text_set_spacing"] = textserverextension_ushaped_text_set_spacing[T]
    }
    $if T is ITextServerExtensionShapedTextGetSpacing {
        ci.virtual_methods["_shaped_text_get_spacing"] = textserverextension_ushaped_text_get_spacing[T]
    }
    $if T is ITextServerExtensionShapedTextAddString {
        ci.virtual_methods["_shaped_text_add_string"] = textserverextension_ushaped_text_add_string[T]
    }
    $if T is ITextServerExtensionShapedTextAddObject {
        ci.virtual_methods["_shaped_text_add_object"] = textserverextension_ushaped_text_add_object[T]
    }
    $if T is ITextServerExtensionShapedTextResizeObject {
        ci.virtual_methods["_shaped_text_resize_object"] = textserverextension_ushaped_text_resize_object[T]
    }
    $if T is ITextServerExtensionShapedGetSpanCount {
        ci.virtual_methods["_shaped_get_span_count"] = textserverextension_ushaped_get_span_count[T]
    }
    $if T is ITextServerExtensionShapedGetSpanMeta {
        ci.virtual_methods["_shaped_get_span_meta"] = textserverextension_ushaped_get_span_meta[T]
    }
    $if T is ITextServerExtensionShapedSetSpanUpdateFont {
        ci.virtual_methods["_shaped_set_span_update_font"] = textserverextension_ushaped_set_span_update_font[T]
    }
    $if T is ITextServerExtensionShapedTextSubstr {
        ci.virtual_methods["_shaped_text_substr"] = textserverextension_ushaped_text_substr[T]
    }
    $if T is ITextServerExtensionShapedTextGetParent {
        ci.virtual_methods["_shaped_text_get_parent"] = textserverextension_ushaped_text_get_parent[T]
    }
    $if T is ITextServerExtensionShapedTextFitToWidth {
        ci.virtual_methods["_shaped_text_fit_to_width"] = textserverextension_ushaped_text_fit_to_width[T]
    }
    $if T is ITextServerExtensionShapedTextTabAlign {
        ci.virtual_methods["_shaped_text_tab_align"] = textserverextension_ushaped_text_tab_align[T]
    }
    $if T is ITextServerExtensionShapedTextShape {
        ci.virtual_methods["_shaped_text_shape"] = textserverextension_ushaped_text_shape[T]
    }
    $if T is ITextServerExtensionShapedTextUpdateBreaks {
        ci.virtual_methods["_shaped_text_update_breaks"] = textserverextension_ushaped_text_update_breaks[T]
    }
    $if T is ITextServerExtensionShapedTextUpdateJustificationOps {
        ci.virtual_methods["_shaped_text_update_justification_ops"] = textserverextension_ushaped_text_update_justification_ops[T]
    }
    $if T is ITextServerExtensionShapedTextIsReady {
        ci.virtual_methods["_shaped_text_is_ready"] = textserverextension_ushaped_text_is_ready[T]
    }
    $if T is ITextServerExtensionShapedTextGetGlyphs {
        ci.virtual_methods["_shaped_text_get_glyphs"] = textserverextension_ushaped_text_get_glyphs[T]
    }
    $if T is ITextServerExtensionShapedTextSortLogical {
        ci.virtual_methods["_shaped_text_sort_logical"] = textserverextension_ushaped_text_sort_logical[T]
    }
    $if T is ITextServerExtensionShapedTextGetGlyphCount {
        ci.virtual_methods["_shaped_text_get_glyph_count"] = textserverextension_ushaped_text_get_glyph_count[T]
    }
    $if T is ITextServerExtensionShapedTextGetRange {
        ci.virtual_methods["_shaped_text_get_range"] = textserverextension_ushaped_text_get_range[T]
    }
    $if T is ITextServerExtensionShapedTextGetLineBreaksAdv {
        ci.virtual_methods["_shaped_text_get_line_breaks_adv"] = textserverextension_ushaped_text_get_line_breaks_adv[T]
    }
    $if T is ITextServerExtensionShapedTextGetLineBreaks {
        ci.virtual_methods["_shaped_text_get_line_breaks"] = textserverextension_ushaped_text_get_line_breaks[T]
    }
    $if T is ITextServerExtensionShapedTextGetWordBreaks {
        ci.virtual_methods["_shaped_text_get_word_breaks"] = textserverextension_ushaped_text_get_word_breaks[T]
    }
    $if T is ITextServerExtensionShapedTextGetTrimPos {
        ci.virtual_methods["_shaped_text_get_trim_pos"] = textserverextension_ushaped_text_get_trim_pos[T]
    }
    $if T is ITextServerExtensionShapedTextGetEllipsisPos {
        ci.virtual_methods["_shaped_text_get_ellipsis_pos"] = textserverextension_ushaped_text_get_ellipsis_pos[T]
    }
    $if T is ITextServerExtensionShapedTextGetEllipsisGlyphCount {
        ci.virtual_methods["_shaped_text_get_ellipsis_glyph_count"] = textserverextension_ushaped_text_get_ellipsis_glyph_count[T]
    }
    $if T is ITextServerExtensionShapedTextGetEllipsisGlyphs {
        ci.virtual_methods["_shaped_text_get_ellipsis_glyphs"] = textserverextension_ushaped_text_get_ellipsis_glyphs[T]
    }
    $if T is ITextServerExtensionShapedTextOverrunTrimToWidth {
        ci.virtual_methods["_shaped_text_overrun_trim_to_width"] = textserverextension_ushaped_text_overrun_trim_to_width[T]
    }
    $if T is ITextServerExtensionShapedTextGetObjects {
        ci.virtual_methods["_shaped_text_get_objects"] = textserverextension_ushaped_text_get_objects[T]
    }
    $if T is ITextServerExtensionShapedTextGetObjectRect {
        ci.virtual_methods["_shaped_text_get_object_rect"] = textserverextension_ushaped_text_get_object_rect[T]
    }
    $if T is ITextServerExtensionShapedTextGetSize {
        ci.virtual_methods["_shaped_text_get_size"] = textserverextension_ushaped_text_get_size[T]
    }
    $if T is ITextServerExtensionShapedTextGetAscent {
        ci.virtual_methods["_shaped_text_get_ascent"] = textserverextension_ushaped_text_get_ascent[T]
    }
    $if T is ITextServerExtensionShapedTextGetDescent {
        ci.virtual_methods["_shaped_text_get_descent"] = textserverextension_ushaped_text_get_descent[T]
    }
    $if T is ITextServerExtensionShapedTextGetWidth {
        ci.virtual_methods["_shaped_text_get_width"] = textserverextension_ushaped_text_get_width[T]
    }
    $if T is ITextServerExtensionShapedTextGetUnderlinePosition {
        ci.virtual_methods["_shaped_text_get_underline_position"] = textserverextension_ushaped_text_get_underline_position[T]
    }
    $if T is ITextServerExtensionShapedTextGetUnderlineThickness {
        ci.virtual_methods["_shaped_text_get_underline_thickness"] = textserverextension_ushaped_text_get_underline_thickness[T]
    }
    $if T is ITextServerExtensionShapedTextGetDominantDirectionInRange {
        ci.virtual_methods["_shaped_text_get_dominant_direction_in_range"] = textserverextension_ushaped_text_get_dominant_direction_in_range[T]
    }
    $if T is ITextServerExtensionShapedTextGetCarets {
        ci.virtual_methods["_shaped_text_get_carets"] = textserverextension_ushaped_text_get_carets[T]
    }
    $if T is ITextServerExtensionShapedTextGetSelection {
        ci.virtual_methods["_shaped_text_get_selection"] = textserverextension_ushaped_text_get_selection[T]
    }
    $if T is ITextServerExtensionShapedTextHitTestGrapheme {
        ci.virtual_methods["_shaped_text_hit_test_grapheme"] = textserverextension_ushaped_text_hit_test_grapheme[T]
    }
    $if T is ITextServerExtensionShapedTextHitTestPosition {
        ci.virtual_methods["_shaped_text_hit_test_position"] = textserverextension_ushaped_text_hit_test_position[T]
    }
    $if T is ITextServerExtensionShapedTextDraw {
        ci.virtual_methods["_shaped_text_draw"] = textserverextension_ushaped_text_draw[T]
    }
    $if T is ITextServerExtensionShapedTextDrawOutline {
        ci.virtual_methods["_shaped_text_draw_outline"] = textserverextension_ushaped_text_draw_outline[T]
    }
    $if T is ITextServerExtensionShapedTextGetGraphemeBounds {
        ci.virtual_methods["_shaped_text_get_grapheme_bounds"] = textserverextension_ushaped_text_get_grapheme_bounds[T]
    }
    $if T is ITextServerExtensionShapedTextNextGraphemePos {
        ci.virtual_methods["_shaped_text_next_grapheme_pos"] = textserverextension_ushaped_text_next_grapheme_pos[T]
    }
    $if T is ITextServerExtensionShapedTextPrevGraphemePos {
        ci.virtual_methods["_shaped_text_prev_grapheme_pos"] = textserverextension_ushaped_text_prev_grapheme_pos[T]
    }
    $if T is ITextServerExtensionShapedTextGetCharacterBreaks {
        ci.virtual_methods["_shaped_text_get_character_breaks"] = textserverextension_ushaped_text_get_character_breaks[T]
    }
    $if T is ITextServerExtensionShapedTextNextCharacterPos {
        ci.virtual_methods["_shaped_text_next_character_pos"] = textserverextension_ushaped_text_next_character_pos[T]
    }
    $if T is ITextServerExtensionShapedTextPrevCharacterPos {
        ci.virtual_methods["_shaped_text_prev_character_pos"] = textserverextension_ushaped_text_prev_character_pos[T]
    }
    $if T is ITextServerExtensionShapedTextClosestCharacterPos {
        ci.virtual_methods["_shaped_text_closest_character_pos"] = textserverextension_ushaped_text_closest_character_pos[T]
    }
    $if T is ITextServerExtensionFormatNumber {
        ci.virtual_methods["_format_number"] = textserverextension_uformat_number[T]
    }
    $if T is ITextServerExtensionParseNumber {
        ci.virtual_methods["_parse_number"] = textserverextension_uparse_number[T]
    }
    $if T is ITextServerExtensionPercentSign {
        ci.virtual_methods["_percent_sign"] = textserverextension_upercent_sign[T]
    }
    $if T is ITextServerExtensionStripDiacritics {
        ci.virtual_methods["_strip_diacritics"] = textserverextension_ustrip_diacritics[T]
    }
    $if T is ITextServerExtensionIsValidIdentifier {
        ci.virtual_methods["_is_valid_identifier"] = textserverextension_uis_valid_identifier[T]
    }
    $if T is ITextServerExtensionStringGetWordBreaks {
        ci.virtual_methods["_string_get_word_breaks"] = textserverextension_ustring_get_word_breaks[T]
    }
    $if T is ITextServerExtensionStringGetCharacterBreaks {
        ci.virtual_methods["_string_get_character_breaks"] = textserverextension_ustring_get_character_breaks[T]
    }
    $if T is ITextServerExtensionIsConfusable {
        ci.virtual_methods["_is_confusable"] = textserverextension_uis_confusable[T]
    }
    $if T is ITextServerExtensionSpoofCheck {
        ci.virtual_methods["_spoof_check"] = textserverextension_uspoof_check[T]
    }
    $if T is ITextServerExtensionStringToUpper {
        ci.virtual_methods["_string_to_upper"] = textserverextension_ustring_to_upper[T]
    }
    $if T is ITextServerExtensionStringToLower {
        ci.virtual_methods["_string_to_lower"] = textserverextension_ustring_to_lower[T]
    }
    $if T is ITextServerExtensionParseStructuredText {
        ci.virtual_methods["_parse_structured_text"] = textserverextension_uparse_structured_text[T]
    }
    $if T is ITextServerExtensionCleanup {
        ci.virtual_methods["_cleanup"] = textserverextension_ucleanup[T]
    }
    $if T is ITexture2DGetWidth {
        ci.virtual_methods["_get_width"] = texture2d_uget_width[T]
    }
    $if T is ITexture2DGetHeight {
        ci.virtual_methods["_get_height"] = texture2d_uget_height[T]
    }
    $if T is ITexture2DIsPixelOpaque {
        ci.virtual_methods["_is_pixel_opaque"] = texture2d_uis_pixel_opaque[T]
    }
    $if T is ITexture2DHasAlpha {
        ci.virtual_methods["_has_alpha"] = texture2d_uhas_alpha[T]
    }
    $if T is ITexture2DDraw {
        ci.virtual_methods["_draw"] = texture2d_udraw[T]
    }
    $if T is ITexture2DDrawRect {
        ci.virtual_methods["_draw_rect"] = texture2d_udraw_rect[T]
    }
    $if T is ITexture2DDrawRectRegion {
        ci.virtual_methods["_draw_rect_region"] = texture2d_udraw_rect_region[T]
    }
    $if T is ITexture3DGetFormat {
        ci.virtual_methods["_get_format"] = texture3d_uget_format[T]
    }
    $if T is ITexture3DGetWidth {
        ci.virtual_methods["_get_width"] = texture3d_uget_width[T]
    }
    $if T is ITexture3DGetHeight {
        ci.virtual_methods["_get_height"] = texture3d_uget_height[T]
    }
    $if T is ITexture3DGetDepth {
        ci.virtual_methods["_get_depth"] = texture3d_uget_depth[T]
    }
    $if T is ITexture3DHasMipmaps {
        ci.virtual_methods["_has_mipmaps"] = texture3d_uhas_mipmaps[T]
    }
    $if T is ITexture3DGetData {
        ci.virtual_methods["_get_data"] = texture3d_uget_data[T]
    }
    $if T is ITextureLayeredGetFormat {
        ci.virtual_methods["_get_format"] = texturelayered_uget_format[T]
    }
    $if T is ITextureLayeredGetLayeredType {
        ci.virtual_methods["_get_layered_type"] = texturelayered_uget_layered_type[T]
    }
    $if T is ITextureLayeredGetWidth {
        ci.virtual_methods["_get_width"] = texturelayered_uget_width[T]
    }
    $if T is ITextureLayeredGetHeight {
        ci.virtual_methods["_get_height"] = texturelayered_uget_height[T]
    }
    $if T is ITextureLayeredGetLayers {
        ci.virtual_methods["_get_layers"] = texturelayered_uget_layers[T]
    }
    $if T is ITextureLayeredHasMipmaps {
        ci.virtual_methods["_has_mipmaps"] = texturelayered_uhas_mipmaps[T]
    }
    $if T is ITextureLayeredGetLayerData {
        ci.virtual_methods["_get_layer_data"] = texturelayered_uget_layer_data[T]
    }
    $if T is ITileMapUseTileDataRuntimeUpdate {
        ci.virtual_methods["_use_tile_data_runtime_update"] = tilemap_uuse_tile_data_runtime_update[T]
    }
    $if T is ITileMapTileDataRuntimeUpdate {
        ci.virtual_methods["_tile_data_runtime_update"] = tilemap_utile_data_runtime_update[T]
    }
    $if T is ITranslationGetPluralMessage {
        ci.virtual_methods["_get_plural_message"] = translation_uget_plural_message[T]
    }
    $if T is ITranslationGetMessage {
        ci.virtual_methods["_get_message"] = translation_uget_message[T]
    }
    $if T is IVideoStreamInstantiatePlayback {
        ci.virtual_methods["_instantiate_playback"] = videostream_uinstantiate_playback[T]
    }
    $if T is IVideoStreamPlaybackStop {
        ci.virtual_methods["_stop"] = videostreamplayback_ustop[T]
    }
    $if T is IVideoStreamPlaybackPlay {
        ci.virtual_methods["_play"] = videostreamplayback_uplay[T]
    }
    $if T is IVideoStreamPlaybackIsPlaying {
        ci.virtual_methods["_is_playing"] = videostreamplayback_uis_playing[T]
    }
    $if T is IVideoStreamPlaybackSetPaused {
        ci.virtual_methods["_set_paused"] = videostreamplayback_uset_paused[T]
    }
    $if T is IVideoStreamPlaybackIsPaused {
        ci.virtual_methods["_is_paused"] = videostreamplayback_uis_paused[T]
    }
    $if T is IVideoStreamPlaybackGetLength {
        ci.virtual_methods["_get_length"] = videostreamplayback_uget_length[T]
    }
    $if T is IVideoStreamPlaybackGetPlaybackPosition {
        ci.virtual_methods["_get_playback_position"] = videostreamplayback_uget_playback_position[T]
    }
    $if T is IVideoStreamPlaybackSeek {
        ci.virtual_methods["_seek"] = videostreamplayback_useek[T]
    }
    $if T is IVideoStreamPlaybackSetAudioTrack {
        ci.virtual_methods["_set_audio_track"] = videostreamplayback_uset_audio_track[T]
    }
    $if T is IVideoStreamPlaybackGetTexture {
        ci.virtual_methods["_get_texture"] = videostreamplayback_uget_texture[T]
    }
    $if T is IVideoStreamPlaybackUpdate {
        ci.virtual_methods["_update"] = videostreamplayback_uupdate[T]
    }
    $if T is IVideoStreamPlaybackGetChannels {
        ci.virtual_methods["_get_channels"] = videostreamplayback_uget_channels[T]
    }
    $if T is IVideoStreamPlaybackGetMixRate {
        ci.virtual_methods["_get_mix_rate"] = videostreamplayback_uget_mix_rate[T]
    }
    $if T is IVisualInstance3DGetAabb {
        ci.virtual_methods["_get_aabb"] = visualinstance3d_uget_aabb[T]
    }
    $if T is IVisualShaderNodeCustomGetName {
        ci.virtual_methods["_get_name"] = visualshadernodecustom_uget_name[T]
    }
    $if T is IVisualShaderNodeCustomGetDescription {
        ci.virtual_methods["_get_description"] = visualshadernodecustom_uget_description[T]
    }
    $if T is IVisualShaderNodeCustomGetCategory {
        ci.virtual_methods["_get_category"] = visualshadernodecustom_uget_category[T]
    }
    $if T is IVisualShaderNodeCustomGetReturnIconType {
        ci.virtual_methods["_get_return_icon_type"] = visualshadernodecustom_uget_return_icon_type[T]
    }
    $if T is IVisualShaderNodeCustomGetInputPortCount {
        ci.virtual_methods["_get_input_port_count"] = visualshadernodecustom_uget_input_port_count[T]
    }
    $if T is IVisualShaderNodeCustomGetInputPortType {
        ci.virtual_methods["_get_input_port_type"] = visualshadernodecustom_uget_input_port_type[T]
    }
    $if T is IVisualShaderNodeCustomGetInputPortName {
        ci.virtual_methods["_get_input_port_name"] = visualshadernodecustom_uget_input_port_name[T]
    }
    $if T is IVisualShaderNodeCustomGetInputPortDefaultValue {
        ci.virtual_methods["_get_input_port_default_value"] = visualshadernodecustom_uget_input_port_default_value[T]
    }
    $if T is IVisualShaderNodeCustomGetDefaultInputPort {
        ci.virtual_methods["_get_default_input_port"] = visualshadernodecustom_uget_default_input_port[T]
    }
    $if T is IVisualShaderNodeCustomGetOutputPortCount {
        ci.virtual_methods["_get_output_port_count"] = visualshadernodecustom_uget_output_port_count[T]
    }
    $if T is IVisualShaderNodeCustomGetOutputPortType {
        ci.virtual_methods["_get_output_port_type"] = visualshadernodecustom_uget_output_port_type[T]
    }
    $if T is IVisualShaderNodeCustomGetOutputPortName {
        ci.virtual_methods["_get_output_port_name"] = visualshadernodecustom_uget_output_port_name[T]
    }
    $if T is IVisualShaderNodeCustomGetPropertyCount {
        ci.virtual_methods["_get_property_count"] = visualshadernodecustom_uget_property_count[T]
    }
    $if T is IVisualShaderNodeCustomGetPropertyName {
        ci.virtual_methods["_get_property_name"] = visualshadernodecustom_uget_property_name[T]
    }
    $if T is IVisualShaderNodeCustomGetPropertyDefaultIndex {
        ci.virtual_methods["_get_property_default_index"] = visualshadernodecustom_uget_property_default_index[T]
    }
    $if T is IVisualShaderNodeCustomGetPropertyOptions {
        ci.virtual_methods["_get_property_options"] = visualshadernodecustom_uget_property_options[T]
    }
    $if T is IVisualShaderNodeCustomGetCode {
        ci.virtual_methods["_get_code"] = visualshadernodecustom_uget_code[T]
    }
    $if T is IVisualShaderNodeCustomGetFuncCode {
        ci.virtual_methods["_get_func_code"] = visualshadernodecustom_uget_func_code[T]
    }
    $if T is IVisualShaderNodeCustomGetGlobalCode {
        ci.virtual_methods["_get_global_code"] = visualshadernodecustom_uget_global_code[T]
    }
    $if T is IVisualShaderNodeCustomIsHighend {
        ci.virtual_methods["_is_highend"] = visualshadernodecustom_uis_highend[T]
    }
    $if T is IVisualShaderNodeCustomIsAvailable {
        ci.virtual_methods["_is_available"] = visualshadernodecustom_uis_available[T]
    }
    $if T is IWebRTCDataChannelExtensionGetPacket {
        ci.virtual_methods["_get_packet"] = webrtcdatachannelextension_uget_packet[T]
    }
    $if T is IWebRTCDataChannelExtensionPutPacket {
        ci.virtual_methods["_put_packet"] = webrtcdatachannelextension_uput_packet[T]
    }
    $if T is IWebRTCDataChannelExtensionGetAvailablePacketCount {
        ci.virtual_methods["_get_available_packet_count"] = webrtcdatachannelextension_uget_available_packet_count[T]
    }
    $if T is IWebRTCDataChannelExtensionGetMaxPacketSize {
        ci.virtual_methods["_get_max_packet_size"] = webrtcdatachannelextension_uget_max_packet_size[T]
    }
    $if T is IWebRTCDataChannelExtensionPoll {
        ci.virtual_methods["_poll"] = webrtcdatachannelextension_upoll[T]
    }
    $if T is IWebRTCDataChannelExtensionClose {
        ci.virtual_methods["_close"] = webrtcdatachannelextension_uclose[T]
    }
    $if T is IWebRTCDataChannelExtensionSetWriteMode {
        ci.virtual_methods["_set_write_mode"] = webrtcdatachannelextension_uset_write_mode[T]
    }
    $if T is IWebRTCDataChannelExtensionGetWriteMode {
        ci.virtual_methods["_get_write_mode"] = webrtcdatachannelextension_uget_write_mode[T]
    }
    $if T is IWebRTCDataChannelExtensionWasStringPacket {
        ci.virtual_methods["_was_string_packet"] = webrtcdatachannelextension_uwas_string_packet[T]
    }
    $if T is IWebRTCDataChannelExtensionGetReadyState {
        ci.virtual_methods["_get_ready_state"] = webrtcdatachannelextension_uget_ready_state[T]
    }
    $if T is IWebRTCDataChannelExtensionGetLabel {
        ci.virtual_methods["_get_label"] = webrtcdatachannelextension_uget_label[T]
    }
    $if T is IWebRTCDataChannelExtensionIsOrdered {
        ci.virtual_methods["_is_ordered"] = webrtcdatachannelextension_uis_ordered[T]
    }
    $if T is IWebRTCDataChannelExtensionGetId {
        ci.virtual_methods["_get_id"] = webrtcdatachannelextension_uget_id[T]
    }
    $if T is IWebRTCDataChannelExtensionGetMaxPacketLifeTime {
        ci.virtual_methods["_get_max_packet_life_time"] = webrtcdatachannelextension_uget_max_packet_life_time[T]
    }
    $if T is IWebRTCDataChannelExtensionGetMaxRetransmits {
        ci.virtual_methods["_get_max_retransmits"] = webrtcdatachannelextension_uget_max_retransmits[T]
    }
    $if T is IWebRTCDataChannelExtensionGetProtocol {
        ci.virtual_methods["_get_protocol"] = webrtcdatachannelextension_uget_protocol[T]
    }
    $if T is IWebRTCDataChannelExtensionIsNegotiated {
        ci.virtual_methods["_is_negotiated"] = webrtcdatachannelextension_uis_negotiated[T]
    }
    $if T is IWebRTCDataChannelExtensionGetBufferedAmount {
        ci.virtual_methods["_get_buffered_amount"] = webrtcdatachannelextension_uget_buffered_amount[T]
    }
    $if T is IWebRTCPeerConnectionExtensionGetConnectionState {
        ci.virtual_methods["_get_connection_state"] = webrtcpeerconnectionextension_uget_connection_state[T]
    }
    $if T is IWebRTCPeerConnectionExtensionGetGatheringState {
        ci.virtual_methods["_get_gathering_state"] = webrtcpeerconnectionextension_uget_gathering_state[T]
    }
    $if T is IWebRTCPeerConnectionExtensionGetSignalingState {
        ci.virtual_methods["_get_signaling_state"] = webrtcpeerconnectionextension_uget_signaling_state[T]
    }
    $if T is IWebRTCPeerConnectionExtensionInitialize {
        ci.virtual_methods["_initialize"] = webrtcpeerconnectionextension_uinitialize[T]
    }
    $if T is IWebRTCPeerConnectionExtensionCreateDataChannel {
        ci.virtual_methods["_create_data_channel"] = webrtcpeerconnectionextension_ucreate_data_channel[T]
    }
    $if T is IWebRTCPeerConnectionExtensionCreateOffer {
        ci.virtual_methods["_create_offer"] = webrtcpeerconnectionextension_ucreate_offer[T]
    }
    $if T is IWebRTCPeerConnectionExtensionSetRemoteDescription {
        ci.virtual_methods["_set_remote_description"] = webrtcpeerconnectionextension_uset_remote_description[T]
    }
    $if T is IWebRTCPeerConnectionExtensionSetLocalDescription {
        ci.virtual_methods["_set_local_description"] = webrtcpeerconnectionextension_uset_local_description[T]
    }
    $if T is IWebRTCPeerConnectionExtensionAddIceCandidate {
        ci.virtual_methods["_add_ice_candidate"] = webrtcpeerconnectionextension_uadd_ice_candidate[T]
    }
    $if T is IWebRTCPeerConnectionExtensionPoll {
        ci.virtual_methods["_poll"] = webrtcpeerconnectionextension_upoll[T]
    }
    $if T is IWebRTCPeerConnectionExtensionClose {
        ci.virtual_methods["_close"] = webrtcpeerconnectionextension_uclose[T]
    }
    $if T is IWindowGetContentsMinimumSize {
        ci.virtual_methods["_get_contents_minimum_size"] = window_uget_contents_minimum_size[T]
    }
    $if T is IXRInterfaceExtensionGetName {
        ci.virtual_methods["_get_name"] = xrinterfaceextension_uget_name[T]
    }
    $if T is IXRInterfaceExtensionGetCapabilities {
        ci.virtual_methods["_get_capabilities"] = xrinterfaceextension_uget_capabilities[T]
    }
    $if T is IXRInterfaceExtensionIsInitialized {
        ci.virtual_methods["_is_initialized"] = xrinterfaceextension_uis_initialized[T]
    }
    $if T is IXRInterfaceExtensionInitialize {
        ci.virtual_methods["_initialize"] = xrinterfaceextension_uinitialize[T]
    }
    $if T is IXRInterfaceExtensionUninitialize {
        ci.virtual_methods["_uninitialize"] = xrinterfaceextension_uuninitialize[T]
    }
    $if T is IXRInterfaceExtensionGetSystemInfo {
        ci.virtual_methods["_get_system_info"] = xrinterfaceextension_uget_system_info[T]
    }
    $if T is IXRInterfaceExtensionSupportsPlayAreaMode {
        ci.virtual_methods["_supports_play_area_mode"] = xrinterfaceextension_usupports_play_area_mode[T]
    }
    $if T is IXRInterfaceExtensionGetPlayAreaMode {
        ci.virtual_methods["_get_play_area_mode"] = xrinterfaceextension_uget_play_area_mode[T]
    }
    $if T is IXRInterfaceExtensionSetPlayAreaMode {
        ci.virtual_methods["_set_play_area_mode"] = xrinterfaceextension_uset_play_area_mode[T]
    }
    $if T is IXRInterfaceExtensionGetPlayArea {
        ci.virtual_methods["_get_play_area"] = xrinterfaceextension_uget_play_area[T]
    }
    $if T is IXRInterfaceExtensionGetRenderTargetSize {
        ci.virtual_methods["_get_render_target_size"] = xrinterfaceextension_uget_render_target_size[T]
    }
    $if T is IXRInterfaceExtensionGetViewCount {
        ci.virtual_methods["_get_view_count"] = xrinterfaceextension_uget_view_count[T]
    }
    $if T is IXRInterfaceExtensionGetCameraTransform {
        ci.virtual_methods["_get_camera_transform"] = xrinterfaceextension_uget_camera_transform[T]
    }
    $if T is IXRInterfaceExtensionGetTransformForView {
        ci.virtual_methods["_get_transform_for_view"] = xrinterfaceextension_uget_transform_for_view[T]
    }
    $if T is IXRInterfaceExtensionGetProjectionForView {
        ci.virtual_methods["_get_projection_for_view"] = xrinterfaceextension_uget_projection_for_view[T]
    }
    $if T is IXRInterfaceExtensionGetVrsTexture {
        ci.virtual_methods["_get_vrs_texture"] = xrinterfaceextension_uget_vrs_texture[T]
    }
    $if T is IXRInterfaceExtensionProcess {
        ci.virtual_methods["_process"] = xrinterfaceextension_uprocess[T]
    }
    $if T is IXRInterfaceExtensionPreRender {
        ci.virtual_methods["_pre_render"] = xrinterfaceextension_upre_render[T]
    }
    $if T is IXRInterfaceExtensionPreDrawViewport {
        ci.virtual_methods["_pre_draw_viewport"] = xrinterfaceextension_upre_draw_viewport[T]
    }
    $if T is IXRInterfaceExtensionPostDrawViewport {
        ci.virtual_methods["_post_draw_viewport"] = xrinterfaceextension_upost_draw_viewport[T]
    }
    $if T is IXRInterfaceExtensionEndFrame {
        ci.virtual_methods["_end_frame"] = xrinterfaceextension_uend_frame[T]
    }
    $if T is IXRInterfaceExtensionGetSuggestedTrackerNames {
        ci.virtual_methods["_get_suggested_tracker_names"] = xrinterfaceextension_uget_suggested_tracker_names[T]
    }
    $if T is IXRInterfaceExtensionGetSuggestedPoseNames {
        ci.virtual_methods["_get_suggested_pose_names"] = xrinterfaceextension_uget_suggested_pose_names[T]
    }
    $if T is IXRInterfaceExtensionGetTrackingStatus {
        ci.virtual_methods["_get_tracking_status"] = xrinterfaceextension_uget_tracking_status[T]
    }
    $if T is IXRInterfaceExtensionTriggerHapticPulse {
        ci.virtual_methods["_trigger_haptic_pulse"] = xrinterfaceextension_utrigger_haptic_pulse[T]
    }
    $if T is IXRInterfaceExtensionGetAnchorDetectionIsEnabled {
        ci.virtual_methods["_get_anchor_detection_is_enabled"] = xrinterfaceextension_uget_anchor_detection_is_enabled[T]
    }
    $if T is IXRInterfaceExtensionSetAnchorDetectionIsEnabled {
        ci.virtual_methods["_set_anchor_detection_is_enabled"] = xrinterfaceextension_uset_anchor_detection_is_enabled[T]
    }
    $if T is IXRInterfaceExtensionGetCameraFeedId {
        ci.virtual_methods["_get_camera_feed_id"] = xrinterfaceextension_uget_camera_feed_id[T]
    }
    $if T is IXRInterfaceExtensionGetColorTexture {
        ci.virtual_methods["_get_color_texture"] = xrinterfaceextension_uget_color_texture[T]
    }
    $if T is IXRInterfaceExtensionGetDepthTexture {
        ci.virtual_methods["_get_depth_texture"] = xrinterfaceextension_uget_depth_texture[T]
    }
    $if T is IXRInterfaceExtensionGetVelocityTexture {
        ci.virtual_methods["_get_velocity_texture"] = xrinterfaceextension_uget_velocity_texture[T]
    }
}
