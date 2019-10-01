import rodado.*

class Dependencia{
	const flota = []
	var property cantEmpleados
	
	method agregarAFlota(rodado){ flota.add(rodado)}
	
	method quitarDeFlota(rodado){ flota.remove(rodado)}
	
	method pesoTotalFlota() = flota.sum({rodado => rodado.peso()})
	
	method bienEquipadoFlotaTamanio() = flota.size()>= 3
	
	method bienEquipadoFlotaVelocidad() = flota.all({rodado => rodado.velocidad() >= 100})
	
	method estaBienEquipada() = self.bienEquipadoFlotaTamanio() and self.bienEquipadoFlotaVelocidad()
	
	method capacidadTotalEnColor(color) = self.flotaPorColor(color).sum({rodado => rodado.capacidad()})
	
	method flotaPorColor(color) = flota.filter({rodado => rodado.color()== color })
	
	method colorDelRodadoMasRapido() = self.rodadoMasRapido().color()
	
	method rodadoMasRapido() = flota.max({rodado => rodado.velocidad()})
	
	method capacidadTotalFlota() = flota.sum({rodado => rodado.capacidad()})
	
	method capacidadFaltante() = 0.max(cantEmpleados - self.capacidadTotalFlota())
	
	method esGrande() = self.esGrandePorEmpleados() and self.esGrandePorTamanioFlota()
	
	method esGrandePorEmpleados() = cantEmpleados >= 40
	
	method esGrandePorTamanioFlota() = flota.size() >= 5
}