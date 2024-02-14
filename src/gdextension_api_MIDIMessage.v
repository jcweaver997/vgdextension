module vgdextension

pub enum MIDIMessage as i64 {
    midi_message_none = 0
    midi_message_note_off = 8
    midi_message_note_on = 9
    midi_message_aftertouch = 10
    midi_message_control_change = 11
    midi_message_program_change = 12
    midi_message_channel_pressure = 13
    midi_message_pitch_bend = 14
    midi_message_system_exclusive = 240
    midi_message_quarter_frame = 241
    midi_message_song_position_pointer = 242
    midi_message_song_select = 243
    midi_message_tune_request = 246
    midi_message_timing_clock = 248
    midi_message_start = 250
    midi_message_continue = 251
    midi_message_stop = 252
    midi_message_active_sensing = 254
    midi_message_system_reset = 255
}
