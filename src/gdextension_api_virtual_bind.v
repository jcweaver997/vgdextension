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
    $if T is IAStar2DEstimateCost {{
        func := astar2d_uestimate_cost[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_estimate_cost")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAStar2DComputeCost {{
        func := astar2d_ucompute_cost[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_compute_cost")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAStar3DEstimateCost {{
        func := astar3d_uestimate_cost[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_estimate_cost")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAStar3DComputeCost {{
        func := astar3d_ucompute_cost[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_compute_cost")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAStarGrid2DEstimateCost {{
        func := astargrid2d_uestimate_cost[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_estimate_cost")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAStarGrid2DComputeCost {{
        func := astargrid2d_ucompute_cost[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_compute_cost")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationMixerPostProcessKeyValue {{
        func := animationmixer_upost_process_key_value[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_post_process_key_value")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationNodeGetChildNodes {{
        func := animationnode_uget_child_nodes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_child_nodes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationNodeGetParameterList {{
        func := animationnode_uget_parameter_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_parameter_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationNodeGetChildByName {{
        func := animationnode_uget_child_by_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_child_by_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationNodeGetParameterDefaultValue {{
        func := animationnode_uget_parameter_default_value[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_parameter_default_value")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationNodeIsParameterReadOnly {{
        func := animationnode_uis_parameter_read_only[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_parameter_read_only")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationNodeProcess {{
        func := animationnode_uprocess[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationNodeGetCaption {{
        func := animationnode_uget_caption[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_caption")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAnimationNodeHasFilter {{
        func := animationnode_uhas_filter[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_filter")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioEffectInstantiate {{
        func := audioeffect_uinstantiate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_instantiate")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioEffectInstanceProcess {{
        func := audioeffectinstance_uprocess[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioEffectInstanceProcessSilence {{
        func := audioeffectinstance_uprocess_silence[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_process_silence")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamInstantiatePlayback {{
        func := audiostream_uinstantiate_playback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_instantiate_playback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamGetStreamName {{
        func := audiostream_uget_stream_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_stream_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamGetLength {{
        func := audiostream_uget_length[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_length")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamIsMonophonic {{
        func := audiostream_uis_monophonic[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_monophonic")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamGetBpm {{
        func := audiostream_uget_bpm[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_bpm")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamGetBeatCount {{
        func := audiostream_uget_beat_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_beat_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackStart {{
        func := audiostreamplayback_ustart[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_start")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackStop {{
        func := audiostreamplayback_ustop[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_stop")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackIsPlaying {{
        func := audiostreamplayback_uis_playing[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_playing")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackGetLoopCount {{
        func := audiostreamplayback_uget_loop_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_loop_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackGetPlaybackPosition {{
        func := audiostreamplayback_uget_playback_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_playback_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackSeek {{
        func := audiostreamplayback_useek[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_seek")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackMix {{
        func := audiostreamplayback_umix[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_mix")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackTagUsedStreams {{
        func := audiostreamplayback_utag_used_streams[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_tag_used_streams")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackResampledMixResampled {{
        func := audiostreamplaybackresampled_umix_resampled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_mix_resampled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IAudioStreamPlaybackResampledGetStreamSamplingRate {{
        func := audiostreamplaybackresampled_uget_stream_sampling_rate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_stream_sampling_rate")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IBaseButtonPressed {{
        func := basebutton_upressed[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pressed")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IBaseButtonToggled {{
        func := basebutton_utoggled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_toggled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICanvasItemDraw {{
        func := canvasitem_udraw[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_draw")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICodeEditConfirmCodeCompletion {{
        func := codeedit_uconfirm_code_completion[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_confirm_code_completion")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICodeEditRequestCodeCompletion {{
        func := codeedit_urequest_code_completion[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_request_code_completion")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICodeEditFilterCodeCompletionCandidates {{
        func := codeedit_ufilter_code_completion_candidates[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_filter_code_completion_candidates")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICollisionObject2DInputEvent {{
        func := collisionobject2d_uinput_event[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_input_event")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICollisionObject2DMouseEnter {{
        func := collisionobject2d_umouse_enter[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_mouse_enter")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICollisionObject2DMouseExit {{
        func := collisionobject2d_umouse_exit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_mouse_exit")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICollisionObject2DMouseShapeEnter {{
        func := collisionobject2d_umouse_shape_enter[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_mouse_shape_enter")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICollisionObject2DMouseShapeExit {{
        func := collisionobject2d_umouse_shape_exit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_mouse_shape_exit")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICollisionObject3DInputEvent {{
        func := collisionobject3d_uinput_event[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_input_event")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICollisionObject3DMouseEnter {{
        func := collisionobject3d_umouse_enter[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_mouse_enter")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ICollisionObject3DMouseExit {{
        func := collisionobject3d_umouse_exit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_mouse_exit")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IContainerGetAllowedSizeFlagsHorizontal {{
        func := container_uget_allowed_size_flags_horizontal[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_allowed_size_flags_horizontal")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IContainerGetAllowedSizeFlagsVertical {{
        func := container_uget_allowed_size_flags_vertical[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_allowed_size_flags_vertical")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlHasPoint {{
        func := control_uhas_point[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_point")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlStructuredTextParser {{
        func := control_ustructured_text_parser[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_structured_text_parser")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlGetMinimumSize {{
        func := control_uget_minimum_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_minimum_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlGetTooltip {{
        func := control_uget_tooltip[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_tooltip")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlGetDragData {{
        func := control_uget_drag_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_drag_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlCanDropData {{
        func := control_ucan_drop_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_can_drop_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlDropData {{
        func := control_udrop_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_drop_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlMakeCustomTooltip {{
        func := control_umake_custom_tooltip[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_make_custom_tooltip")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IControlGuiInput {{
        func := control_ugui_input[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_gui_input")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorDebuggerPluginSetupSession {{
        func := editordebuggerplugin_usetup_session[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_setup_session")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorDebuggerPluginHasCapture {{
        func := editordebuggerplugin_uhas_capture[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_capture")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorDebuggerPluginCapture {{
        func := editordebuggerplugin_ucapture[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_capture")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginExportFile {{
        func := editorexportplugin_uexport_file[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_export_file")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginExportBegin {{
        func := editorexportplugin_uexport_begin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_export_begin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginExportEnd {{
        func := editorexportplugin_uexport_end[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_export_end")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginBeginCustomizeResources {{
        func := editorexportplugin_ubegin_customize_resources[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_begin_customize_resources")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginCustomizeResource {{
        func := editorexportplugin_ucustomize_resource[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_customize_resource")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginBeginCustomizeScenes {{
        func := editorexportplugin_ubegin_customize_scenes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_begin_customize_scenes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginCustomizeScene {{
        func := editorexportplugin_ucustomize_scene[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_customize_scene")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetCustomizationConfigurationHash {{
        func := editorexportplugin_uget_customization_configuration_hash[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_customization_configuration_hash")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginEndCustomizeScenes {{
        func := editorexportplugin_uend_customize_scenes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_end_customize_scenes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginEndCustomizeResources {{
        func := editorexportplugin_uend_customize_resources[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_end_customize_resources")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetExportOptions {{
        func := editorexportplugin_uget_export_options[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_export_options")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginShouldUpdateExportOptions {{
        func := editorexportplugin_ushould_update_export_options[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_should_update_export_options")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetExportOptionWarning {{
        func := editorexportplugin_uget_export_option_warning[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_export_option_warning")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetExportFeatures {{
        func := editorexportplugin_uget_export_features[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_export_features")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetName {{
        func := editorexportplugin_uget_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginSupportsPlatform {{
        func := editorexportplugin_usupports_platform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_supports_platform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetAndroidDependencies {{
        func := editorexportplugin_uget_android_dependencies[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_android_dependencies")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetAndroidDependenciesMavenRepos {{
        func := editorexportplugin_uget_android_dependencies_maven_repos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_android_dependencies_maven_repos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetAndroidLibraries {{
        func := editorexportplugin_uget_android_libraries[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_android_libraries")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetAndroidManifestActivityElementContents {{
        func := editorexportplugin_uget_android_manifest_activity_element_contents[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_android_manifest_activity_element_contents")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetAndroidManifestApplicationElementContents {{
        func := editorexportplugin_uget_android_manifest_application_element_contents[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_android_manifest_application_element_contents")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorExportPluginGetAndroidManifestElementContents {{
        func := editorexportplugin_uget_android_manifest_element_contents[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_android_manifest_element_contents")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorFileSystemImportFormatSupportQueryIsActive {{
        func := editorfilesystemimportformatsupportquery_uis_active[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_active")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorFileSystemImportFormatSupportQueryGetFileExtensions {{
        func := editorfilesystemimportformatsupportquery_uget_file_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_file_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorFileSystemImportFormatSupportQueryQuery {{
        func := editorfilesystemimportformatsupportquery_uquery[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_query")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetImporterName {{
        func := editorimportplugin_uget_importer_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_importer_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetVisibleName {{
        func := editorimportplugin_uget_visible_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_visible_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetPresetCount {{
        func := editorimportplugin_uget_preset_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_preset_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetPresetName {{
        func := editorimportplugin_uget_preset_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_preset_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetRecognizedExtensions {{
        func := editorimportplugin_uget_recognized_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_recognized_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetImportOptions {{
        func := editorimportplugin_uget_import_options[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_import_options")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetSaveExtension {{
        func := editorimportplugin_uget_save_extension[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_save_extension")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetResourceType {{
        func := editorimportplugin_uget_resource_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_resource_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetPriority {{
        func := editorimportplugin_uget_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetImportOrder {{
        func := editorimportplugin_uget_import_order[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_import_order")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginGetOptionVisibility {{
        func := editorimportplugin_uget_option_visibility[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_option_visibility")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorImportPluginImport {{
        func := editorimportplugin_uimport[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_import")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorInspectorPluginCanHandle {{
        func := editorinspectorplugin_ucan_handle[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_can_handle")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorInspectorPluginParseBegin {{
        func := editorinspectorplugin_uparse_begin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_begin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorInspectorPluginParseCategory {{
        func := editorinspectorplugin_uparse_category[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_category")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorInspectorPluginParseGroup {{
        func := editorinspectorplugin_uparse_group[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_group")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorInspectorPluginParseProperty {{
        func := editorinspectorplugin_uparse_property[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_property")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorInspectorPluginParseEnd {{
        func := editorinspectorplugin_uparse_end[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_end")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoRedraw {{
        func := editornode3dgizmo_uredraw[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_redraw")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoGetHandleName {{
        func := editornode3dgizmo_uget_handle_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_handle_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoIsHandleHighlighted {{
        func := editornode3dgizmo_uis_handle_highlighted[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_handle_highlighted")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoGetHandleValue {{
        func := editornode3dgizmo_uget_handle_value[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_handle_value")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoSetHandle {{
        func := editornode3dgizmo_uset_handle[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_handle")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoCommitHandle {{
        func := editornode3dgizmo_ucommit_handle[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_commit_handle")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoSubgizmosIntersectRay {{
        func := editornode3dgizmo_usubgizmos_intersect_ray[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_subgizmos_intersect_ray")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoSubgizmosIntersectFrustum {{
        func := editornode3dgizmo_usubgizmos_intersect_frustum[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_subgizmos_intersect_frustum")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoSetSubgizmoTransform {{
        func := editornode3dgizmo_uset_subgizmo_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_subgizmo_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoGetSubgizmoTransform {{
        func := editornode3dgizmo_uget_subgizmo_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_subgizmo_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoCommitSubgizmos {{
        func := editornode3dgizmo_ucommit_subgizmos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_commit_subgizmos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginHasGizmo {{
        func := editornode3dgizmoplugin_uhas_gizmo[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_gizmo")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginCreateGizmo {{
        func := editornode3dgizmoplugin_ucreate_gizmo[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_gizmo")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginGetGizmoName {{
        func := editornode3dgizmoplugin_uget_gizmo_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_gizmo_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginGetPriority {{
        func := editornode3dgizmoplugin_uget_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginCanBeHidden {{
        func := editornode3dgizmoplugin_ucan_be_hidden[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_can_be_hidden")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginIsSelectableWhenHidden {{
        func := editornode3dgizmoplugin_uis_selectable_when_hidden[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_selectable_when_hidden")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginRedraw {{
        func := editornode3dgizmoplugin_uredraw[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_redraw")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginGetHandleName {{
        func := editornode3dgizmoplugin_uget_handle_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_handle_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginIsHandleHighlighted {{
        func := editornode3dgizmoplugin_uis_handle_highlighted[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_handle_highlighted")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginGetHandleValue {{
        func := editornode3dgizmoplugin_uget_handle_value[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_handle_value")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginSetHandle {{
        func := editornode3dgizmoplugin_uset_handle[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_handle")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginCommitHandle {{
        func := editornode3dgizmoplugin_ucommit_handle[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_commit_handle")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginSubgizmosIntersectRay {{
        func := editornode3dgizmoplugin_usubgizmos_intersect_ray[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_subgizmos_intersect_ray")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginSubgizmosIntersectFrustum {{
        func := editornode3dgizmoplugin_usubgizmos_intersect_frustum[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_subgizmos_intersect_frustum")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginGetSubgizmoTransform {{
        func := editornode3dgizmoplugin_uget_subgizmo_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_subgizmo_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginSetSubgizmoTransform {{
        func := editornode3dgizmoplugin_uset_subgizmo_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_subgizmo_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorNode3DGizmoPluginCommitSubgizmos {{
        func := editornode3dgizmoplugin_ucommit_subgizmos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_commit_subgizmos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginForwardCanvasGuiInput {{
        func := editorplugin_uforward_canvas_gui_input[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_forward_canvas_gui_input")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginForwardCanvasDrawOverViewport {{
        func := editorplugin_uforward_canvas_draw_over_viewport[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_forward_canvas_draw_over_viewport")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginForwardCanvasForceDrawOverViewport {{
        func := editorplugin_uforward_canvas_force_draw_over_viewport[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_forward_canvas_force_draw_over_viewport")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginForward3dGuiInput {{
        func := editorplugin_uforward_3d_gui_input[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_forward_3d_gui_input")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginForward3dDrawOverViewport {{
        func := editorplugin_uforward_3d_draw_over_viewport[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_forward_3d_draw_over_viewport")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginForward3dForceDrawOverViewport {{
        func := editorplugin_uforward_3d_force_draw_over_viewport[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_forward_3d_force_draw_over_viewport")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginGetPluginName {{
        func := editorplugin_uget_plugin_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_plugin_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginGetPluginIcon {{
        func := editorplugin_uget_plugin_icon[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_plugin_icon")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginHasMainScreen {{
        func := editorplugin_uhas_main_screen[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_main_screen")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginMakeVisible {{
        func := editorplugin_umake_visible[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_make_visible")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginEdit {{
        func := editorplugin_uedit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_edit")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginHandles {{
        func := editorplugin_uhandles[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handles")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginGetState {{
        func := editorplugin_uget_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginSetState {{
        func := editorplugin_uset_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginClear {{
        func := editorplugin_uclear[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_clear")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginGetUnsavedStatus {{
        func := editorplugin_uget_unsaved_status[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_unsaved_status")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginSaveExternalData {{
        func := editorplugin_usave_external_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_save_external_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginApplyChanges {{
        func := editorplugin_uapply_changes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_changes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginGetBreakpoints {{
        func := editorplugin_uget_breakpoints[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_breakpoints")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginSetWindowLayout {{
        func := editorplugin_uset_window_layout[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_window_layout")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginGetWindowLayout {{
        func := editorplugin_uget_window_layout[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_window_layout")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginBuild {{
        func := editorplugin_ubuild[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_build")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginEnablePlugin {{
        func := editorplugin_uenable_plugin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_enable_plugin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPluginDisablePlugin {{
        func := editorplugin_udisable_plugin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_disable_plugin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPropertyUpdateProperty {{
        func := editorproperty_uupdate_property[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_update_property")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorPropertySetReadOnly {{
        func := editorproperty_uset_read_only[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_read_only")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourceConversionPluginConvertsTo {{
        func := editorresourceconversionplugin_uconverts_to[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_converts_to")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourceConversionPluginHandles {{
        func := editorresourceconversionplugin_uhandles[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handles")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourceConversionPluginConvert {{
        func := editorresourceconversionplugin_uconvert[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_convert")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourcePickerSetCreateOptions {{
        func := editorresourcepicker_uset_create_options[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_create_options")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourcePickerHandleMenuSelected {{
        func := editorresourcepicker_uhandle_menu_selected[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handle_menu_selected")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourcePreviewGeneratorHandles {{
        func := editorresourcepreviewgenerator_uhandles[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handles")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourcePreviewGeneratorGenerate {{
        func := editorresourcepreviewgenerator_ugenerate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_generate")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourcePreviewGeneratorGenerateFromPath {{
        func := editorresourcepreviewgenerator_ugenerate_from_path[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_generate_from_path")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourcePreviewGeneratorGenerateSmallPreviewAutomatically {{
        func := editorresourcepreviewgenerator_ugenerate_small_preview_automatically[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_generate_small_preview_automatically")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourcePreviewGeneratorCanGenerateSmallPreview {{
        func := editorresourcepreviewgenerator_ucan_generate_small_preview[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_can_generate_small_preview")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourceTooltipPluginHandles {{
        func := editorresourcetooltipplugin_uhandles[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handles")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorResourceTooltipPluginMakeTooltipForPath {{
        func := editorresourcetooltipplugin_umake_tooltip_for_path[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_make_tooltip_for_path")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorSceneFormatImporterGetImportFlags {{
        func := editorsceneformatimporter_uget_import_flags[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_import_flags")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorSceneFormatImporterGetExtensions {{
        func := editorsceneformatimporter_uget_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorSceneFormatImporterImportScene {{
        func := editorsceneformatimporter_uimport_scene[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_import_scene")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorSceneFormatImporterGetImportOptions {{
        func := editorsceneformatimporter_uget_import_options[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_import_options")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorSceneFormatImporterGetOptionVisibility {{
        func := editorsceneformatimporter_uget_option_visibility[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_option_visibility")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPostImport {{
        func := editorscenepostimport_upost_import[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_post_import")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPluginGetInternalImportOptions {{
        func := editorscenepostimportplugin_uget_internal_import_options[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_internal_import_options")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPluginGetInternalOptionVisibility {{
        func := editorscenepostimportplugin_uget_internal_option_visibility[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_internal_option_visibility")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPluginGetInternalOptionUpdateViewRequired {{
        func := editorscenepostimportplugin_uget_internal_option_update_view_required[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_internal_option_update_view_required")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPluginInternalProcess {{
        func := editorscenepostimportplugin_uinternal_process[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_internal_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPluginGetImportOptions {{
        func := editorscenepostimportplugin_uget_import_options[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_import_options")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPluginGetOptionVisibility {{
        func := editorscenepostimportplugin_uget_option_visibility[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_option_visibility")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPluginPreProcess {{
        func := editorscenepostimportplugin_upre_process[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pre_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScenePostImportPluginPostProcess {{
        func := editorscenepostimportplugin_upost_process[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_post_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorScriptRun {{
        func := editorscript_urun[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_run")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorSyntaxHighlighterGetName {{
        func := editorsyntaxhighlighter_uget_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorSyntaxHighlighterGetSupportedLanguages {{
        func := editorsyntaxhighlighter_uget_supported_languages[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_supported_languages")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorTranslationParserPluginParseFile {{
        func := editortranslationparserplugin_uparse_file[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_file")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorTranslationParserPluginGetRecognizedExtensions {{
        func := editortranslationparserplugin_uget_recognized_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_recognized_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceInitialize {{
        func := editorvcsinterface_uinitialize[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_initialize")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceSetCredentials {{
        func := editorvcsinterface_uset_credentials[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_credentials")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceGetModifiedFilesData {{
        func := editorvcsinterface_uget_modified_files_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_modified_files_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceStageFile {{
        func := editorvcsinterface_ustage_file[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_stage_file")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceUnstageFile {{
        func := editorvcsinterface_uunstage_file[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_unstage_file")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceDiscardFile {{
        func := editorvcsinterface_udiscard_file[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_discard_file")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceCommit {{
        func := editorvcsinterface_ucommit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_commit")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceGetDiff {{
        func := editorvcsinterface_uget_diff[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_diff")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceShutDown {{
        func := editorvcsinterface_ushut_down[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shut_down")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceGetVcsName {{
        func := editorvcsinterface_uget_vcs_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_vcs_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceGetPreviousCommits {{
        func := editorvcsinterface_uget_previous_commits[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_previous_commits")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceGetBranchList {{
        func := editorvcsinterface_uget_branch_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_branch_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceGetRemotes {{
        func := editorvcsinterface_uget_remotes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_remotes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceCreateBranch {{
        func := editorvcsinterface_ucreate_branch[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_branch")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceRemoveBranch {{
        func := editorvcsinterface_uremove_branch[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_remove_branch")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceCreateRemote {{
        func := editorvcsinterface_ucreate_remote[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_remote")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceRemoveRemote {{
        func := editorvcsinterface_uremove_remote[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_remove_remote")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceGetCurrentBranchName {{
        func := editorvcsinterface_uget_current_branch_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_current_branch_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceCheckoutBranch {{
        func := editorvcsinterface_ucheckout_branch[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_checkout_branch")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfacePull {{
        func := editorvcsinterface_upull[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pull")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfacePush {{
        func := editorvcsinterface_upush[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_push")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceFetch {{
        func := editorvcsinterface_ufetch[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_fetch")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEditorVCSInterfaceGetLineDiff {{
        func := editorvcsinterface_uget_line_diff[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_line_diff")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEngineProfilerToggle {{
        func := engineprofiler_utoggle[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_toggle")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEngineProfilerAddFrame {{
        func := engineprofiler_uadd_frame[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_frame")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IEngineProfilerTick {{
        func := engineprofiler_utick[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_tick")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionImportPreflight {{
        func := gltfdocumentextension_uimport_preflight[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_import_preflight")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionGetSupportedExtensions {{
        func := gltfdocumentextension_uget_supported_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_supported_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionParseNodeExtensions {{
        func := gltfdocumentextension_uparse_node_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_node_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionParseImageData {{
        func := gltfdocumentextension_uparse_image_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_image_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionGetImageFileExtension {{
        func := gltfdocumentextension_uget_image_file_extension[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_image_file_extension")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionParseTextureJson {{
        func := gltfdocumentextension_uparse_texture_json[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_texture_json")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionGenerateSceneNode {{
        func := gltfdocumentextension_ugenerate_scene_node[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_generate_scene_node")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionImportPostParse {{
        func := gltfdocumentextension_uimport_post_parse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_import_post_parse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionImportNode {{
        func := gltfdocumentextension_uimport_node[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_import_node")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionImportPost {{
        func := gltfdocumentextension_uimport_post[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_import_post")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionExportPreflight {{
        func := gltfdocumentextension_uexport_preflight[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_export_preflight")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionConvertSceneNode {{
        func := gltfdocumentextension_uconvert_scene_node[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_convert_scene_node")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionExportPreserialize {{
        func := gltfdocumentextension_uexport_preserialize[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_export_preserialize")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionGetSaveableImageFormats {{
        func := gltfdocumentextension_uget_saveable_image_formats[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_saveable_image_formats")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionSerializeImageToBytes {{
        func := gltfdocumentextension_userialize_image_to_bytes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_serialize_image_to_bytes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionSaveImageAtPath {{
        func := gltfdocumentextension_usave_image_at_path[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_save_image_at_path")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionSerializeTextureJson {{
        func := gltfdocumentextension_userialize_texture_json[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_serialize_texture_json")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionExportNode {{
        func := gltfdocumentextension_uexport_node[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_export_node")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGLTFDocumentExtensionExportPost {{
        func := gltfdocumentextension_uexport_post[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_export_post")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGraphEditIsInInputHotzone {{
        func := graphedit_uis_in_input_hotzone[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_in_input_hotzone")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGraphEditIsInOutputHotzone {{
        func := graphedit_uis_in_output_hotzone[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_in_output_hotzone")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGraphEditGetConnectionLine {{
        func := graphedit_uget_connection_line[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_connection_line")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGraphEditIsNodeHoverValid {{
        func := graphedit_uis_node_hover_valid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_node_hover_valid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IGraphNodeDrawPort {{
        func := graphnode_udraw_port[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_draw_port")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IImageFormatLoaderExtensionGetRecognizedExtensions {{
        func := imageformatloaderextension_uget_recognized_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_recognized_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IImageFormatLoaderExtensionLoadImage {{
        func := imageformatloaderextension_uload_image[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_load_image")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMainLoopInitialize {{
        func := mainloop_uinitialize[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_initialize")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMainLoopPhysicsProcess {{
        func := mainloop_uphysics_process[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_physics_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMainLoopProcess {{
        func := mainloop_uprocess[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMainLoopFinalize {{
        func := mainloop_ufinalize[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_finalize")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMaterialGetShaderRid {{
        func := material_uget_shader_rid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_shader_rid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMaterialGetShaderMode {{
        func := material_uget_shader_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_shader_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMaterialCanDoNextPass {{
        func := material_ucan_do_next_pass[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_can_do_next_pass")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMaterialCanUseRenderPriority {{
        func := material_ucan_use_render_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_can_use_render_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshGetSurfaceCount {{
        func := mesh_uget_surface_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_surface_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceGetArrayLen {{
        func := mesh_usurface_get_array_len[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_get_array_len")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceGetArrayIndexLen {{
        func := mesh_usurface_get_array_index_len[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_get_array_index_len")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceGetArrays {{
        func := mesh_usurface_get_arrays[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_get_arrays")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceGetBlendShapeArrays {{
        func := mesh_usurface_get_blend_shape_arrays[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_get_blend_shape_arrays")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceGetLods {{
        func := mesh_usurface_get_lods[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_get_lods")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceGetFormat {{
        func := mesh_usurface_get_format[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_get_format")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceGetPrimitiveType {{
        func := mesh_usurface_get_primitive_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_get_primitive_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceSetMaterial {{
        func := mesh_usurface_set_material[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_set_material")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSurfaceGetMaterial {{
        func := mesh_usurface_get_material[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_surface_get_material")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshGetBlendShapeCount {{
        func := mesh_uget_blend_shape_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_blend_shape_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshGetBlendShapeName {{
        func := mesh_uget_blend_shape_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_blend_shape_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshSetBlendShapeName {{
        func := mesh_uset_blend_shape_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_blend_shape_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMeshGetAabb {{
        func := mesh_uget_aabb[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_aabb")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMovieWriterGetAudioMixRate {{
        func := moviewriter_uget_audio_mix_rate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_audio_mix_rate")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMovieWriterGetAudioSpeakerMode {{
        func := moviewriter_uget_audio_speaker_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_audio_speaker_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMovieWriterHandlesFile {{
        func := moviewriter_uhandles_file[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handles_file")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMovieWriterWriteBegin {{
        func := moviewriter_uwrite_begin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_write_begin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMovieWriterWriteFrame {{
        func := moviewriter_uwrite_frame[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_write_frame")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMovieWriterWriteEnd {{
        func := moviewriter_uwrite_end[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_write_end")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionPoll {{
        func := multiplayerapiextension_upoll[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_poll")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionSetMultiplayerPeer {{
        func := multiplayerapiextension_uset_multiplayer_peer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_multiplayer_peer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionGetMultiplayerPeer {{
        func := multiplayerapiextension_uget_multiplayer_peer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_multiplayer_peer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionGetUniqueId {{
        func := multiplayerapiextension_uget_unique_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_unique_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionGetPeerIds {{
        func := multiplayerapiextension_uget_peer_ids[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_peer_ids")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionRpc {{
        func := multiplayerapiextension_urpc[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_rpc")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionGetRemoteSenderId {{
        func := multiplayerapiextension_uget_remote_sender_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_remote_sender_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionObjectConfigurationAdd {{
        func := multiplayerapiextension_uobject_configuration_add[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_object_configuration_add")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerAPIExtensionObjectConfigurationRemove {{
        func := multiplayerapiextension_uobject_configuration_remove[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_object_configuration_remove")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetPacket {{
        func := multiplayerpeerextension_uget_packet[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_packet")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionPutPacket {{
        func := multiplayerpeerextension_uput_packet[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_put_packet")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetAvailablePacketCount {{
        func := multiplayerpeerextension_uget_available_packet_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_available_packet_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetMaxPacketSize {{
        func := multiplayerpeerextension_uget_max_packet_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_max_packet_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetPacketScript {{
        func := multiplayerpeerextension_uget_packet_script[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_packet_script")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionPutPacketScript {{
        func := multiplayerpeerextension_uput_packet_script[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_put_packet_script")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetPacketChannel {{
        func := multiplayerpeerextension_uget_packet_channel[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_packet_channel")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetPacketMode {{
        func := multiplayerpeerextension_uget_packet_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_packet_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionSetTransferChannel {{
        func := multiplayerpeerextension_uset_transfer_channel[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_transfer_channel")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetTransferChannel {{
        func := multiplayerpeerextension_uget_transfer_channel[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_transfer_channel")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionSetTransferMode {{
        func := multiplayerpeerextension_uset_transfer_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_transfer_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetTransferMode {{
        func := multiplayerpeerextension_uget_transfer_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_transfer_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionSetTargetPeer {{
        func := multiplayerpeerextension_uset_target_peer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_target_peer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetPacketPeer {{
        func := multiplayerpeerextension_uget_packet_peer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_packet_peer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionIsServer {{
        func := multiplayerpeerextension_uis_server[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_server")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionPoll {{
        func := multiplayerpeerextension_upoll[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_poll")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionClose {{
        func := multiplayerpeerextension_uclose[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_close")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionDisconnectPeer {{
        func := multiplayerpeerextension_udisconnect_peer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_disconnect_peer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetUniqueId {{
        func := multiplayerpeerextension_uget_unique_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_unique_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionSetRefuseNewConnections {{
        func := multiplayerpeerextension_uset_refuse_new_connections[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_refuse_new_connections")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionIsRefusingNewConnections {{
        func := multiplayerpeerextension_uis_refusing_new_connections[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_refusing_new_connections")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionIsServerRelaySupported {{
        func := multiplayerpeerextension_uis_server_relay_supported[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_server_relay_supported")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IMultiplayerPeerExtensionGetConnectionStatus {{
        func := multiplayerpeerextension_uget_connection_status[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_connection_status")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeProcess {{
        func := node_uprocess[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodePhysicsProcess {{
        func := node_uphysics_process[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_physics_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeEnterTree {{
        func := node_uenter_tree[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_enter_tree")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeExitTree {{
        func := node_uexit_tree[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_exit_tree")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeReady {{
        func := node_uready[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_ready")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeGetConfigurationWarnings {{
        func := node_uget_configuration_warnings[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_configuration_warnings")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeInput {{
        func := node_uinput[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_input")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeShortcutInput {{
        func := node_ushortcut_input[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shortcut_input")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeUnhandledInput {{
        func := node_uunhandled_input[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_unhandled_input")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is INodeUnhandledKeyInput {{
        func := node_uunhandled_key_input[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_unhandled_key_input")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionGetRequestedExtensions {{
        func := openxrextensionwrapperextension_uget_requested_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_requested_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionSetSystemPropertiesAndGetNextPointer {{
        func := openxrextensionwrapperextension_uset_system_properties_and_get_next_pointer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_system_properties_and_get_next_pointer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionSetInstanceCreateInfoAndGetNextPointer {{
        func := openxrextensionwrapperextension_uset_instance_create_info_and_get_next_pointer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_instance_create_info_and_get_next_pointer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionSetSessionCreateAndGetNextPointer {{
        func := openxrextensionwrapperextension_uset_session_create_and_get_next_pointer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_session_create_and_get_next_pointer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionSetSwapchainCreateInfoAndGetNextPointer {{
        func := openxrextensionwrapperextension_uset_swapchain_create_info_and_get_next_pointer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_swapchain_create_info_and_get_next_pointer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnRegisterMetadata {{
        func := openxrextensionwrapperextension_uon_register_metadata[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_register_metadata")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnBeforeInstanceCreated {{
        func := openxrextensionwrapperextension_uon_before_instance_created[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_before_instance_created")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnInstanceCreated {{
        func := openxrextensionwrapperextension_uon_instance_created[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_instance_created")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnInstanceDestroyed {{
        func := openxrextensionwrapperextension_uon_instance_destroyed[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_instance_destroyed")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnSessionCreated {{
        func := openxrextensionwrapperextension_uon_session_created[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_session_created")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnProcess {{
        func := openxrextensionwrapperextension_uon_process[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnPreRender {{
        func := openxrextensionwrapperextension_uon_pre_render[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_pre_render")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnSessionDestroyed {{
        func := openxrextensionwrapperextension_uon_session_destroyed[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_session_destroyed")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnStateIdle {{
        func := openxrextensionwrapperextension_uon_state_idle[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_state_idle")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnStateReady {{
        func := openxrextensionwrapperextension_uon_state_ready[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_state_ready")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnStateSynchronized {{
        func := openxrextensionwrapperextension_uon_state_synchronized[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_state_synchronized")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnStateVisible {{
        func := openxrextensionwrapperextension_uon_state_visible[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_state_visible")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnStateFocused {{
        func := openxrextensionwrapperextension_uon_state_focused[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_state_focused")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnStateStopping {{
        func := openxrextensionwrapperextension_uon_state_stopping[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_state_stopping")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnStateLossPending {{
        func := openxrextensionwrapperextension_uon_state_loss_pending[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_state_loss_pending")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnStateExiting {{
        func := openxrextensionwrapperextension_uon_state_exiting[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_state_exiting")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IOpenXRExtensionWrapperExtensionOnEventPolled {{
        func := openxrextensionwrapperextension_uon_event_polled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_on_event_polled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPacketPeerExtensionGetPacket {{
        func := packetpeerextension_uget_packet[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_packet")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPacketPeerExtensionPutPacket {{
        func := packetpeerextension_uput_packet[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_put_packet")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPacketPeerExtensionGetAvailablePacketCount {{
        func := packetpeerextension_uget_available_packet_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_available_packet_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPacketPeerExtensionGetMaxPacketSize {{
        func := packetpeerextension_uget_max_packet_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_max_packet_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicalBone3DIntegrateForces {{
        func := physicalbone3d_uintegrate_forces[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_integrate_forces")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetTotalGravity {{
        func := physicsdirectbodystate2dextension_uget_total_gravity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_total_gravity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetTotalLinearDamp {{
        func := physicsdirectbodystate2dextension_uget_total_linear_damp[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_total_linear_damp")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetTotalAngularDamp {{
        func := physicsdirectbodystate2dextension_uget_total_angular_damp[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_total_angular_damp")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetCenterOfMass {{
        func := physicsdirectbodystate2dextension_uget_center_of_mass[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_center_of_mass")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetCenterOfMassLocal {{
        func := physicsdirectbodystate2dextension_uget_center_of_mass_local[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_center_of_mass_local")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetInverseMass {{
        func := physicsdirectbodystate2dextension_uget_inverse_mass[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_inverse_mass")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetInverseInertia {{
        func := physicsdirectbodystate2dextension_uget_inverse_inertia[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_inverse_inertia")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionSetLinearVelocity {{
        func := physicsdirectbodystate2dextension_uset_linear_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_linear_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetLinearVelocity {{
        func := physicsdirectbodystate2dextension_uget_linear_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_linear_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionSetAngularVelocity {{
        func := physicsdirectbodystate2dextension_uset_angular_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_angular_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetAngularVelocity {{
        func := physicsdirectbodystate2dextension_uget_angular_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_angular_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionSetTransform {{
        func := physicsdirectbodystate2dextension_uset_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetTransform {{
        func := physicsdirectbodystate2dextension_uget_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetVelocityAtLocalPosition {{
        func := physicsdirectbodystate2dextension_uget_velocity_at_local_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_velocity_at_local_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionApplyCentralImpulse {{
        func := physicsdirectbodystate2dextension_uapply_central_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_central_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionApplyImpulse {{
        func := physicsdirectbodystate2dextension_uapply_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionApplyTorqueImpulse {{
        func := physicsdirectbodystate2dextension_uapply_torque_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_torque_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionApplyCentralForce {{
        func := physicsdirectbodystate2dextension_uapply_central_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_central_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionApplyForce {{
        func := physicsdirectbodystate2dextension_uapply_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionApplyTorque {{
        func := physicsdirectbodystate2dextension_uapply_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionAddConstantCentralForce {{
        func := physicsdirectbodystate2dextension_uadd_constant_central_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_constant_central_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionAddConstantForce {{
        func := physicsdirectbodystate2dextension_uadd_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionAddConstantTorque {{
        func := physicsdirectbodystate2dextension_uadd_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionSetConstantForce {{
        func := physicsdirectbodystate2dextension_uset_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetConstantForce {{
        func := physicsdirectbodystate2dextension_uget_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionSetConstantTorque {{
        func := physicsdirectbodystate2dextension_uset_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetConstantTorque {{
        func := physicsdirectbodystate2dextension_uget_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionSetSleepState {{
        func := physicsdirectbodystate2dextension_uset_sleep_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_sleep_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionIsSleeping {{
        func := physicsdirectbodystate2dextension_uis_sleeping[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_sleeping")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactCount {{
        func := physicsdirectbodystate2dextension_uget_contact_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactLocalPosition {{
        func := physicsdirectbodystate2dextension_uget_contact_local_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_local_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactLocalNormal {{
        func := physicsdirectbodystate2dextension_uget_contact_local_normal[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_local_normal")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactLocalShape {{
        func := physicsdirectbodystate2dextension_uget_contact_local_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_local_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactLocalVelocityAtPosition {{
        func := physicsdirectbodystate2dextension_uget_contact_local_velocity_at_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_local_velocity_at_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactCollider {{
        func := physicsdirectbodystate2dextension_uget_contact_collider[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderPosition {{
        func := physicsdirectbodystate2dextension_uget_contact_collider_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderId {{
        func := physicsdirectbodystate2dextension_uget_contact_collider_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderObject {{
        func := physicsdirectbodystate2dextension_uget_contact_collider_object[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_object")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderShape {{
        func := physicsdirectbodystate2dextension_uget_contact_collider_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactColliderVelocityAtPosition {{
        func := physicsdirectbodystate2dextension_uget_contact_collider_velocity_at_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_velocity_at_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetContactImpulse {{
        func := physicsdirectbodystate2dextension_uget_contact_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetStep {{
        func := physicsdirectbodystate2dextension_uget_step[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_step")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionIntegrateForces {{
        func := physicsdirectbodystate2dextension_uintegrate_forces[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_integrate_forces")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState2DExtensionGetSpaceState {{
        func := physicsdirectbodystate2dextension_uget_space_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_space_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetTotalGravity {{
        func := physicsdirectbodystate3dextension_uget_total_gravity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_total_gravity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetTotalLinearDamp {{
        func := physicsdirectbodystate3dextension_uget_total_linear_damp[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_total_linear_damp")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetTotalAngularDamp {{
        func := physicsdirectbodystate3dextension_uget_total_angular_damp[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_total_angular_damp")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetCenterOfMass {{
        func := physicsdirectbodystate3dextension_uget_center_of_mass[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_center_of_mass")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetCenterOfMassLocal {{
        func := physicsdirectbodystate3dextension_uget_center_of_mass_local[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_center_of_mass_local")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetPrincipalInertiaAxes {{
        func := physicsdirectbodystate3dextension_uget_principal_inertia_axes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_principal_inertia_axes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetInverseMass {{
        func := physicsdirectbodystate3dextension_uget_inverse_mass[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_inverse_mass")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetInverseInertia {{
        func := physicsdirectbodystate3dextension_uget_inverse_inertia[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_inverse_inertia")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetInverseInertiaTensor {{
        func := physicsdirectbodystate3dextension_uget_inverse_inertia_tensor[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_inverse_inertia_tensor")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionSetLinearVelocity {{
        func := physicsdirectbodystate3dextension_uset_linear_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_linear_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetLinearVelocity {{
        func := physicsdirectbodystate3dextension_uget_linear_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_linear_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionSetAngularVelocity {{
        func := physicsdirectbodystate3dextension_uset_angular_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_angular_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetAngularVelocity {{
        func := physicsdirectbodystate3dextension_uget_angular_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_angular_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionSetTransform {{
        func := physicsdirectbodystate3dextension_uset_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetTransform {{
        func := physicsdirectbodystate3dextension_uget_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetVelocityAtLocalPosition {{
        func := physicsdirectbodystate3dextension_uget_velocity_at_local_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_velocity_at_local_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionApplyCentralImpulse {{
        func := physicsdirectbodystate3dextension_uapply_central_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_central_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionApplyImpulse {{
        func := physicsdirectbodystate3dextension_uapply_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionApplyTorqueImpulse {{
        func := physicsdirectbodystate3dextension_uapply_torque_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_torque_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionApplyCentralForce {{
        func := physicsdirectbodystate3dextension_uapply_central_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_central_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionApplyForce {{
        func := physicsdirectbodystate3dextension_uapply_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionApplyTorque {{
        func := physicsdirectbodystate3dextension_uapply_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_apply_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionAddConstantCentralForce {{
        func := physicsdirectbodystate3dextension_uadd_constant_central_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_constant_central_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionAddConstantForce {{
        func := physicsdirectbodystate3dextension_uadd_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionAddConstantTorque {{
        func := physicsdirectbodystate3dextension_uadd_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionSetConstantForce {{
        func := physicsdirectbodystate3dextension_uset_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetConstantForce {{
        func := physicsdirectbodystate3dextension_uget_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionSetConstantTorque {{
        func := physicsdirectbodystate3dextension_uset_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetConstantTorque {{
        func := physicsdirectbodystate3dextension_uget_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionSetSleepState {{
        func := physicsdirectbodystate3dextension_uset_sleep_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_sleep_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionIsSleeping {{
        func := physicsdirectbodystate3dextension_uis_sleeping[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_sleeping")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactCount {{
        func := physicsdirectbodystate3dextension_uget_contact_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactLocalPosition {{
        func := physicsdirectbodystate3dextension_uget_contact_local_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_local_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactLocalNormal {{
        func := physicsdirectbodystate3dextension_uget_contact_local_normal[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_local_normal")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactImpulse {{
        func := physicsdirectbodystate3dextension_uget_contact_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactLocalShape {{
        func := physicsdirectbodystate3dextension_uget_contact_local_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_local_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactLocalVelocityAtPosition {{
        func := physicsdirectbodystate3dextension_uget_contact_local_velocity_at_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_local_velocity_at_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactCollider {{
        func := physicsdirectbodystate3dextension_uget_contact_collider[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderPosition {{
        func := physicsdirectbodystate3dextension_uget_contact_collider_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderId {{
        func := physicsdirectbodystate3dextension_uget_contact_collider_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderObject {{
        func := physicsdirectbodystate3dextension_uget_contact_collider_object[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_object")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderShape {{
        func := physicsdirectbodystate3dextension_uget_contact_collider_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetContactColliderVelocityAtPosition {{
        func := physicsdirectbodystate3dextension_uget_contact_collider_velocity_at_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contact_collider_velocity_at_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetStep {{
        func := physicsdirectbodystate3dextension_uget_step[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_step")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionIntegrateForces {{
        func := physicsdirectbodystate3dextension_uintegrate_forces[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_integrate_forces")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectBodyState3DExtensionGetSpaceState {{
        func := physicsdirectbodystate3dextension_uget_space_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_space_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState2DExtensionIntersectRay {{
        func := physicsdirectspacestate2dextension_uintersect_ray[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_intersect_ray")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState2DExtensionIntersectPoint {{
        func := physicsdirectspacestate2dextension_uintersect_point[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_intersect_point")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState2DExtensionIntersectShape {{
        func := physicsdirectspacestate2dextension_uintersect_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_intersect_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState2DExtensionCastMotion {{
        func := physicsdirectspacestate2dextension_ucast_motion[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_cast_motion")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState2DExtensionCollideShape {{
        func := physicsdirectspacestate2dextension_ucollide_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_collide_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState2DExtensionRestInfo {{
        func := physicsdirectspacestate2dextension_urest_info[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_rest_info")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState3DExtensionIntersectRay {{
        func := physicsdirectspacestate3dextension_uintersect_ray[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_intersect_ray")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState3DExtensionIntersectPoint {{
        func := physicsdirectspacestate3dextension_uintersect_point[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_intersect_point")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState3DExtensionIntersectShape {{
        func := physicsdirectspacestate3dextension_uintersect_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_intersect_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState3DExtensionCastMotion {{
        func := physicsdirectspacestate3dextension_ucast_motion[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_cast_motion")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState3DExtensionCollideShape {{
        func := physicsdirectspacestate3dextension_ucollide_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_collide_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState3DExtensionRestInfo {{
        func := physicsdirectspacestate3dextension_urest_info[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_rest_info")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsDirectSpaceState3DExtensionGetClosestPointToObjectVolume {{
        func := physicsdirectspacestate3dextension_uget_closest_point_to_object_volume[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_closest_point_to_object_volume")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionWorldBoundaryShapeCreate {{
        func := physicsserver2dextension_uworld_boundary_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_world_boundary_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSeparationRayShapeCreate {{
        func := physicsserver2dextension_useparation_ray_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_separation_ray_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSegmentShapeCreate {{
        func := physicsserver2dextension_usegment_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_segment_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionCircleShapeCreate {{
        func := physicsserver2dextension_ucircle_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_circle_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionRectangleShapeCreate {{
        func := physicsserver2dextension_urectangle_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_rectangle_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionCapsuleShapeCreate {{
        func := physicsserver2dextension_ucapsule_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_capsule_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionConvexPolygonShapeCreate {{
        func := physicsserver2dextension_uconvex_polygon_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_convex_polygon_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionConcavePolygonShapeCreate {{
        func := physicsserver2dextension_uconcave_polygon_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_concave_polygon_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionShapeSetData {{
        func := physicsserver2dextension_ushape_set_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_set_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionShapeSetCustomSolverBias {{
        func := physicsserver2dextension_ushape_set_custom_solver_bias[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_set_custom_solver_bias")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionShapeGetType {{
        func := physicsserver2dextension_ushape_get_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_get_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionShapeGetData {{
        func := physicsserver2dextension_ushape_get_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_get_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionShapeGetCustomSolverBias {{
        func := physicsserver2dextension_ushape_get_custom_solver_bias[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_get_custom_solver_bias")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionShapeCollide {{
        func := physicsserver2dextension_ushape_collide[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_collide")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceCreate {{
        func := physicsserver2dextension_uspace_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceSetActive {{
        func := physicsserver2dextension_uspace_set_active[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_set_active")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceIsActive {{
        func := physicsserver2dextension_uspace_is_active[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_is_active")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceSetParam {{
        func := physicsserver2dextension_uspace_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceGetParam {{
        func := physicsserver2dextension_uspace_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceGetDirectState {{
        func := physicsserver2dextension_uspace_get_direct_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_get_direct_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceSetDebugContacts {{
        func := physicsserver2dextension_uspace_set_debug_contacts[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_set_debug_contacts")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceGetContacts {{
        func := physicsserver2dextension_uspace_get_contacts[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_get_contacts")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSpaceGetContactCount {{
        func := physicsserver2dextension_uspace_get_contact_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_get_contact_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaCreate {{
        func := physicsserver2dextension_uarea_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetSpace {{
        func := physicsserver2dextension_uarea_set_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetSpace {{
        func := physicsserver2dextension_uarea_get_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaAddShape {{
        func := physicsserver2dextension_uarea_add_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_add_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetShape {{
        func := physicsserver2dextension_uarea_set_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetShapeTransform {{
        func := physicsserver2dextension_uarea_set_shape_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_shape_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetShapeDisabled {{
        func := physicsserver2dextension_uarea_set_shape_disabled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_shape_disabled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetShapeCount {{
        func := physicsserver2dextension_uarea_get_shape_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_shape_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetShape {{
        func := physicsserver2dextension_uarea_get_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetShapeTransform {{
        func := physicsserver2dextension_uarea_get_shape_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_shape_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaRemoveShape {{
        func := physicsserver2dextension_uarea_remove_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_remove_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaClearShapes {{
        func := physicsserver2dextension_uarea_clear_shapes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_clear_shapes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaAttachObjectInstanceId {{
        func := physicsserver2dextension_uarea_attach_object_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_attach_object_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetObjectInstanceId {{
        func := physicsserver2dextension_uarea_get_object_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_object_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaAttachCanvasInstanceId {{
        func := physicsserver2dextension_uarea_attach_canvas_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_attach_canvas_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetCanvasInstanceId {{
        func := physicsserver2dextension_uarea_get_canvas_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_canvas_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetParam {{
        func := physicsserver2dextension_uarea_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetTransform {{
        func := physicsserver2dextension_uarea_set_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetParam {{
        func := physicsserver2dextension_uarea_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetTransform {{
        func := physicsserver2dextension_uarea_get_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetCollisionLayer {{
        func := physicsserver2dextension_uarea_set_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetCollisionLayer {{
        func := physicsserver2dextension_uarea_get_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetCollisionMask {{
        func := physicsserver2dextension_uarea_set_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaGetCollisionMask {{
        func := physicsserver2dextension_uarea_get_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetMonitorable {{
        func := physicsserver2dextension_uarea_set_monitorable[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_monitorable")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetPickable {{
        func := physicsserver2dextension_uarea_set_pickable[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_pickable")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetMonitorCallback {{
        func := physicsserver2dextension_uarea_set_monitor_callback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_monitor_callback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionAreaSetAreaMonitorCallback {{
        func := physicsserver2dextension_uarea_set_area_monitor_callback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_area_monitor_callback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyCreate {{
        func := physicsserver2dextension_ubody_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetSpace {{
        func := physicsserver2dextension_ubody_set_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetSpace {{
        func := physicsserver2dextension_ubody_get_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetMode {{
        func := physicsserver2dextension_ubody_set_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetMode {{
        func := physicsserver2dextension_ubody_get_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyAddShape {{
        func := physicsserver2dextension_ubody_add_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetShape {{
        func := physicsserver2dextension_ubody_set_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetShapeTransform {{
        func := physicsserver2dextension_ubody_set_shape_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_shape_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetShapeCount {{
        func := physicsserver2dextension_ubody_get_shape_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_shape_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetShape {{
        func := physicsserver2dextension_ubody_get_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetShapeTransform {{
        func := physicsserver2dextension_ubody_get_shape_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_shape_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetShapeDisabled {{
        func := physicsserver2dextension_ubody_set_shape_disabled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_shape_disabled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetShapeAsOneWayCollision {{
        func := physicsserver2dextension_ubody_set_shape_as_one_way_collision[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_shape_as_one_way_collision")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyRemoveShape {{
        func := physicsserver2dextension_ubody_remove_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_remove_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyClearShapes {{
        func := physicsserver2dextension_ubody_clear_shapes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_clear_shapes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyAttachObjectInstanceId {{
        func := physicsserver2dextension_ubody_attach_object_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_attach_object_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetObjectInstanceId {{
        func := physicsserver2dextension_ubody_get_object_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_object_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyAttachCanvasInstanceId {{
        func := physicsserver2dextension_ubody_attach_canvas_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_attach_canvas_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetCanvasInstanceId {{
        func := physicsserver2dextension_ubody_get_canvas_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_canvas_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetContinuousCollisionDetectionMode {{
        func := physicsserver2dextension_ubody_set_continuous_collision_detection_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_continuous_collision_detection_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetContinuousCollisionDetectionMode {{
        func := physicsserver2dextension_ubody_get_continuous_collision_detection_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_continuous_collision_detection_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetCollisionLayer {{
        func := physicsserver2dextension_ubody_set_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetCollisionLayer {{
        func := physicsserver2dextension_ubody_get_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetCollisionMask {{
        func := physicsserver2dextension_ubody_set_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetCollisionMask {{
        func := physicsserver2dextension_ubody_get_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetCollisionPriority {{
        func := physicsserver2dextension_ubody_set_collision_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_collision_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetCollisionPriority {{
        func := physicsserver2dextension_ubody_get_collision_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_collision_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetParam {{
        func := physicsserver2dextension_ubody_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetParam {{
        func := physicsserver2dextension_ubody_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyResetMassProperties {{
        func := physicsserver2dextension_ubody_reset_mass_properties[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_reset_mass_properties")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetState {{
        func := physicsserver2dextension_ubody_set_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetState {{
        func := physicsserver2dextension_ubody_get_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyApplyCentralImpulse {{
        func := physicsserver2dextension_ubody_apply_central_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_central_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyApplyTorqueImpulse {{
        func := physicsserver2dextension_ubody_apply_torque_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_torque_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyApplyImpulse {{
        func := physicsserver2dextension_ubody_apply_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyApplyCentralForce {{
        func := physicsserver2dextension_ubody_apply_central_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_central_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyApplyForce {{
        func := physicsserver2dextension_ubody_apply_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyApplyTorque {{
        func := physicsserver2dextension_ubody_apply_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyAddConstantCentralForce {{
        func := physicsserver2dextension_ubody_add_constant_central_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_constant_central_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyAddConstantForce {{
        func := physicsserver2dextension_ubody_add_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyAddConstantTorque {{
        func := physicsserver2dextension_ubody_add_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetConstantForce {{
        func := physicsserver2dextension_ubody_set_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetConstantForce {{
        func := physicsserver2dextension_ubody_get_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetConstantTorque {{
        func := physicsserver2dextension_ubody_set_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetConstantTorque {{
        func := physicsserver2dextension_ubody_get_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetAxisVelocity {{
        func := physicsserver2dextension_ubody_set_axis_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_axis_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyAddCollisionException {{
        func := physicsserver2dextension_ubody_add_collision_exception[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_collision_exception")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyRemoveCollisionException {{
        func := physicsserver2dextension_ubody_remove_collision_exception[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_remove_collision_exception")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetCollisionExceptions {{
        func := physicsserver2dextension_ubody_get_collision_exceptions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_collision_exceptions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetMaxContactsReported {{
        func := physicsserver2dextension_ubody_set_max_contacts_reported[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_max_contacts_reported")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetMaxContactsReported {{
        func := physicsserver2dextension_ubody_get_max_contacts_reported[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_max_contacts_reported")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetContactsReportedDepthThreshold {{
        func := physicsserver2dextension_ubody_set_contacts_reported_depth_threshold[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_contacts_reported_depth_threshold")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetContactsReportedDepthThreshold {{
        func := physicsserver2dextension_ubody_get_contacts_reported_depth_threshold[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_contacts_reported_depth_threshold")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetOmitForceIntegration {{
        func := physicsserver2dextension_ubody_set_omit_force_integration[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_omit_force_integration")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyIsOmittingForceIntegration {{
        func := physicsserver2dextension_ubody_is_omitting_force_integration[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_is_omitting_force_integration")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetStateSyncCallback {{
        func := physicsserver2dextension_ubody_set_state_sync_callback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_state_sync_callback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetForceIntegrationCallback {{
        func := physicsserver2dextension_ubody_set_force_integration_callback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_force_integration_callback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyCollideShape {{
        func := physicsserver2dextension_ubody_collide_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_collide_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodySetPickable {{
        func := physicsserver2dextension_ubody_set_pickable[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_pickable")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyGetDirectState {{
        func := physicsserver2dextension_ubody_get_direct_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_direct_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionBodyTestMotion {{
        func := physicsserver2dextension_ubody_test_motion[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_test_motion")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointCreate {{
        func := physicsserver2dextension_ujoint_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointClear {{
        func := physicsserver2dextension_ujoint_clear[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_clear")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointSetParam {{
        func := physicsserver2dextension_ujoint_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointGetParam {{
        func := physicsserver2dextension_ujoint_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointDisableCollisionsBetweenBodies {{
        func := physicsserver2dextension_ujoint_disable_collisions_between_bodies[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_disable_collisions_between_bodies")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointIsDisabledCollisionsBetweenBodies {{
        func := physicsserver2dextension_ujoint_is_disabled_collisions_between_bodies[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_is_disabled_collisions_between_bodies")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointMakePin {{
        func := physicsserver2dextension_ujoint_make_pin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_pin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointMakeGroove {{
        func := physicsserver2dextension_ujoint_make_groove[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_groove")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointMakeDampedSpring {{
        func := physicsserver2dextension_ujoint_make_damped_spring[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_damped_spring")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionPinJointSetFlag {{
        func := physicsserver2dextension_upin_joint_set_flag[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_set_flag")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionPinJointGetFlag {{
        func := physicsserver2dextension_upin_joint_get_flag[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_get_flag")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionPinJointSetParam {{
        func := physicsserver2dextension_upin_joint_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionPinJointGetParam {{
        func := physicsserver2dextension_upin_joint_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionDampedSpringJointSetParam {{
        func := physicsserver2dextension_udamped_spring_joint_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_damped_spring_joint_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionDampedSpringJointGetParam {{
        func := physicsserver2dextension_udamped_spring_joint_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_damped_spring_joint_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionJointGetType {{
        func := physicsserver2dextension_ujoint_get_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_get_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionFreeRid {{
        func := physicsserver2dextension_ufree_rid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_free_rid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSetActive {{
        func := physicsserver2dextension_uset_active[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_active")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionInit {{
        func := physicsserver2dextension_uinit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_init")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionStep {{
        func := physicsserver2dextension_ustep[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_step")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionSync {{
        func := physicsserver2dextension_usync[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_sync")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionFlushQueries {{
        func := physicsserver2dextension_uflush_queries[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_flush_queries")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionEndSync {{
        func := physicsserver2dextension_uend_sync[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_end_sync")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionFinish {{
        func := physicsserver2dextension_ufinish[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_finish")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionIsFlushingQueries {{
        func := physicsserver2dextension_uis_flushing_queries[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_flushing_queries")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer2DExtensionGetProcessInfo {{
        func := physicsserver2dextension_uget_process_info[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_process_info")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionWorldBoundaryShapeCreate {{
        func := physicsserver3dextension_uworld_boundary_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_world_boundary_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSeparationRayShapeCreate {{
        func := physicsserver3dextension_useparation_ray_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_separation_ray_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSphereShapeCreate {{
        func := physicsserver3dextension_usphere_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_sphere_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBoxShapeCreate {{
        func := physicsserver3dextension_ubox_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_box_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionCapsuleShapeCreate {{
        func := physicsserver3dextension_ucapsule_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_capsule_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionCylinderShapeCreate {{
        func := physicsserver3dextension_ucylinder_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_cylinder_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionConvexPolygonShapeCreate {{
        func := physicsserver3dextension_uconvex_polygon_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_convex_polygon_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionConcavePolygonShapeCreate {{
        func := physicsserver3dextension_uconcave_polygon_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_concave_polygon_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionHeightmapShapeCreate {{
        func := physicsserver3dextension_uheightmap_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_heightmap_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionCustomShapeCreate {{
        func := physicsserver3dextension_ucustom_shape_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_custom_shape_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionShapeSetData {{
        func := physicsserver3dextension_ushape_set_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_set_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionShapeSetCustomSolverBias {{
        func := physicsserver3dextension_ushape_set_custom_solver_bias[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_set_custom_solver_bias")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionShapeSetMargin {{
        func := physicsserver3dextension_ushape_set_margin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_set_margin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionShapeGetMargin {{
        func := physicsserver3dextension_ushape_get_margin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_get_margin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionShapeGetType {{
        func := physicsserver3dextension_ushape_get_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_get_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionShapeGetData {{
        func := physicsserver3dextension_ushape_get_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_get_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionShapeGetCustomSolverBias {{
        func := physicsserver3dextension_ushape_get_custom_solver_bias[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shape_get_custom_solver_bias")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceCreate {{
        func := physicsserver3dextension_uspace_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceSetActive {{
        func := physicsserver3dextension_uspace_set_active[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_set_active")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceIsActive {{
        func := physicsserver3dextension_uspace_is_active[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_is_active")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceSetParam {{
        func := physicsserver3dextension_uspace_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceGetParam {{
        func := physicsserver3dextension_uspace_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceGetDirectState {{
        func := physicsserver3dextension_uspace_get_direct_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_get_direct_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceSetDebugContacts {{
        func := physicsserver3dextension_uspace_set_debug_contacts[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_set_debug_contacts")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceGetContacts {{
        func := physicsserver3dextension_uspace_get_contacts[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_get_contacts")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSpaceGetContactCount {{
        func := physicsserver3dextension_uspace_get_contact_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_space_get_contact_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaCreate {{
        func := physicsserver3dextension_uarea_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetSpace {{
        func := physicsserver3dextension_uarea_set_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetSpace {{
        func := physicsserver3dextension_uarea_get_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaAddShape {{
        func := physicsserver3dextension_uarea_add_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_add_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetShape {{
        func := physicsserver3dextension_uarea_set_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetShapeTransform {{
        func := physicsserver3dextension_uarea_set_shape_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_shape_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetShapeDisabled {{
        func := physicsserver3dextension_uarea_set_shape_disabled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_shape_disabled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetShapeCount {{
        func := physicsserver3dextension_uarea_get_shape_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_shape_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetShape {{
        func := physicsserver3dextension_uarea_get_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetShapeTransform {{
        func := physicsserver3dextension_uarea_get_shape_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_shape_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaRemoveShape {{
        func := physicsserver3dextension_uarea_remove_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_remove_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaClearShapes {{
        func := physicsserver3dextension_uarea_clear_shapes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_clear_shapes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaAttachObjectInstanceId {{
        func := physicsserver3dextension_uarea_attach_object_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_attach_object_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetObjectInstanceId {{
        func := physicsserver3dextension_uarea_get_object_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_object_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetParam {{
        func := physicsserver3dextension_uarea_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetTransform {{
        func := physicsserver3dextension_uarea_set_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetParam {{
        func := physicsserver3dextension_uarea_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetTransform {{
        func := physicsserver3dextension_uarea_get_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetCollisionLayer {{
        func := physicsserver3dextension_uarea_set_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetCollisionLayer {{
        func := physicsserver3dextension_uarea_get_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetCollisionMask {{
        func := physicsserver3dextension_uarea_set_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaGetCollisionMask {{
        func := physicsserver3dextension_uarea_get_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_get_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetMonitorable {{
        func := physicsserver3dextension_uarea_set_monitorable[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_monitorable")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetRayPickable {{
        func := physicsserver3dextension_uarea_set_ray_pickable[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_ray_pickable")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetMonitorCallback {{
        func := physicsserver3dextension_uarea_set_monitor_callback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_monitor_callback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionAreaSetAreaMonitorCallback {{
        func := physicsserver3dextension_uarea_set_area_monitor_callback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_area_set_area_monitor_callback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyCreate {{
        func := physicsserver3dextension_ubody_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetSpace {{
        func := physicsserver3dextension_ubody_set_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetSpace {{
        func := physicsserver3dextension_ubody_get_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetMode {{
        func := physicsserver3dextension_ubody_set_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetMode {{
        func := physicsserver3dextension_ubody_get_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyAddShape {{
        func := physicsserver3dextension_ubody_add_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetShape {{
        func := physicsserver3dextension_ubody_set_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetShapeTransform {{
        func := physicsserver3dextension_ubody_set_shape_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_shape_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetShapeDisabled {{
        func := physicsserver3dextension_ubody_set_shape_disabled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_shape_disabled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetShapeCount {{
        func := physicsserver3dextension_ubody_get_shape_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_shape_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetShape {{
        func := physicsserver3dextension_ubody_get_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetShapeTransform {{
        func := physicsserver3dextension_ubody_get_shape_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_shape_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyRemoveShape {{
        func := physicsserver3dextension_ubody_remove_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_remove_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyClearShapes {{
        func := physicsserver3dextension_ubody_clear_shapes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_clear_shapes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyAttachObjectInstanceId {{
        func := physicsserver3dextension_ubody_attach_object_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_attach_object_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetObjectInstanceId {{
        func := physicsserver3dextension_ubody_get_object_instance_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_object_instance_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetEnableContinuousCollisionDetection {{
        func := physicsserver3dextension_ubody_set_enable_continuous_collision_detection[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_enable_continuous_collision_detection")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyIsContinuousCollisionDetectionEnabled {{
        func := physicsserver3dextension_ubody_is_continuous_collision_detection_enabled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_is_continuous_collision_detection_enabled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetCollisionLayer {{
        func := physicsserver3dextension_ubody_set_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetCollisionLayer {{
        func := physicsserver3dextension_ubody_get_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetCollisionMask {{
        func := physicsserver3dextension_ubody_set_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetCollisionMask {{
        func := physicsserver3dextension_ubody_get_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetCollisionPriority {{
        func := physicsserver3dextension_ubody_set_collision_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_collision_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetCollisionPriority {{
        func := physicsserver3dextension_ubody_get_collision_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_collision_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetUserFlags {{
        func := physicsserver3dextension_ubody_set_user_flags[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_user_flags")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetUserFlags {{
        func := physicsserver3dextension_ubody_get_user_flags[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_user_flags")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetParam {{
        func := physicsserver3dextension_ubody_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetParam {{
        func := physicsserver3dextension_ubody_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyResetMassProperties {{
        func := physicsserver3dextension_ubody_reset_mass_properties[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_reset_mass_properties")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetState {{
        func := physicsserver3dextension_ubody_set_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetState {{
        func := physicsserver3dextension_ubody_get_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyApplyCentralImpulse {{
        func := physicsserver3dextension_ubody_apply_central_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_central_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyApplyImpulse {{
        func := physicsserver3dextension_ubody_apply_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyApplyTorqueImpulse {{
        func := physicsserver3dextension_ubody_apply_torque_impulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_torque_impulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyApplyCentralForce {{
        func := physicsserver3dextension_ubody_apply_central_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_central_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyApplyForce {{
        func := physicsserver3dextension_ubody_apply_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyApplyTorque {{
        func := physicsserver3dextension_ubody_apply_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_apply_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyAddConstantCentralForce {{
        func := physicsserver3dextension_ubody_add_constant_central_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_constant_central_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyAddConstantForce {{
        func := physicsserver3dextension_ubody_add_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyAddConstantTorque {{
        func := physicsserver3dextension_ubody_add_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetConstantForce {{
        func := physicsserver3dextension_ubody_set_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetConstantForce {{
        func := physicsserver3dextension_ubody_get_constant_force[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_constant_force")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetConstantTorque {{
        func := physicsserver3dextension_ubody_set_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetConstantTorque {{
        func := physicsserver3dextension_ubody_get_constant_torque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_constant_torque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetAxisVelocity {{
        func := physicsserver3dextension_ubody_set_axis_velocity[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_axis_velocity")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetAxisLock {{
        func := physicsserver3dextension_ubody_set_axis_lock[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_axis_lock")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyIsAxisLocked {{
        func := physicsserver3dextension_ubody_is_axis_locked[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_is_axis_locked")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyAddCollisionException {{
        func := physicsserver3dextension_ubody_add_collision_exception[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_add_collision_exception")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyRemoveCollisionException {{
        func := physicsserver3dextension_ubody_remove_collision_exception[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_remove_collision_exception")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetCollisionExceptions {{
        func := physicsserver3dextension_ubody_get_collision_exceptions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_collision_exceptions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetMaxContactsReported {{
        func := physicsserver3dextension_ubody_set_max_contacts_reported[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_max_contacts_reported")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetMaxContactsReported {{
        func := physicsserver3dextension_ubody_get_max_contacts_reported[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_max_contacts_reported")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetContactsReportedDepthThreshold {{
        func := physicsserver3dextension_ubody_set_contacts_reported_depth_threshold[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_contacts_reported_depth_threshold")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetContactsReportedDepthThreshold {{
        func := physicsserver3dextension_ubody_get_contacts_reported_depth_threshold[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_contacts_reported_depth_threshold")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetOmitForceIntegration {{
        func := physicsserver3dextension_ubody_set_omit_force_integration[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_omit_force_integration")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyIsOmittingForceIntegration {{
        func := physicsserver3dextension_ubody_is_omitting_force_integration[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_is_omitting_force_integration")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetStateSyncCallback {{
        func := physicsserver3dextension_ubody_set_state_sync_callback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_state_sync_callback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetForceIntegrationCallback {{
        func := physicsserver3dextension_ubody_set_force_integration_callback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_force_integration_callback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodySetRayPickable {{
        func := physicsserver3dextension_ubody_set_ray_pickable[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_set_ray_pickable")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyTestMotion {{
        func := physicsserver3dextension_ubody_test_motion[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_test_motion")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionBodyGetDirectState {{
        func := physicsserver3dextension_ubody_get_direct_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_body_get_direct_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyCreate {{
        func := physicsserver3dextension_usoft_body_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyUpdateRenderingServer {{
        func := physicsserver3dextension_usoft_body_update_rendering_server[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_update_rendering_server")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetSpace {{
        func := physicsserver3dextension_usoft_body_set_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetSpace {{
        func := physicsserver3dextension_usoft_body_get_space[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_space")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetRayPickable {{
        func := physicsserver3dextension_usoft_body_set_ray_pickable[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_ray_pickable")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetCollisionLayer {{
        func := physicsserver3dextension_usoft_body_set_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetCollisionLayer {{
        func := physicsserver3dextension_usoft_body_get_collision_layer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_collision_layer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetCollisionMask {{
        func := physicsserver3dextension_usoft_body_set_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetCollisionMask {{
        func := physicsserver3dextension_usoft_body_get_collision_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_collision_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyAddCollisionException {{
        func := physicsserver3dextension_usoft_body_add_collision_exception[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_add_collision_exception")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyRemoveCollisionException {{
        func := physicsserver3dextension_usoft_body_remove_collision_exception[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_remove_collision_exception")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetCollisionExceptions {{
        func := physicsserver3dextension_usoft_body_get_collision_exceptions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_collision_exceptions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetState {{
        func := physicsserver3dextension_usoft_body_set_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetState {{
        func := physicsserver3dextension_usoft_body_get_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetTransform {{
        func := physicsserver3dextension_usoft_body_set_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetSimulationPrecision {{
        func := physicsserver3dextension_usoft_body_set_simulation_precision[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_simulation_precision")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetSimulationPrecision {{
        func := physicsserver3dextension_usoft_body_get_simulation_precision[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_simulation_precision")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetTotalMass {{
        func := physicsserver3dextension_usoft_body_set_total_mass[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_total_mass")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetTotalMass {{
        func := physicsserver3dextension_usoft_body_get_total_mass[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_total_mass")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetLinearStiffness {{
        func := physicsserver3dextension_usoft_body_set_linear_stiffness[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_linear_stiffness")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetLinearStiffness {{
        func := physicsserver3dextension_usoft_body_get_linear_stiffness[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_linear_stiffness")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetPressureCoefficient {{
        func := physicsserver3dextension_usoft_body_set_pressure_coefficient[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_pressure_coefficient")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetPressureCoefficient {{
        func := physicsserver3dextension_usoft_body_get_pressure_coefficient[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_pressure_coefficient")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetDampingCoefficient {{
        func := physicsserver3dextension_usoft_body_set_damping_coefficient[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_damping_coefficient")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetDampingCoefficient {{
        func := physicsserver3dextension_usoft_body_get_damping_coefficient[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_damping_coefficient")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetDragCoefficient {{
        func := physicsserver3dextension_usoft_body_set_drag_coefficient[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_drag_coefficient")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetDragCoefficient {{
        func := physicsserver3dextension_usoft_body_get_drag_coefficient[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_drag_coefficient")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodySetMesh {{
        func := physicsserver3dextension_usoft_body_set_mesh[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_set_mesh")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetBounds {{
        func := physicsserver3dextension_usoft_body_get_bounds[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_bounds")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyMovePoint {{
        func := physicsserver3dextension_usoft_body_move_point[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_move_point")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyGetPointGlobalPosition {{
        func := physicsserver3dextension_usoft_body_get_point_global_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_get_point_global_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyRemoveAllPinnedPoints {{
        func := physicsserver3dextension_usoft_body_remove_all_pinned_points[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_remove_all_pinned_points")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyPinPoint {{
        func := physicsserver3dextension_usoft_body_pin_point[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_pin_point")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSoftBodyIsPointPinned {{
        func := physicsserver3dextension_usoft_body_is_point_pinned[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_soft_body_is_point_pinned")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointCreate {{
        func := physicsserver3dextension_ujoint_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointClear {{
        func := physicsserver3dextension_ujoint_clear[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_clear")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointMakePin {{
        func := physicsserver3dextension_ujoint_make_pin[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_pin")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionPinJointSetParam {{
        func := physicsserver3dextension_upin_joint_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionPinJointGetParam {{
        func := physicsserver3dextension_upin_joint_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionPinJointSetLocalA {{
        func := physicsserver3dextension_upin_joint_set_local_a[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_set_local_a")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionPinJointGetLocalA {{
        func := physicsserver3dextension_upin_joint_get_local_a[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_get_local_a")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionPinJointSetLocalB {{
        func := physicsserver3dextension_upin_joint_set_local_b[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_set_local_b")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionPinJointGetLocalB {{
        func := physicsserver3dextension_upin_joint_get_local_b[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pin_joint_get_local_b")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointMakeHinge {{
        func := physicsserver3dextension_ujoint_make_hinge[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_hinge")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointMakeHingeSimple {{
        func := physicsserver3dextension_ujoint_make_hinge_simple[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_hinge_simple")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionHingeJointSetParam {{
        func := physicsserver3dextension_uhinge_joint_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_hinge_joint_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionHingeJointGetParam {{
        func := physicsserver3dextension_uhinge_joint_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_hinge_joint_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionHingeJointSetFlag {{
        func := physicsserver3dextension_uhinge_joint_set_flag[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_hinge_joint_set_flag")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionHingeJointGetFlag {{
        func := physicsserver3dextension_uhinge_joint_get_flag[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_hinge_joint_get_flag")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointMakeSlider {{
        func := physicsserver3dextension_ujoint_make_slider[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_slider")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSliderJointSetParam {{
        func := physicsserver3dextension_uslider_joint_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_slider_joint_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSliderJointGetParam {{
        func := physicsserver3dextension_uslider_joint_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_slider_joint_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointMakeConeTwist {{
        func := physicsserver3dextension_ujoint_make_cone_twist[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_cone_twist")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionConeTwistJointSetParam {{
        func := physicsserver3dextension_ucone_twist_joint_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_cone_twist_joint_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionConeTwistJointGetParam {{
        func := physicsserver3dextension_ucone_twist_joint_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_cone_twist_joint_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointMakeGeneric6dof {{
        func := physicsserver3dextension_ujoint_make_generic_6dof[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_make_generic_6dof")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionGeneric6dofJointSetParam {{
        func := physicsserver3dextension_ugeneric_6dof_joint_set_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_generic_6dof_joint_set_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionGeneric6dofJointGetParam {{
        func := physicsserver3dextension_ugeneric_6dof_joint_get_param[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_generic_6dof_joint_get_param")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionGeneric6dofJointSetFlag {{
        func := physicsserver3dextension_ugeneric_6dof_joint_set_flag[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_generic_6dof_joint_set_flag")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionGeneric6dofJointGetFlag {{
        func := physicsserver3dextension_ugeneric_6dof_joint_get_flag[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_generic_6dof_joint_get_flag")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointGetType {{
        func := physicsserver3dextension_ujoint_get_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_get_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointSetSolverPriority {{
        func := physicsserver3dextension_ujoint_set_solver_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_set_solver_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointGetSolverPriority {{
        func := physicsserver3dextension_ujoint_get_solver_priority[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_get_solver_priority")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointDisableCollisionsBetweenBodies {{
        func := physicsserver3dextension_ujoint_disable_collisions_between_bodies[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_disable_collisions_between_bodies")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionJointIsDisabledCollisionsBetweenBodies {{
        func := physicsserver3dextension_ujoint_is_disabled_collisions_between_bodies[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_joint_is_disabled_collisions_between_bodies")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionFreeRid {{
        func := physicsserver3dextension_ufree_rid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_free_rid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSetActive {{
        func := physicsserver3dextension_uset_active[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_active")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionInit {{
        func := physicsserver3dextension_uinit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_init")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionStep {{
        func := physicsserver3dextension_ustep[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_step")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionSync {{
        func := physicsserver3dextension_usync[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_sync")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionFlushQueries {{
        func := physicsserver3dextension_uflush_queries[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_flush_queries")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionEndSync {{
        func := physicsserver3dextension_uend_sync[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_end_sync")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionFinish {{
        func := physicsserver3dextension_ufinish[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_finish")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionIsFlushingQueries {{
        func := physicsserver3dextension_uis_flushing_queries[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_flushing_queries")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DExtensionGetProcessInfo {{
        func := physicsserver3dextension_uget_process_info[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_process_info")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DRenderingServerHandlerSetVertex {{
        func := physicsserver3drenderingserverhandler_uset_vertex[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_vertex")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DRenderingServerHandlerSetNormal {{
        func := physicsserver3drenderingserverhandler_uset_normal[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_normal")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPhysicsServer3DRenderingServerHandlerSetAabb {{
        func := physicsserver3drenderingserverhandler_uset_aabb[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_aabb")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IPrimitiveMeshCreateMeshArray {{
        func := primitivemesh_ucreate_mesh_array[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_mesh_array")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IRangeValueChanged {{
        func := range_uvalue_changed[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_value_changed")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IRenderSceneBuffersExtensionConfigure {{
        func := renderscenebuffersextension_uconfigure[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_configure")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IRenderSceneBuffersExtensionSetFsrSharpness {{
        func := renderscenebuffersextension_uset_fsr_sharpness[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_fsr_sharpness")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IRenderSceneBuffersExtensionSetTextureMipmapBias {{
        func := renderscenebuffersextension_uset_texture_mipmap_bias[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_texture_mipmap_bias")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IRenderSceneBuffersExtensionSetUseDebanding {{
        func := renderscenebuffersextension_uset_use_debanding[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_use_debanding")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceSetupLocalToScene {{
        func := resource_usetup_local_to_scene[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_setup_local_to_scene")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderGetRecognizedExtensions {{
        func := resourceformatloader_uget_recognized_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_recognized_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderRecognizePath {{
        func := resourceformatloader_urecognize_path[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_recognize_path")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderHandlesType {{
        func := resourceformatloader_uhandles_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handles_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderGetResourceType {{
        func := resourceformatloader_uget_resource_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_resource_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderGetResourceScriptClass {{
        func := resourceformatloader_uget_resource_script_class[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_resource_script_class")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderGetResourceUid {{
        func := resourceformatloader_uget_resource_uid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_resource_uid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderGetDependencies {{
        func := resourceformatloader_uget_dependencies[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_dependencies")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderRenameDependencies {{
        func := resourceformatloader_urename_dependencies[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_rename_dependencies")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderExists {{
        func := resourceformatloader_uexists[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_exists")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderGetClassesUsed {{
        func := resourceformatloader_uget_classes_used[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_classes_used")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatLoaderLoad {{
        func := resourceformatloader_uload[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_load")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatSaverSave {{
        func := resourceformatsaver_usave[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_save")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatSaverSetUid {{
        func := resourceformatsaver_uset_uid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_uid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatSaverRecognize {{
        func := resourceformatsaver_urecognize[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_recognize")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatSaverGetRecognizedExtensions {{
        func := resourceformatsaver_uget_recognized_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_recognized_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IResourceFormatSaverRecognizePath {{
        func := resourceformatsaver_urecognize_path[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_recognize_path")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IRichTextEffectProcessCustomFx {{
        func := richtexteffect_uprocess_custom_fx[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_process_custom_fx")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IRigidBody2DIntegrateForces {{
        func := rigidbody2d_uintegrate_forces[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_integrate_forces")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IRigidBody3DIntegrateForces {{
        func := rigidbody3d_uintegrate_forces[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_integrate_forces")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionEditorCanReloadFromFile {{
        func := scriptextension_ueditor_can_reload_from_file[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_editor_can_reload_from_file")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionPlaceholderErased {{
        func := scriptextension_uplaceholder_erased[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_placeholder_erased")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionCanInstantiate {{
        func := scriptextension_ucan_instantiate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_can_instantiate")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetBaseScript {{
        func := scriptextension_uget_base_script[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_base_script")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetGlobalName {{
        func := scriptextension_uget_global_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_global_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionInheritsScript {{
        func := scriptextension_uinherits_script[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_inherits_script")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetInstanceBaseType {{
        func := scriptextension_uget_instance_base_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_instance_base_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionInstanceCreate {{
        func := scriptextension_uinstance_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_instance_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionPlaceholderInstanceCreate {{
        func := scriptextension_uplaceholder_instance_create[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_placeholder_instance_create")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionInstanceHas {{
        func := scriptextension_uinstance_has[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_instance_has")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionHasSourceCode {{
        func := scriptextension_uhas_source_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_source_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetSourceCode {{
        func := scriptextension_uget_source_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_source_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionSetSourceCode {{
        func := scriptextension_uset_source_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_source_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionReload {{
        func := scriptextension_ureload[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_reload")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetDocumentation {{
        func := scriptextension_uget_documentation[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_documentation")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetClassIconPath {{
        func := scriptextension_uget_class_icon_path[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_class_icon_path")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionHasMethod {{
        func := scriptextension_uhas_method[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_method")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionHasStaticMethod {{
        func := scriptextension_uhas_static_method[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_static_method")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetMethodInfo {{
        func := scriptextension_uget_method_info[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_method_info")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionIsTool {{
        func := scriptextension_uis_tool[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_tool")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionIsValid {{
        func := scriptextension_uis_valid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_valid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionIsAbstract {{
        func := scriptextension_uis_abstract[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_abstract")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetLanguage {{
        func := scriptextension_uget_language[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_language")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionHasScriptSignal {{
        func := scriptextension_uhas_script_signal[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_script_signal")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetScriptSignalList {{
        func := scriptextension_uget_script_signal_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_script_signal_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionHasPropertyDefaultValue {{
        func := scriptextension_uhas_property_default_value[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_property_default_value")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetPropertyDefaultValue {{
        func := scriptextension_uget_property_default_value[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_property_default_value")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionUpdateExports {{
        func := scriptextension_uupdate_exports[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_update_exports")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetScriptMethodList {{
        func := scriptextension_uget_script_method_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_script_method_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetScriptPropertyList {{
        func := scriptextension_uget_script_property_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_script_property_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetMemberLine {{
        func := scriptextension_uget_member_line[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_member_line")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetConstants {{
        func := scriptextension_uget_constants[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_constants")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetMembers {{
        func := scriptextension_uget_members[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_members")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionIsPlaceholderFallbackEnabled {{
        func := scriptextension_uis_placeholder_fallback_enabled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_placeholder_fallback_enabled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptExtensionGetRpcConfig {{
        func := scriptextension_uget_rpc_config[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_rpc_config")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetName {{
        func := scriptlanguageextension_uget_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionInit {{
        func := scriptlanguageextension_uinit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_init")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetType {{
        func := scriptlanguageextension_uget_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetExtension {{
        func := scriptlanguageextension_uget_extension[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_extension")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionFinish {{
        func := scriptlanguageextension_ufinish[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_finish")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetReservedWords {{
        func := scriptlanguageextension_uget_reserved_words[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_reserved_words")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionIsControlFlowKeyword {{
        func := scriptlanguageextension_uis_control_flow_keyword[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_control_flow_keyword")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetCommentDelimiters {{
        func := scriptlanguageextension_uget_comment_delimiters[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_comment_delimiters")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetDocCommentDelimiters {{
        func := scriptlanguageextension_uget_doc_comment_delimiters[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_doc_comment_delimiters")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetStringDelimiters {{
        func := scriptlanguageextension_uget_string_delimiters[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_string_delimiters")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionMakeTemplate {{
        func := scriptlanguageextension_umake_template[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_make_template")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetBuiltInTemplates {{
        func := scriptlanguageextension_uget_built_in_templates[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_built_in_templates")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionIsUsingTemplates {{
        func := scriptlanguageextension_uis_using_templates[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_using_templates")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionValidate {{
        func := scriptlanguageextension_uvalidate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_validate")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionValidatePath {{
        func := scriptlanguageextension_uvalidate_path[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_validate_path")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionCreateScript {{
        func := scriptlanguageextension_ucreate_script[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_script")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionHasNamedClasses {{
        func := scriptlanguageextension_uhas_named_classes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_named_classes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionSupportsBuiltinMode {{
        func := scriptlanguageextension_usupports_builtin_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_supports_builtin_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionSupportsDocumentation {{
        func := scriptlanguageextension_usupports_documentation[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_supports_documentation")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionCanInheritFromFile {{
        func := scriptlanguageextension_ucan_inherit_from_file[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_can_inherit_from_file")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionFindFunction {{
        func := scriptlanguageextension_ufind_function[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_find_function")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionMakeFunction {{
        func := scriptlanguageextension_umake_function[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_make_function")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionOpenInExternalEditor {{
        func := scriptlanguageextension_uopen_in_external_editor[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_open_in_external_editor")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionOverridesExternalEditor {{
        func := scriptlanguageextension_uoverrides_external_editor[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_overrides_external_editor")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionCompleteCode {{
        func := scriptlanguageextension_ucomplete_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_complete_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionLookupCode {{
        func := scriptlanguageextension_ulookup_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_lookup_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionAutoIndentCode {{
        func := scriptlanguageextension_uauto_indent_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_auto_indent_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionAddGlobalConstant {{
        func := scriptlanguageextension_uadd_global_constant[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_global_constant")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionAddNamedGlobalConstant {{
        func := scriptlanguageextension_uadd_named_global_constant[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_named_global_constant")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionRemoveNamedGlobalConstant {{
        func := scriptlanguageextension_uremove_named_global_constant[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_remove_named_global_constant")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionThreadEnter {{
        func := scriptlanguageextension_uthread_enter[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_thread_enter")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionThreadExit {{
        func := scriptlanguageextension_uthread_exit[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_thread_exit")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetError {{
        func := scriptlanguageextension_udebug_get_error[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_error")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetStackLevelCount {{
        func := scriptlanguageextension_udebug_get_stack_level_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_stack_level_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetStackLevelLine {{
        func := scriptlanguageextension_udebug_get_stack_level_line[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_stack_level_line")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetStackLevelFunction {{
        func := scriptlanguageextension_udebug_get_stack_level_function[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_stack_level_function")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetStackLevelLocals {{
        func := scriptlanguageextension_udebug_get_stack_level_locals[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_stack_level_locals")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetStackLevelMembers {{
        func := scriptlanguageextension_udebug_get_stack_level_members[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_stack_level_members")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetStackLevelInstance {{
        func := scriptlanguageextension_udebug_get_stack_level_instance[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_stack_level_instance")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetGlobals {{
        func := scriptlanguageextension_udebug_get_globals[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_globals")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugParseStackLevelExpression {{
        func := scriptlanguageextension_udebug_parse_stack_level_expression[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_parse_stack_level_expression")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionDebugGetCurrentStackInfo {{
        func := scriptlanguageextension_udebug_get_current_stack_info[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_debug_get_current_stack_info")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionReloadAllScripts {{
        func := scriptlanguageextension_ureload_all_scripts[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_reload_all_scripts")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionReloadToolScript {{
        func := scriptlanguageextension_ureload_tool_script[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_reload_tool_script")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetRecognizedExtensions {{
        func := scriptlanguageextension_uget_recognized_extensions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_recognized_extensions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetPublicFunctions {{
        func := scriptlanguageextension_uget_public_functions[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_public_functions")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetPublicConstants {{
        func := scriptlanguageextension_uget_public_constants[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_public_constants")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetPublicAnnotations {{
        func := scriptlanguageextension_uget_public_annotations[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_public_annotations")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionProfilingStart {{
        func := scriptlanguageextension_uprofiling_start[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_profiling_start")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionProfilingStop {{
        func := scriptlanguageextension_uprofiling_stop[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_profiling_stop")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionProfilingGetAccumulatedData {{
        func := scriptlanguageextension_uprofiling_get_accumulated_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_profiling_get_accumulated_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionProfilingGetFrameData {{
        func := scriptlanguageextension_uprofiling_get_frame_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_profiling_get_frame_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionFrame {{
        func := scriptlanguageextension_uframe[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_frame")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionHandlesGlobalClassType {{
        func := scriptlanguageextension_uhandles_global_class_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handles_global_class_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IScriptLanguageExtensionGetGlobalClassName {{
        func := scriptlanguageextension_uget_global_class_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_global_class_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ISkeletonModification2DExecute {{
        func := skeletonmodification2d_uexecute[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_execute")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ISkeletonModification2DSetupModification {{
        func := skeletonmodification2d_usetup_modification[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_setup_modification")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ISkeletonModification2DDrawEditorGizmo {{
        func := skeletonmodification2d_udraw_editor_gizmo[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_draw_editor_gizmo")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStreamPeerExtensionGetData {{
        func := streampeerextension_uget_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStreamPeerExtensionGetPartialData {{
        func := streampeerextension_uget_partial_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_partial_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStreamPeerExtensionPutData {{
        func := streampeerextension_uput_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_put_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStreamPeerExtensionPutPartialData {{
        func := streampeerextension_uput_partial_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_put_partial_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStreamPeerExtensionGetAvailableBytes {{
        func := streampeerextension_uget_available_bytes[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_available_bytes")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStyleBoxDraw {{
        func := stylebox_udraw[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_draw")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStyleBoxGetDrawRect {{
        func := stylebox_uget_draw_rect[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_draw_rect")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStyleBoxGetMinimumSize {{
        func := stylebox_uget_minimum_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_minimum_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IStyleBoxTestMask {{
        func := stylebox_utest_mask[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_test_mask")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ISubViewportContainerPropagateInputEvent {{
        func := subviewportcontainer_upropagate_input_event[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_propagate_input_event")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ISyntaxHighlighterGetLineSyntaxHighlighting {{
        func := syntaxhighlighter_uget_line_syntax_highlighting[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_line_syntax_highlighting")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ISyntaxHighlighterClearHighlightingCache {{
        func := syntaxhighlighter_uclear_highlighting_cache[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_clear_highlighting_cache")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ISyntaxHighlighterUpdateCache {{
        func := syntaxhighlighter_uupdate_cache[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_update_cache")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextEditHandleUnicodeInput {{
        func := textedit_uhandle_unicode_input[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_handle_unicode_input")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextEditBackspace {{
        func := textedit_ubackspace[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_backspace")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextEditCut {{
        func := textedit_ucut[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_cut")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextEditCopy {{
        func := textedit_ucopy[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_copy")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextEditPaste {{
        func := textedit_upaste[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_paste")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextEditPastePrimaryClipboard {{
        func := textedit_upaste_primary_clipboard[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_paste_primary_clipboard")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionHasFeature {{
        func := textserverextension_uhas_feature[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_feature")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionGetName {{
        func := textserverextension_uget_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionGetFeatures {{
        func := textserverextension_uget_features[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_features")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFreeRid {{
        func := textserverextension_ufree_rid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_free_rid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionHas {{
        func := textserverextension_uhas[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionLoadSupportData {{
        func := textserverextension_uload_support_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_load_support_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionGetSupportDataFilename {{
        func := textserverextension_uget_support_data_filename[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_support_data_filename")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionGetSupportDataInfo {{
        func := textserverextension_uget_support_data_info[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_support_data_info")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionSaveSupportData {{
        func := textserverextension_usave_support_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_save_support_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionIsLocaleRightToLeft {{
        func := textserverextension_uis_locale_right_to_left[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_locale_right_to_left")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionNameToTag {{
        func := textserverextension_uname_to_tag[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_name_to_tag")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionTagToName {{
        func := textserverextension_utag_to_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_tag_to_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionCreateFont {{
        func := textserverextension_ucreate_font[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_font")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionCreateFontLinkedVariation {{
        func := textserverextension_ucreate_font_linked_variation[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_font_linked_variation")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetData {{
        func := textserverextension_ufont_set_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetDataPtr {{
        func := textserverextension_ufont_set_data_ptr[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_data_ptr")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetFaceIndex {{
        func := textserverextension_ufont_set_face_index[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_face_index")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetFaceIndex {{
        func := textserverextension_ufont_get_face_index[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_face_index")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetFaceCount {{
        func := textserverextension_ufont_get_face_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_face_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetStyle {{
        func := textserverextension_ufont_set_style[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_style")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetStyle {{
        func := textserverextension_ufont_get_style[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_style")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetName {{
        func := textserverextension_ufont_set_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetName {{
        func := textserverextension_ufont_get_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetOtNameStrings {{
        func := textserverextension_ufont_get_ot_name_strings[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_ot_name_strings")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetStyleName {{
        func := textserverextension_ufont_set_style_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_style_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetStyleName {{
        func := textserverextension_ufont_get_style_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_style_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetWeight {{
        func := textserverextension_ufont_set_weight[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_weight")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetWeight {{
        func := textserverextension_ufont_get_weight[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_weight")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetStretch {{
        func := textserverextension_ufont_set_stretch[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_stretch")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetStretch {{
        func := textserverextension_ufont_get_stretch[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_stretch")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetAntialiasing {{
        func := textserverextension_ufont_set_antialiasing[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_antialiasing")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetAntialiasing {{
        func := textserverextension_ufont_get_antialiasing[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_antialiasing")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetGenerateMipmaps {{
        func := textserverextension_ufont_set_generate_mipmaps[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_generate_mipmaps")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGenerateMipmaps {{
        func := textserverextension_ufont_get_generate_mipmaps[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_generate_mipmaps")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetMultichannelSignedDistanceField {{
        func := textserverextension_ufont_set_multichannel_signed_distance_field[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_multichannel_signed_distance_field")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontIsMultichannelSignedDistanceField {{
        func := textserverextension_ufont_is_multichannel_signed_distance_field[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_is_multichannel_signed_distance_field")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetMsdfPixelRange {{
        func := textserverextension_ufont_set_msdf_pixel_range[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_msdf_pixel_range")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetMsdfPixelRange {{
        func := textserverextension_ufont_get_msdf_pixel_range[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_msdf_pixel_range")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetMsdfSize {{
        func := textserverextension_ufont_set_msdf_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_msdf_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetMsdfSize {{
        func := textserverextension_ufont_get_msdf_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_msdf_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetFixedSize {{
        func := textserverextension_ufont_set_fixed_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_fixed_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetFixedSize {{
        func := textserverextension_ufont_get_fixed_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_fixed_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetFixedSizeScaleMode {{
        func := textserverextension_ufont_set_fixed_size_scale_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_fixed_size_scale_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetFixedSizeScaleMode {{
        func := textserverextension_ufont_get_fixed_size_scale_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_fixed_size_scale_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetAllowSystemFallback {{
        func := textserverextension_ufont_set_allow_system_fallback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_allow_system_fallback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontIsAllowSystemFallback {{
        func := textserverextension_ufont_is_allow_system_fallback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_is_allow_system_fallback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetForceAutohinter {{
        func := textserverextension_ufont_set_force_autohinter[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_force_autohinter")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontIsForceAutohinter {{
        func := textserverextension_ufont_is_force_autohinter[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_is_force_autohinter")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetHinting {{
        func := textserverextension_ufont_set_hinting[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_hinting")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetHinting {{
        func := textserverextension_ufont_get_hinting[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_hinting")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetSubpixelPositioning {{
        func := textserverextension_ufont_set_subpixel_positioning[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_subpixel_positioning")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetSubpixelPositioning {{
        func := textserverextension_ufont_get_subpixel_positioning[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_subpixel_positioning")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetEmbolden {{
        func := textserverextension_ufont_set_embolden[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_embolden")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetEmbolden {{
        func := textserverextension_ufont_get_embolden[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_embolden")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetSpacing {{
        func := textserverextension_ufont_set_spacing[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_spacing")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetSpacing {{
        func := textserverextension_ufont_get_spacing[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_spacing")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetTransform {{
        func := textserverextension_ufont_set_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetTransform {{
        func := textserverextension_ufont_get_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetVariationCoordinates {{
        func := textserverextension_ufont_set_variation_coordinates[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_variation_coordinates")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetVariationCoordinates {{
        func := textserverextension_ufont_get_variation_coordinates[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_variation_coordinates")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetOversampling {{
        func := textserverextension_ufont_set_oversampling[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_oversampling")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetOversampling {{
        func := textserverextension_ufont_get_oversampling[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_oversampling")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetSizeCacheList {{
        func := textserverextension_ufont_get_size_cache_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_size_cache_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontClearSizeCache {{
        func := textserverextension_ufont_clear_size_cache[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_clear_size_cache")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontRemoveSizeCache {{
        func := textserverextension_ufont_remove_size_cache[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_remove_size_cache")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetAscent {{
        func := textserverextension_ufont_set_ascent[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_ascent")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetAscent {{
        func := textserverextension_ufont_get_ascent[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_ascent")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetDescent {{
        func := textserverextension_ufont_set_descent[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_descent")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetDescent {{
        func := textserverextension_ufont_get_descent[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_descent")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetUnderlinePosition {{
        func := textserverextension_ufont_set_underline_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_underline_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetUnderlinePosition {{
        func := textserverextension_ufont_get_underline_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_underline_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetUnderlineThickness {{
        func := textserverextension_ufont_set_underline_thickness[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_underline_thickness")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetUnderlineThickness {{
        func := textserverextension_ufont_get_underline_thickness[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_underline_thickness")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetScale {{
        func := textserverextension_ufont_set_scale[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_scale")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetScale {{
        func := textserverextension_ufont_get_scale[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_scale")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetTextureCount {{
        func := textserverextension_ufont_get_texture_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_texture_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontClearTextures {{
        func := textserverextension_ufont_clear_textures[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_clear_textures")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontRemoveTexture {{
        func := textserverextension_ufont_remove_texture[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_remove_texture")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetTextureImage {{
        func := textserverextension_ufont_set_texture_image[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_texture_image")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetTextureImage {{
        func := textserverextension_ufont_get_texture_image[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_texture_image")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetTextureOffsets {{
        func := textserverextension_ufont_set_texture_offsets[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_texture_offsets")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetTextureOffsets {{
        func := textserverextension_ufont_get_texture_offsets[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_texture_offsets")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphList {{
        func := textserverextension_ufont_get_glyph_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontClearGlyphs {{
        func := textserverextension_ufont_clear_glyphs[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_clear_glyphs")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontRemoveGlyph {{
        func := textserverextension_ufont_remove_glyph[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_remove_glyph")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphAdvance {{
        func := textserverextension_ufont_get_glyph_advance[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_advance")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetGlyphAdvance {{
        func := textserverextension_ufont_set_glyph_advance[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_glyph_advance")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphOffset {{
        func := textserverextension_ufont_get_glyph_offset[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_offset")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetGlyphOffset {{
        func := textserverextension_ufont_set_glyph_offset[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_glyph_offset")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphSize {{
        func := textserverextension_ufont_get_glyph_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetGlyphSize {{
        func := textserverextension_ufont_set_glyph_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_glyph_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphUvRect {{
        func := textserverextension_ufont_get_glyph_uv_rect[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_uv_rect")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetGlyphUvRect {{
        func := textserverextension_ufont_set_glyph_uv_rect[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_glyph_uv_rect")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphTextureIdx {{
        func := textserverextension_ufont_get_glyph_texture_idx[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_texture_idx")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetGlyphTextureIdx {{
        func := textserverextension_ufont_set_glyph_texture_idx[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_glyph_texture_idx")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphTextureRid {{
        func := textserverextension_ufont_get_glyph_texture_rid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_texture_rid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphTextureSize {{
        func := textserverextension_ufont_get_glyph_texture_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_texture_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphContours {{
        func := textserverextension_ufont_get_glyph_contours[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_contours")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetKerningList {{
        func := textserverextension_ufont_get_kerning_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_kerning_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontClearKerningMap {{
        func := textserverextension_ufont_clear_kerning_map[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_clear_kerning_map")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontRemoveKerning {{
        func := textserverextension_ufont_remove_kerning[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_remove_kerning")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetKerning {{
        func := textserverextension_ufont_set_kerning[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_kerning")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetKerning {{
        func := textserverextension_ufont_get_kerning[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_kerning")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlyphIndex {{
        func := textserverextension_ufont_get_glyph_index[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_glyph_index")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetCharFromGlyphIndex {{
        func := textserverextension_ufont_get_char_from_glyph_index[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_char_from_glyph_index")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontHasChar {{
        func := textserverextension_ufont_has_char[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_has_char")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetSupportedChars {{
        func := textserverextension_ufont_get_supported_chars[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_supported_chars")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontRenderRange {{
        func := textserverextension_ufont_render_range[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_render_range")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontRenderGlyph {{
        func := textserverextension_ufont_render_glyph[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_render_glyph")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontDrawGlyph {{
        func := textserverextension_ufont_draw_glyph[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_draw_glyph")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontDrawGlyphOutline {{
        func := textserverextension_ufont_draw_glyph_outline[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_draw_glyph_outline")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontIsLanguageSupported {{
        func := textserverextension_ufont_is_language_supported[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_is_language_supported")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetLanguageSupportOverride {{
        func := textserverextension_ufont_set_language_support_override[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_language_support_override")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetLanguageSupportOverride {{
        func := textserverextension_ufont_get_language_support_override[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_language_support_override")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontRemoveLanguageSupportOverride {{
        func := textserverextension_ufont_remove_language_support_override[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_remove_language_support_override")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetLanguageSupportOverrides {{
        func := textserverextension_ufont_get_language_support_overrides[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_language_support_overrides")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontIsScriptSupported {{
        func := textserverextension_ufont_is_script_supported[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_is_script_supported")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetScriptSupportOverride {{
        func := textserverextension_ufont_set_script_support_override[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_script_support_override")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetScriptSupportOverride {{
        func := textserverextension_ufont_get_script_support_override[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_script_support_override")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontRemoveScriptSupportOverride {{
        func := textserverextension_ufont_remove_script_support_override[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_remove_script_support_override")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetScriptSupportOverrides {{
        func := textserverextension_ufont_get_script_support_overrides[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_script_support_overrides")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetOpentypeFeatureOverrides {{
        func := textserverextension_ufont_set_opentype_feature_overrides[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_opentype_feature_overrides")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetOpentypeFeatureOverrides {{
        func := textserverextension_ufont_get_opentype_feature_overrides[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_opentype_feature_overrides")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSupportedFeatureList {{
        func := textserverextension_ufont_supported_feature_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_supported_feature_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSupportedVariationList {{
        func := textserverextension_ufont_supported_variation_list[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_supported_variation_list")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontGetGlobalOversampling {{
        func := textserverextension_ufont_get_global_oversampling[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_get_global_oversampling")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFontSetGlobalOversampling {{
        func := textserverextension_ufont_set_global_oversampling[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_font_set_global_oversampling")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionGetHexCodeBoxSize {{
        func := textserverextension_uget_hex_code_box_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_hex_code_box_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionDrawHexCodeBox {{
        func := textserverextension_udraw_hex_code_box[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_draw_hex_code_box")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionCreateShapedText {{
        func := textserverextension_ucreate_shaped_text[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_shaped_text")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextClear {{
        func := textserverextension_ushaped_text_clear[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_clear")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSetDirection {{
        func := textserverextension_ushaped_text_set_direction[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_set_direction")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetDirection {{
        func := textserverextension_ushaped_text_get_direction[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_direction")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetInferredDirection {{
        func := textserverextension_ushaped_text_get_inferred_direction[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_inferred_direction")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSetBidiOverride {{
        func := textserverextension_ushaped_text_set_bidi_override[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_set_bidi_override")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSetCustomPunctuation {{
        func := textserverextension_ushaped_text_set_custom_punctuation[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_set_custom_punctuation")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetCustomPunctuation {{
        func := textserverextension_ushaped_text_get_custom_punctuation[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_custom_punctuation")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSetOrientation {{
        func := textserverextension_ushaped_text_set_orientation[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_set_orientation")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetOrientation {{
        func := textserverextension_ushaped_text_get_orientation[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_orientation")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSetPreserveInvalid {{
        func := textserverextension_ushaped_text_set_preserve_invalid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_set_preserve_invalid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetPreserveInvalid {{
        func := textserverextension_ushaped_text_get_preserve_invalid[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_preserve_invalid")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSetPreserveControl {{
        func := textserverextension_ushaped_text_set_preserve_control[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_set_preserve_control")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetPreserveControl {{
        func := textserverextension_ushaped_text_get_preserve_control[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_preserve_control")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSetSpacing {{
        func := textserverextension_ushaped_text_set_spacing[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_set_spacing")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetSpacing {{
        func := textserverextension_ushaped_text_get_spacing[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_spacing")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextAddString {{
        func := textserverextension_ushaped_text_add_string[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_add_string")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextAddObject {{
        func := textserverextension_ushaped_text_add_object[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_add_object")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextResizeObject {{
        func := textserverextension_ushaped_text_resize_object[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_resize_object")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedGetSpanCount {{
        func := textserverextension_ushaped_get_span_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_get_span_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedGetSpanMeta {{
        func := textserverextension_ushaped_get_span_meta[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_get_span_meta")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedSetSpanUpdateFont {{
        func := textserverextension_ushaped_set_span_update_font[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_set_span_update_font")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSubstr {{
        func := textserverextension_ushaped_text_substr[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_substr")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetParent {{
        func := textserverextension_ushaped_text_get_parent[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_parent")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextFitToWidth {{
        func := textserverextension_ushaped_text_fit_to_width[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_fit_to_width")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextTabAlign {{
        func := textserverextension_ushaped_text_tab_align[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_tab_align")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextShape {{
        func := textserverextension_ushaped_text_shape[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_shape")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextUpdateBreaks {{
        func := textserverextension_ushaped_text_update_breaks[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_update_breaks")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextUpdateJustificationOps {{
        func := textserverextension_ushaped_text_update_justification_ops[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_update_justification_ops")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextIsReady {{
        func := textserverextension_ushaped_text_is_ready[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_is_ready")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetGlyphs {{
        func := textserverextension_ushaped_text_get_glyphs[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_glyphs")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextSortLogical {{
        func := textserverextension_ushaped_text_sort_logical[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_sort_logical")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetGlyphCount {{
        func := textserverextension_ushaped_text_get_glyph_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_glyph_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetRange {{
        func := textserverextension_ushaped_text_get_range[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_range")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetLineBreaksAdv {{
        func := textserverextension_ushaped_text_get_line_breaks_adv[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_line_breaks_adv")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetLineBreaks {{
        func := textserverextension_ushaped_text_get_line_breaks[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_line_breaks")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetWordBreaks {{
        func := textserverextension_ushaped_text_get_word_breaks[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_word_breaks")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetTrimPos {{
        func := textserverextension_ushaped_text_get_trim_pos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_trim_pos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetEllipsisPos {{
        func := textserverextension_ushaped_text_get_ellipsis_pos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_ellipsis_pos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetEllipsisGlyphCount {{
        func := textserverextension_ushaped_text_get_ellipsis_glyph_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_ellipsis_glyph_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetEllipsisGlyphs {{
        func := textserverextension_ushaped_text_get_ellipsis_glyphs[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_ellipsis_glyphs")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextOverrunTrimToWidth {{
        func := textserverextension_ushaped_text_overrun_trim_to_width[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_overrun_trim_to_width")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetObjects {{
        func := textserverextension_ushaped_text_get_objects[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_objects")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetObjectRect {{
        func := textserverextension_ushaped_text_get_object_rect[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_object_rect")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetSize {{
        func := textserverextension_ushaped_text_get_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetAscent {{
        func := textserverextension_ushaped_text_get_ascent[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_ascent")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetDescent {{
        func := textserverextension_ushaped_text_get_descent[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_descent")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetWidth {{
        func := textserverextension_ushaped_text_get_width[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_width")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetUnderlinePosition {{
        func := textserverextension_ushaped_text_get_underline_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_underline_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetUnderlineThickness {{
        func := textserverextension_ushaped_text_get_underline_thickness[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_underline_thickness")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetDominantDirectionInRange {{
        func := textserverextension_ushaped_text_get_dominant_direction_in_range[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_dominant_direction_in_range")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetCarets {{
        func := textserverextension_ushaped_text_get_carets[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_carets")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetSelection {{
        func := textserverextension_ushaped_text_get_selection[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_selection")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextHitTestGrapheme {{
        func := textserverextension_ushaped_text_hit_test_grapheme[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_hit_test_grapheme")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextHitTestPosition {{
        func := textserverextension_ushaped_text_hit_test_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_hit_test_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextDraw {{
        func := textserverextension_ushaped_text_draw[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_draw")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextDrawOutline {{
        func := textserverextension_ushaped_text_draw_outline[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_draw_outline")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetGraphemeBounds {{
        func := textserverextension_ushaped_text_get_grapheme_bounds[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_grapheme_bounds")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextNextGraphemePos {{
        func := textserverextension_ushaped_text_next_grapheme_pos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_next_grapheme_pos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextPrevGraphemePos {{
        func := textserverextension_ushaped_text_prev_grapheme_pos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_prev_grapheme_pos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextGetCharacterBreaks {{
        func := textserverextension_ushaped_text_get_character_breaks[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_get_character_breaks")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextNextCharacterPos {{
        func := textserverextension_ushaped_text_next_character_pos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_next_character_pos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextPrevCharacterPos {{
        func := textserverextension_ushaped_text_prev_character_pos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_prev_character_pos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionShapedTextClosestCharacterPos {{
        func := textserverextension_ushaped_text_closest_character_pos[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_shaped_text_closest_character_pos")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionFormatNumber {{
        func := textserverextension_uformat_number[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_format_number")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionParseNumber {{
        func := textserverextension_uparse_number[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_number")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionPercentSign {{
        func := textserverextension_upercent_sign[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_percent_sign")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionStripDiacritics {{
        func := textserverextension_ustrip_diacritics[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_strip_diacritics")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionIsValidIdentifier {{
        func := textserverextension_uis_valid_identifier[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_valid_identifier")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionStringGetWordBreaks {{
        func := textserverextension_ustring_get_word_breaks[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_string_get_word_breaks")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionStringGetCharacterBreaks {{
        func := textserverextension_ustring_get_character_breaks[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_string_get_character_breaks")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionIsConfusable {{
        func := textserverextension_uis_confusable[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_confusable")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionSpoofCheck {{
        func := textserverextension_uspoof_check[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_spoof_check")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionStringToUpper {{
        func := textserverextension_ustring_to_upper[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_string_to_upper")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionStringToLower {{
        func := textserverextension_ustring_to_lower[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_string_to_lower")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionParseStructuredText {{
        func := textserverextension_uparse_structured_text[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_parse_structured_text")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextServerExtensionCleanup {{
        func := textserverextension_ucleanup[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_cleanup")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture2DGetWidth {{
        func := texture2d_uget_width[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_width")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture2DGetHeight {{
        func := texture2d_uget_height[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_height")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture2DIsPixelOpaque {{
        func := texture2d_uis_pixel_opaque[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_pixel_opaque")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture2DHasAlpha {{
        func := texture2d_uhas_alpha[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_alpha")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture2DDraw {{
        func := texture2d_udraw[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_draw")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture2DDrawRect {{
        func := texture2d_udraw_rect[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_draw_rect")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture2DDrawRectRegion {{
        func := texture2d_udraw_rect_region[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_draw_rect_region")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture3DGetFormat {{
        func := texture3d_uget_format[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_format")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture3DGetWidth {{
        func := texture3d_uget_width[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_width")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture3DGetHeight {{
        func := texture3d_uget_height[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_height")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture3DGetDepth {{
        func := texture3d_uget_depth[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_depth")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture3DHasMipmaps {{
        func := texture3d_uhas_mipmaps[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_mipmaps")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITexture3DGetData {{
        func := texture3d_uget_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextureLayeredGetFormat {{
        func := texturelayered_uget_format[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_format")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextureLayeredGetLayeredType {{
        func := texturelayered_uget_layered_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_layered_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextureLayeredGetWidth {{
        func := texturelayered_uget_width[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_width")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextureLayeredGetHeight {{
        func := texturelayered_uget_height[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_height")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextureLayeredGetLayers {{
        func := texturelayered_uget_layers[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_layers")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextureLayeredHasMipmaps {{
        func := texturelayered_uhas_mipmaps[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_has_mipmaps")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITextureLayeredGetLayerData {{
        func := texturelayered_uget_layer_data[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_layer_data")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITileMapUseTileDataRuntimeUpdate {{
        func := tilemap_uuse_tile_data_runtime_update[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_use_tile_data_runtime_update")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITileMapTileDataRuntimeUpdate {{
        func := tilemap_utile_data_runtime_update[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_tile_data_runtime_update")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITranslationGetPluralMessage {{
        func := translation_uget_plural_message[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_plural_message")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is ITranslationGetMessage {{
        func := translation_uget_message[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_message")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamInstantiatePlayback {{
        func := videostream_uinstantiate_playback[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_instantiate_playback")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackStop {{
        func := videostreamplayback_ustop[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_stop")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackPlay {{
        func := videostreamplayback_uplay[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_play")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackIsPlaying {{
        func := videostreamplayback_uis_playing[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_playing")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackSetPaused {{
        func := videostreamplayback_uset_paused[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_paused")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackIsPaused {{
        func := videostreamplayback_uis_paused[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_paused")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackGetLength {{
        func := videostreamplayback_uget_length[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_length")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackGetPlaybackPosition {{
        func := videostreamplayback_uget_playback_position[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_playback_position")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackSeek {{
        func := videostreamplayback_useek[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_seek")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackSetAudioTrack {{
        func := videostreamplayback_uset_audio_track[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_audio_track")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackGetTexture {{
        func := videostreamplayback_uget_texture[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_texture")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackUpdate {{
        func := videostreamplayback_uupdate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_update")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackGetChannels {{
        func := videostreamplayback_uget_channels[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_channels")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVideoStreamPlaybackGetMixRate {{
        func := videostreamplayback_uget_mix_rate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_mix_rate")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualInstance3DGetAabb {{
        func := visualinstance3d_uget_aabb[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_aabb")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetName {{
        func := visualshadernodecustom_uget_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetDescription {{
        func := visualshadernodecustom_uget_description[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_description")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetCategory {{
        func := visualshadernodecustom_uget_category[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_category")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetReturnIconType {{
        func := visualshadernodecustom_uget_return_icon_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_return_icon_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetInputPortCount {{
        func := visualshadernodecustom_uget_input_port_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_input_port_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetInputPortType {{
        func := visualshadernodecustom_uget_input_port_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_input_port_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetInputPortName {{
        func := visualshadernodecustom_uget_input_port_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_input_port_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetInputPortDefaultValue {{
        func := visualshadernodecustom_uget_input_port_default_value[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_input_port_default_value")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetDefaultInputPort {{
        func := visualshadernodecustom_uget_default_input_port[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_default_input_port")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetOutputPortCount {{
        func := visualshadernodecustom_uget_output_port_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_output_port_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetOutputPortType {{
        func := visualshadernodecustom_uget_output_port_type[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_output_port_type")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetOutputPortName {{
        func := visualshadernodecustom_uget_output_port_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_output_port_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetPropertyCount {{
        func := visualshadernodecustom_uget_property_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_property_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetPropertyName {{
        func := visualshadernodecustom_uget_property_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_property_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetPropertyDefaultIndex {{
        func := visualshadernodecustom_uget_property_default_index[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_property_default_index")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetPropertyOptions {{
        func := visualshadernodecustom_uget_property_options[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_property_options")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetCode {{
        func := visualshadernodecustom_uget_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetFuncCode {{
        func := visualshadernodecustom_uget_func_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_func_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomGetGlobalCode {{
        func := visualshadernodecustom_uget_global_code[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_global_code")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomIsHighend {{
        func := visualshadernodecustom_uis_highend[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_highend")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IVisualShaderNodeCustomIsAvailable {{
        func := visualshadernodecustom_uis_available[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_available")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetPacket {{
        func := webrtcdatachannelextension_uget_packet[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_packet")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionPutPacket {{
        func := webrtcdatachannelextension_uput_packet[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_put_packet")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetAvailablePacketCount {{
        func := webrtcdatachannelextension_uget_available_packet_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_available_packet_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetMaxPacketSize {{
        func := webrtcdatachannelextension_uget_max_packet_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_max_packet_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionPoll {{
        func := webrtcdatachannelextension_upoll[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_poll")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionClose {{
        func := webrtcdatachannelextension_uclose[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_close")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionSetWriteMode {{
        func := webrtcdatachannelextension_uset_write_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_write_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetWriteMode {{
        func := webrtcdatachannelextension_uget_write_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_write_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionWasStringPacket {{
        func := webrtcdatachannelextension_uwas_string_packet[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_was_string_packet")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetReadyState {{
        func := webrtcdatachannelextension_uget_ready_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_ready_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetLabel {{
        func := webrtcdatachannelextension_uget_label[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_label")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionIsOrdered {{
        func := webrtcdatachannelextension_uis_ordered[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_ordered")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetId {{
        func := webrtcdatachannelextension_uget_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetMaxPacketLifeTime {{
        func := webrtcdatachannelextension_uget_max_packet_life_time[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_max_packet_life_time")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetMaxRetransmits {{
        func := webrtcdatachannelextension_uget_max_retransmits[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_max_retransmits")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetProtocol {{
        func := webrtcdatachannelextension_uget_protocol[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_protocol")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionIsNegotiated {{
        func := webrtcdatachannelextension_uis_negotiated[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_negotiated")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCDataChannelExtensionGetBufferedAmount {{
        func := webrtcdatachannelextension_uget_buffered_amount[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_buffered_amount")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionGetConnectionState {{
        func := webrtcpeerconnectionextension_uget_connection_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_connection_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionGetGatheringState {{
        func := webrtcpeerconnectionextension_uget_gathering_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_gathering_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionGetSignalingState {{
        func := webrtcpeerconnectionextension_uget_signaling_state[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_signaling_state")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionInitialize {{
        func := webrtcpeerconnectionextension_uinitialize[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_initialize")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionCreateDataChannel {{
        func := webrtcpeerconnectionextension_ucreate_data_channel[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_data_channel")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionCreateOffer {{
        func := webrtcpeerconnectionextension_ucreate_offer[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_create_offer")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionSetRemoteDescription {{
        func := webrtcpeerconnectionextension_uset_remote_description[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_remote_description")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionSetLocalDescription {{
        func := webrtcpeerconnectionextension_uset_local_description[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_local_description")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionAddIceCandidate {{
        func := webrtcpeerconnectionextension_uadd_ice_candidate[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_add_ice_candidate")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionPoll {{
        func := webrtcpeerconnectionextension_upoll[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_poll")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWebRTCPeerConnectionExtensionClose {{
        func := webrtcpeerconnectionextension_uclose[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_close")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IWindowGetContentsMinimumSize {{
        func := window_uget_contents_minimum_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_contents_minimum_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetName {{
        func := xrinterfaceextension_uget_name[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_name")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetCapabilities {{
        func := xrinterfaceextension_uget_capabilities[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_capabilities")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionIsInitialized {{
        func := xrinterfaceextension_uis_initialized[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_is_initialized")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionInitialize {{
        func := xrinterfaceextension_uinitialize[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_initialize")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionUninitialize {{
        func := xrinterfaceextension_uuninitialize[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_uninitialize")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetSystemInfo {{
        func := xrinterfaceextension_uget_system_info[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_system_info")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionSupportsPlayAreaMode {{
        func := xrinterfaceextension_usupports_play_area_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_supports_play_area_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetPlayAreaMode {{
        func := xrinterfaceextension_uget_play_area_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_play_area_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionSetPlayAreaMode {{
        func := xrinterfaceextension_uset_play_area_mode[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_play_area_mode")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetPlayArea {{
        func := xrinterfaceextension_uget_play_area[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_play_area")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetRenderTargetSize {{
        func := xrinterfaceextension_uget_render_target_size[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_render_target_size")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetViewCount {{
        func := xrinterfaceextension_uget_view_count[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_view_count")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetCameraTransform {{
        func := xrinterfaceextension_uget_camera_transform[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_camera_transform")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetTransformForView {{
        func := xrinterfaceextension_uget_transform_for_view[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_transform_for_view")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetProjectionForView {{
        func := xrinterfaceextension_uget_projection_for_view[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_projection_for_view")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetVrsTexture {{
        func := xrinterfaceextension_uget_vrs_texture[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_vrs_texture")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionProcess {{
        func := xrinterfaceextension_uprocess[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_process")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionPreRender {{
        func := xrinterfaceextension_upre_render[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pre_render")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionPreDrawViewport {{
        func := xrinterfaceextension_upre_draw_viewport[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_pre_draw_viewport")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionPostDrawViewport {{
        func := xrinterfaceextension_upost_draw_viewport[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_post_draw_viewport")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionEndFrame {{
        func := xrinterfaceextension_uend_frame[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_end_frame")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetSuggestedTrackerNames {{
        func := xrinterfaceextension_uget_suggested_tracker_names[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_suggested_tracker_names")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetSuggestedPoseNames {{
        func := xrinterfaceextension_uget_suggested_pose_names[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_suggested_pose_names")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetTrackingStatus {{
        func := xrinterfaceextension_uget_tracking_status[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_tracking_status")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionTriggerHapticPulse {{
        func := xrinterfaceextension_utrigger_haptic_pulse[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_trigger_haptic_pulse")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetAnchorDetectionIsEnabled {{
        func := xrinterfaceextension_uget_anchor_detection_is_enabled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_anchor_detection_is_enabled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionSetAnchorDetectionIsEnabled {{
        func := xrinterfaceextension_uset_anchor_detection_is_enabled[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_set_anchor_detection_is_enabled")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetCameraFeedId {{
        func := xrinterfaceextension_uget_camera_feed_id[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_camera_feed_id")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetColorTexture {{
        func := xrinterfaceextension_uget_color_texture[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_color_texture")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetDepthTexture {{
        func := xrinterfaceextension_uget_depth_texture[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_depth_texture")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
    $if T is IXRInterfaceExtensionGetVelocityTexture {{
        func := xrinterfaceextension_uget_velocity_texture[T]
        ivar := i64(func)
        var := i64_to_var(ivar)
        sn := StringName.new("_get_velocity_texture")
        ci.virtual_methods.index_set_named(sn, var) or {panic(err)}
        sn.deinit()
    }}
}
