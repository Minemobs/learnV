module main

fn main() {
	h, w := hw()
	println('$h $w')
	test_string()
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

fn test_string() {
	name := 'Minemobs'
	println("Name Length : $name.len")
	println("First letter : ${name[0]}")
	println("Slicing : ${name[1..3]}")
}
