class Corsa{
	var property color
	
	method velocidad() = 150
	method capacidad() = 4
	method peso() = 1300
}

class Kwid{
	var property tieneTanqueAdicional
	method color() = "azul"
	method velocidad() = if (not tieneTanqueAdicional){110} else {120}
	method capacidad() = if (not tieneTanqueAdicional){4} else {3}
	method peso() = if (not tieneTanqueAdicional){1200} else {1350}
} 

object trafic{
	var property interior = interiorPopular
	var property motor = motorBataton
	
	method color() = "blanco"
	method velocidad() = motor.velocidad()
	method capacidad() = interior.capacidad()
	method peso() = motor.peso() + interior.peso() + 4000
}

object interiorPopular{
	method capacidad() = 12
	method peso() = 1000
}

object interiorComodo{
	method capacidad() = 5
	method peso() = 700
}

object motorPulenta{
	method peso() = 800
	method velocidad() = 130
}

object motorBataton{
	method peso() = 500
	method velocidad() = 80
}

class AutosEspeciales{
	var property color
	var property velocidad
	var property capacidad
	var property peso
}