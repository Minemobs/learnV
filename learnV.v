module main

fn main() {
	h, w := hw()
	println('$h $w')
	println(add(10, 5))
	println(sub(10, 5))
	println(mul(5, 2))
	println(div(10, 2))
}

fn add(x int, y int) int {
	return x + y
}

fn sub(x int, y int) int {
	return x - y
}

fn mul(x int, y int) int {
	return x * y
}

fn div(x int, y int) int {
	return x / y
}

fn hw() (string, string) {
	return "Hello", "World"
}
