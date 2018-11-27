
class Viaje {
	const property idiomas = #{}
	const property implicaEsfuerzo = false
	const property sirveParaBroncearse = false
	const property cantDias = 0
	
	method esInteresante(){
		return idiomas.size() > 1
	}
	
	method usa(idioma){
		return idiomas.contains(idioma)
	}
	
	method recomendadaPara(socio){
		return self.esInteresante() and socio.leAtrae(self) and not socio.hizo(self)
	}
}


class DePlaya inherits Viaje {
	const largoDePlaya = 0
	
	override method cantDias(){
		return largoDePlaya / 500
	}
	
	override method implicaEsfuerzo(){
		return largoDePlaya > 1200
	}
	
	override method sirveParaBroncearse(){
		return true
	}
	
}

class ExcursionACiudad inherits Viaje {
	const cantAtraccionesAVisitar = 0
	
	override method cantDias(){
		return cantAtraccionesAVisitar / 2 
	}
	
	override method implicaEsfuerzo(){
		return cantAtraccionesAVisitar >= 5
	}
	
	override method sirveParaBroncearse(){
		return false
	}
	
	override method esInteresante(){
		return super() or cantAtraccionesAVisitar == 5
	}
}


class ExcursionACiudadTropical inherits ExcursionACiudad {
	
	override method cantDias(){
		return super() + 1
	}
	
	override method sirveParaBroncearse(){
		return true
	}
	
}




class SalidaDeTrekking inherits Viaje {
	const kmQueSeVanARecorrer = 0
	const diasDeSolPorAnio = 0
	
	override method cantDias(){
		return kmQueSeVanARecorrer / 50
	}
	
	override method implicaEsfuerzo(){
		return kmQueSeVanARecorrer > 80
	}
	
	override method sirveParaBroncearse(){
		return self.hayMasDeDocientosDiasDeSolPorAnio() or (self.hayEntreCienYDocientosDiasDeSolPorAnio()
					and self.SeRecorreranMasDe120Km())
	}
	
	method hayMasDeDocientosDiasDeSolPorAnio(){
		return diasDeSolPorAnio > 200
	}
	
	
	method hayEntreCienYDocientosDiasDeSolPorAnio(){
		return diasDeSolPorAnio.between(100, 200)
	}
	
	method SeRecorreranMasDe120Km(){
		return kmQueSeVanARecorrer > 120
	}
	
	override method esInteresante(){
		return super() and diasDeSolPorAnio > 140
	}
}




