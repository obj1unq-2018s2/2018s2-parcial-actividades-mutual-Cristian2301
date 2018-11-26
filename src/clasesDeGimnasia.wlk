
class ClaseDeGim {
	
	method idiomas(){
		return #{"espanol"}
	}
	
	method cantDias(){
		return 1
	}
	
	method implicanEsfuerzo(){
		return true
	}
	
	method sirvenParaBroncearse(){
		return false
	}
	
	method recomendadaPara(socio){
		return socio.edad().between(20, 30)
	}
}
