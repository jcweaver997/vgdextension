module vgdextension

pub struct Glyph {
    pub mut:
    start i64 = -1
    end i64 = -1
    count u8
    repeat u8 = 1
    flags u16
    x_off f64
    y_off f64
    advance f64
    font_rid RID
    font_size i64
    index i32
}

