module lol

import term
import math

pub enum Style {
	normal
	red
	blue
	green
}

pub struct Config {
	style Style
}

pub struct Lol {
	config Config
}

pub fn (l Lol) print(s string) {
	println(l.string(s))
}

pub fn (l Lol) string(s string) string {
	mut output := ""
	mut freq := 0.1
	for c in s {
		output += match l.config.style {
			.normal { normal_color(freq, c.str()) }
			.red { red_color(freq, c.str()) }
			.green { green_color(freq, c.str()) }
			.blue { blue_color(freq, c.str()) }
			else { c.str() }
		}
		freq += 0.1
	}
	return output
}

fn red_color(freq f32, s string) string {
	red := int(math.sin(freq) * 127 + 128)
	return term.rgb(red, 0, 0, s)
}

fn green_color(freq f32, s string) string {
	green := int(math.sin(freq) * 127 + 128)
	return term.rgb(0, green, 0, s)
}

fn blue_color(freq f32, s string) string {
	blue := int(math.sin(freq) * 127 + 128)
	return term.rgb(0, 0, blue, s)
}

fn normal_color(freq f32, s string) string {
    red   := int(math.sin(freq + 0) * 127 + 128)
    green := int(math.sin(freq + 2) * 127 + 128)
    blue  := int(math.sin(freq + 4) * 127 + 128)
	return term.rgb(red, green, blue, s)
} 

