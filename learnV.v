module main

fn main() {
	mut h, w := hw()
	println('$h $w')
	test_string()
	println(add(10, 5))
	println(sub(10, 5))
	println(mul(5, 2))
	println(div(10, 2))
	arrays()
	player := Player{
		name: "minemobs"
		id: 630560
		op: true
	}
	println("${player.name}'s id is ${player.id}. Is this player op ? ${player.op}")
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
	nmbr := '42E'
	println("Name Length : $name.len")
	println("First letter : ${name[0]}")
	println("Slicing : ${name[1..3]}")
	println("String to Integer : ${nmbr.int()}")
}

fn arrays() /*[]string*/ {
	mut names := ["minemobs", "noalegee68", "unbreakingslime"]
	println(names)
	println(names[0])
	names[1] = "NoaLeGeek68"
	names << "Mr.Terraria"
	println("Fixed array $names")
	println("Is Jerome226 in this array ? ${'Jerome226' in names}")
	nums := [1, 2, 3, 4, 5, 6]
	even := nums.filter(it % 2 == 0)
	println(even)
}

struct Player {
	name string
	id int
	op bool
	//⚠️ WARNING ! You can't create functions in struct !
}
