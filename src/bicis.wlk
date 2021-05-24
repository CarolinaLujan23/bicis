import accesorios.*

class Bicicleta {
	
	var property rodado
	var property largo 
	var property marca = ""
	var property accesorios = []
	
	method altura() {
		return rodado * 2.5 + 15
	}
	
	method velocidad() {
		if (largo > 120) {
			return rodado + 6
		} else {
			return rodado + 2	
		}
	} 
	
	method carga() {
		accesorios.sum()
	}
	
	method peso() {
		return accesorios.sum({ a => a.peso() }) + rodado / 2 		
	}
	
	method tieneLuz() {
		return accesorios.any({ a => a.esLuminoso() })
	}
	
	method objetosLivianos() {
		accesorios.count({ a => a.peso() > 1 })
	} 
}



