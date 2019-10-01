import rodado.*

class Pedido{
	var property distancia // kms
	var property tiempoMaximo //horas
	var property cantPasajeros = 0
	var property coloresIncompatibles = []
	
	method puedeSatisfacerPedido(rodado){
		return self.satisfaceCapacidad(rodado) and self.satisfaceVelocidad(rodado) and self.satisfaceColor(rodado)
	}
	method satisfaceCapacidad(rodado) = cantPasajeros <= rodado.capacidad()
	method velocidadRequeridad() = distancia/tiempoMaximo
	method satisfaceVelocidad(rodado) = self.velocidadRequeridad()+10 <= rodado.velocidad()
	method satisfaceColor(rodado) = coloresIncompatibles.all({color => color != rodado.color()})
	method acelerar() { tiempoMaximo -=1 }
	method relajar() { tiempoMaximo +=1 }
}