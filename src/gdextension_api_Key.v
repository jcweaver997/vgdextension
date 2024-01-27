module vgdextension

pub enum Key {
    key_none = 0
    key_special = 4194304
    key_escape = 4194305
    key_tab = 4194306
    key_backtab = 4194307
    key_backspace = 4194308
    key_enter = 4194309
    key_kp_enter = 4194310
    key_insert = 4194311
    key_delete = 4194312
    key_pause = 4194313
    key_print = 4194314
    key_sysreq = 4194315
    key_clear = 4194316
    key_home = 4194317
    key_end = 4194318
    key_left = 4194319
    key_up = 4194320
    key_right = 4194321
    key_down = 4194322
    key_pageup = 4194323
    key_pagedown = 4194324
    key_shift = 4194325
    key_ctrl = 4194326
    key_meta = 4194327
    key_alt = 4194328
    key_capslock = 4194329
    key_numlock = 4194330
    key_scrolllock = 4194331
    key_f1 = 4194332
    key_f2 = 4194333
    key_f3 = 4194334
    key_f4 = 4194335
    key_f5 = 4194336
    key_f6 = 4194337
    key_f7 = 4194338
    key_f8 = 4194339
    key_f9 = 4194340
    key_f10 = 4194341
    key_f11 = 4194342
    key_f12 = 4194343
    key_f13 = 4194344
    key_f14 = 4194345
    key_f15 = 4194346
    key_f16 = 4194347
    key_f17 = 4194348
    key_f18 = 4194349
    key_f19 = 4194350
    key_f20 = 4194351
    key_f21 = 4194352
    key_f22 = 4194353
    key_f23 = 4194354
    key_f24 = 4194355
    key_f25 = 4194356
    key_f26 = 4194357
    key_f27 = 4194358
    key_f28 = 4194359
    key_f29 = 4194360
    key_f30 = 4194361
    key_f31 = 4194362
    key_f32 = 4194363
    key_f33 = 4194364
    key_f34 = 4194365
    key_f35 = 4194366
    key_kp_multiply = 4194433
    key_kp_divide = 4194434
    key_kp_subtract = 4194435
    key_kp_period = 4194436
    key_kp_add = 4194437
    key_kp_0 = 4194438
    key_kp_1 = 4194439
    key_kp_2 = 4194440
    key_kp_3 = 4194441
    key_kp_4 = 4194442
    key_kp_5 = 4194443
    key_kp_6 = 4194444
    key_kp_7 = 4194445
    key_kp_8 = 4194446
    key_kp_9 = 4194447
    key_menu = 4194370
    key_hyper = 4194371
    key_help = 4194373
    key_back = 4194376
    key_forward = 4194377
    key_stop = 4194378
    key_refresh = 4194379
    key_volumedown = 4194380
    key_volumemute = 4194381
    key_volumeup = 4194382
    key_mediaplay = 4194388
    key_mediastop = 4194389
    key_mediaprevious = 4194390
    key_medianext = 4194391
    key_mediarecord = 4194392
    key_homepage = 4194393
    key_favorites = 4194394
    key_search = 4194395
    key_standby = 4194396
    key_openurl = 4194397
    key_launchmail = 4194398
    key_launchmedia = 4194399
    key_launch0 = 4194400
    key_launch1 = 4194401
    key_launch2 = 4194402
    key_launch3 = 4194403
    key_launch4 = 4194404
    key_launch5 = 4194405
    key_launch6 = 4194406
    key_launch7 = 4194407
    key_launch8 = 4194408
    key_launch9 = 4194409
    key_launcha = 4194410
    key_launchb = 4194411
    key_launchc = 4194412
    key_launchd = 4194413
    key_launche = 4194414
    key_launchf = 4194415
    key_unknown = 8388607
    key_space = 32
    key_exclam = 33
    key_quotedbl = 34
    key_numbersign = 35
    key_dollar = 36
    key_percent = 37
    key_ampersand = 38
    key_apostrophe = 39
    key_parenleft = 40
    key_parenright = 41
    key_asterisk = 42
    key_plus = 43
    key_comma = 44
    key_minus = 45
    key_period = 46
    key_slash = 47
    key_0 = 48
    key_1 = 49
    key_2 = 50
    key_3 = 51
    key_4 = 52
    key_5 = 53
    key_6 = 54
    key_7 = 55
    key_8 = 56
    key_9 = 57
    key_colon = 58
    key_semicolon = 59
    key_less = 60
    key_equal = 61
    key_greater = 62
    key_question = 63
    key_at = 64
    key_a = 65
    key_b = 66
    key_c = 67
    key_d = 68
    key_e = 69
    key_f = 70
    key_g = 71
    key_h = 72
    key_i = 73
    key_j = 74
    key_k = 75
    key_l = 76
    key_m = 77
    key_n = 78
    key_o = 79
    key_p = 80
    key_q = 81
    key_r = 82
    key_s = 83
    key_t = 84
    key_u = 85
    key_v = 86
    key_w = 87
    key_x = 88
    key_y = 89
    key_z = 90
    key_bracketleft = 91
    key_backslash = 92
    key_bracketright = 93
    key_asciicircum = 94
    key_underscore = 95
    key_quoteleft = 96
    key_braceleft = 123
    key_bar = 124
    key_braceright = 125
    key_asciitilde = 126
    key_yen = 165
    key_section = 167
    key_globe = 4194416
    key_keyboard = 4194417
    key_jis_eisu = 4194418
    key_jis_kana = 4194419
}
