module main

import os

fn input(prompt string, dv f32) f32 {
	mut v := os.input('$prompt <$dv> ')
	if v == '' {
		return dv
	}
	return v.f32()
}

fn main() {
	name := os.input("Hi, what's your name? ")
	length := input('Hello $name, how long are you [cm]? ', 178) / 100
	weight := input('What is your weight [kg]? ', 73)
	l2 := length * length
	bmi := weight / l2
	t1 := 'Your BMI is currently'
	t2 := 'You should keep your weight between'
	println('$t1 ${bmi:.1f}, $t2 ${20 * l2:.0f} and ${25 * l2:.0f}')
}
