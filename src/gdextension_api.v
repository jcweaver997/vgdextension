module vgdextension

pub fn sin(angle_rad f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('sin')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn cos(angle_rad f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cos')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn tan(angle_rad f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('tan')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&angle_rad)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn sinh(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('sinh')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn cosh(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cosh')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn tanh(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('tanh')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn asin(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('asin')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn acos(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('acos')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn atan(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('atan')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn atan2(y f32, x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('atan2')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&y)
	args[1] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn sqrt(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('sqrt')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn fmod(x f32, y f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('fmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn fposmod(x f32, y f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('fposmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn posmod(x i32, y i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('posmod')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&y)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn floor(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('floor')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn floorf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('floorf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn floori(x f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('floori')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn ceil(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('ceil')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn ceilf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('ceilf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn ceili(x f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('ceili')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn round(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('round')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn roundf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('roundf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn roundi(x f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('roundi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn abs(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('abs')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn absf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('absf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn absi(x i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('absi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn sign(x Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('sign')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn signf(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('signf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn signi(x i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('signi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn snapped(x Variant, step Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('snapped')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 459914704)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn snappedf(x f32, step f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('snappedf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn snappedi(x f32, step i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('snappedi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3570758393)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&step)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn pow(base f32, exp f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('pow')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&base)
	args[1] = voidptr(&exp)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn log(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('log')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn exp(x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('exp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_nan(x f32) bool {
	mut object_out := false
	fnname := StringName.new('is_nan')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_inf(x f32) bool {
	mut object_out := false
	fnname := StringName.new('is_inf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_equal_approx(a f32, b f32) bool {
	mut object_out := false
	fnname := StringName.new('is_equal_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1400789633)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn is_zero_approx(x f32) bool {
	mut object_out := false
	fnname := StringName.new('is_zero_approx')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_finite(x f32) bool {
	mut object_out := false
	fnname := StringName.new('is_finite')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3569215213)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn ease(x f32, curve f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('ease')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&x)
	args[1] = voidptr(&curve)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn step_decimals(x f32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('step_decimals')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2780425386)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn lerp(from Variant, to Variant, weight Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('lerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn lerpf(from f32, to f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('lerpf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn cubic_interpolate(from f32, to f32, pre f32, post f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cubic_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn cubic_interpolate_angle(from f32, to f32, pre f32, post f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cubic_interpolate_angle')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn cubic_interpolate_in_time(from f32, to f32, pre f32, post f32, weight f32, to_t f32, pre_t f32, post_t f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cubic_interpolate_in_time')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 388121036)
	mut args := unsafe { [8]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	args[5] = voidptr(&to_t)
	args[6] = voidptr(&pre_t)
	args[7] = voidptr(&post_t)
	f(voidptr(&object_out), voidptr(&args[0]), 8)
	return object_out
}

pub fn cubic_interpolate_angle_in_time(from f32, to f32, pre f32, post f32, weight f32, to_t f32, pre_t f32, post_t f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('cubic_interpolate_angle_in_time')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 388121036)
	mut args := unsafe { [8]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&pre)
	args[3] = voidptr(&post)
	args[4] = voidptr(&weight)
	args[5] = voidptr(&to_t)
	args[6] = voidptr(&pre_t)
	args[7] = voidptr(&post_t)
	f(voidptr(&object_out), voidptr(&args[0]), 8)
	return object_out
}

pub fn bezier_interpolate(start f32, control_1 f32, control_2 f32, end f32, t f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('bezier_interpolate')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&start)
	args[1] = voidptr(&control_1)
	args[2] = voidptr(&control_2)
	args[3] = voidptr(&end)
	args[4] = voidptr(&t)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn bezier_derivative(start f32, control_1 f32, control_2 f32, end f32, t f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('bezier_derivative')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&start)
	args[1] = voidptr(&control_1)
	args[2] = voidptr(&control_2)
	args[3] = voidptr(&end)
	args[4] = voidptr(&t)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn lerp_angle(from f32, to f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('lerp_angle')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn inverse_lerp(from f32, to f32, weight f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('inverse_lerp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&weight)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn remap(value f32, istart f32, istop f32, ostart f32, ostop f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('remap')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1090965791)
	mut args := unsafe { [5]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&istart)
	args[2] = voidptr(&istop)
	args[3] = voidptr(&ostart)
	args[4] = voidptr(&ostop)
	f(voidptr(&object_out), voidptr(&args[0]), 5)
	return object_out
}

pub fn smoothstep(from f32, to f32, x f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('smoothstep')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&x)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn move_toward(from f32, to f32, delta f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('move_toward')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	args[2] = voidptr(&delta)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn deg_to_rad(deg f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('deg_to_rad')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&deg)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn rad_to_deg(rad f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('rad_to_deg')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&rad)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn linear_to_db(lin f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('linear_to_db')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&lin)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn db_to_linear(db f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('db_to_linear')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2140049587)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&db)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn wrap(value Variant, min Variant, max Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('wrap')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn wrapi(value i32, min i32, max i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('wrapi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 650295447)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn wrapf(value f32, min f32, max f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('wrapf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn max(arg1 Variant, arg2 Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('max')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3896050336)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&arg1)
	args[1] = voidptr(&arg2)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn maxi(a i32, b i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('maxi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn maxf(a f32, b f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('maxf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn min(arg1 Variant, arg2 Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('min')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3896050336)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&arg1)
	args[1] = voidptr(&arg2)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn mini(a i32, b i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('mini')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn minf(a f32, b f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('minf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn clamp(value Variant, min Variant, max Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('clamp')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3389874542)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn clampi(value i32, min i32, max i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('clampi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 650295447)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn clampf(value f32, min f32, max f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('clampf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 998901048)
	mut args := unsafe { [3]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&min)
	args[2] = voidptr(&max)
	f(voidptr(&object_out), voidptr(&args[0]), 3)
	return object_out
}

pub fn nearest_po2(value i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('nearest_po2')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2157319888)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&value)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn pingpong(value f32, length f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('pingpong')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&value)
	args[1] = voidptr(&length)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn randomize() {
	fnname := StringName.new('randomize')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1691721052)
	f(unsafe { nil }, unsafe { nil }, 0)
}

pub fn randi() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('randi')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 701202648)
	f(voidptr(&object_out), unsafe { nil }, 0)
	return object_out
}

pub fn randf() f32 {
	mut object_out := f32(0)
	fnname := StringName.new('randf')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2086227845)
	f(voidptr(&object_out), unsafe { nil }, 0)
	return object_out
}

pub fn randi_range(from i32, to i32) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('randi_range')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3133453818)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn randf_range(from f32, to f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('randf_range')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&from)
	args[1] = voidptr(&to)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn randfn(mean f32, deviation f32) f32 {
	mut object_out := f32(0)
	fnname := StringName.new('randfn')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 92296394)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&mean)
	args[1] = voidptr(&deviation)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}

pub fn seed(base i32) {
	fnname := StringName.new('seed')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 382931173)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&base)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn rand_from_seed(seed i32) PackedInt64Array {
	mut object_out := PackedInt64Array{}
	fnname := StringName.new('rand_from_seed')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1391063685)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&seed)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn weakref(obj Variant) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('weakref')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4776452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&obj)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn gdtypeof(variable Variant) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('gdtypeof')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 326422594)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn str(arg1 Variant) String {
	mut object_out := String{}
	fnname := StringName.new('str')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 32569176)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn error_string(error i32) String {
	mut object_out := String{}
	fnname := StringName.new('error_string')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 942708242)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&error)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn print(arg1 Variant) {
	fnname := StringName.new('print')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn print_rich(arg1 Variant) {
	fnname := StringName.new('print_rich')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn printerr(arg1 Variant) {
	fnname := StringName.new('printerr')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn printt(arg1 Variant) {
	fnname := StringName.new('printt')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn prints(arg1 Variant) {
	fnname := StringName.new('prints')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn printraw(arg1 Variant) {
	fnname := StringName.new('printraw')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn print_verbose(arg1 Variant) {
	fnname := StringName.new('print_verbose')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn push_error(arg1 Variant) {
	fnname := StringName.new('push_error')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn push_warning(arg1 Variant) {
	fnname := StringName.new('push_warning')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2648703342)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&arg1)
	f(unsafe { nil }, voidptr(&args[0]), 1)
}

pub fn var_to_str(variable Variant) String {
	mut object_out := String{}
	fnname := StringName.new('var_to_str')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 866625479)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn str_to_var(gdstring String) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('str_to_var')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1891498491)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&gdstring)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn var_to_bytes(variable Variant) PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('var_to_bytes')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2947269930)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn bytes_to_var(bytes PackedByteArray) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('bytes_to_var')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4249819452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&bytes)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn var_to_bytes_with_objects(variable Variant) PackedByteArray {
	mut object_out := PackedByteArray{}
	fnname := StringName.new('var_to_bytes_with_objects')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2947269930)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn bytes_to_var_with_objects(bytes PackedByteArray) Variant {
	mut object_out := Variant{}
	fnname := StringName.new('bytes_to_var_with_objects')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 4249819452)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&bytes)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn hash(variable Variant) i32 {
	mut object_out := i32(0)
	fnname := StringName.new('hash')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 326422594)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&variable)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn instance_from_id(instance_id i32) Object {
	mut object_out := unsafe { nil }
	fnname := StringName.new('instance_from_id')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1156694636)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&instance_id)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_instance_id_valid(id i32) bool {
	mut object_out := false
	fnname := StringName.new('is_instance_id_valid')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 2232439758)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&id)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_instance_valid(instance Variant) bool {
	mut object_out := false
	fnname := StringName.new('is_instance_valid')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 996128841)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&instance)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn rid_allocate_id() i32 {
	mut object_out := i32(0)
	fnname := StringName.new('rid_allocate_id')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 701202648)
	f(voidptr(&object_out), unsafe { nil }, 0)
	return object_out
}

pub fn rid_from_int64(base i32) RID {
	mut object_out := RID{}
	fnname := StringName.new('rid_from_int64')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 3426892196)
	mut args := unsafe { [1]voidptr{} }
	args[0] = voidptr(&base)
	f(voidptr(&object_out), voidptr(&args[0]), 1)
	return object_out
}

pub fn is_same(a Variant, b Variant) bool {
	mut object_out := false
	fnname := StringName.new('is_same')
	defer {
		fnname.deinit()
	}
	f := gdf.variant_get_ptr_utility_function(voidptr(&fnname), 1409423524)
	mut args := unsafe { [2]voidptr{} }
	args[0] = voidptr(&a)
	args[1] = voidptr(&b)
	f(voidptr(&object_out), voidptr(&args[0]), 2)
	return object_out
}
