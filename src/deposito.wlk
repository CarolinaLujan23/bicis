import bicis.*

class Deposito {
	var property bicis = []
	
	method bicisRapidas() {
		bicis.filter({ b => b.velocidad() > 25 })
	}
	
	method marca(marca) {
		bicis.filter({ b => b.marca() == marca }) //??
	}
	
	method esNocturno() {
		bicis.all({ b => b.tieneLuz() })
	}
	
	method tieneParaLlevar(kgs) {
		bicis.find({ b => b.carga() > kgs }) //??
	}
	
	method marcaDeLaBiciMasRapida() {  }
	
	method cargaTotalBicisLargas() {
		//bicis.sum({ b => b.largo().max().carga() }) ????? este sí que no sé cómo hacerlo 
	}
	
	method bicisSinAccesorios() {
		bicis.count({ b => b.carga() == 0 })
	}
	
	method bicisCompanieras(unaBici) {
		return unaBici.marca() && unaBici.largo().abs(0 - 10) 
	}
}
