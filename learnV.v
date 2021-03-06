module main
//Selective import
import os { input, user_os }

fn main() {
	/*mut h, w := hw()
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
	maps()*/
	username, os := input_reader()
	println("Hello $username !")
	println("You are using ${os}.")
	x := Alphabet(Abc{"Bonsoir"})
	/*if x is Xyz {
		println(x.foo)
	} else {
		println("Not Xyz")
	}*/
	match x {
		Abc {
			println("Abc: $x.val")
		}
		Xyz {
			println("Xyz: $x.foo")
		}
	}
	loops()
}

fn input_reader() (string, string) {
	return os.input("Please enter your name ! \n"), user_os()
}

type Alphabet = Abc | Xyz

struct Abc {
	val string
}

struct Xyz {
	foo string
}

enum OS {
	windows
	darwin //macos
}

fn loops() {
	names := ["minemobs", "noalegeek", "unbreaking", "haribas"]
	for i, name in names {
		println("$i) $name")
	}
	m := map{
		names[0]: names[1]
		names[2]: names[3]
	}
	mut iter := 0
	for key, val in m {
		iter++
		println("Team $iter : $key and $val")
	}
	print('|')
	for i in 0..5 {
		print(" $i |")
	}
	println("")
}

//Old functions

/*fn add(x int, y int) int {
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

fn arrays() //[]string 
{
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
	println(even.map(it * 2))
}

struct Player {
	name string
	id int
	op bool
	//?????? WARNING ! You can't create functions in struct !
}

struct Entity {
	strength int
	health int
}

fn maps() {
	//can't use map because that's a type of variable
	mut m := map{
		"Player": Entity{20, 5}
		"Zombie": Entity{15, 3}
	}
	println("Default player strength : ${m["Player"].strength}")
	println("Default Zombie strength : ${m["Zombie"].strength}")
}*/
