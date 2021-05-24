object farolito {
	
	method peso() { return 0.5 }
	method carga() { return 0 }
	method esLuminoso() { return false }
}

object canasto {
	var property volumen = 0
	
	method peso() { return volumen / 2 }
	method carga() { return volumen * 2 }
	method esLuminoso() { return false }
}

object morral {
	var property largo = 0
	const tieneOjoDeGato = true
	
	method peso() { return 1.2 }
	method carga() { return largo / 3 }
	method esLuminoso() { return tieneOjoDeGato } //??
}
