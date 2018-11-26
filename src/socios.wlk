import viajes.*

class Socio {
	const actividadesRealizadas = #{}
	const maximoDeActividades = 0
	const edad = 0
	const idiomas = #{}
	
	method esAdoradorDelSol(){
		return actividadesRealizadas.all {actividad => actividad.sirveParaBroncearse()}
	}
	
	method actividadesEsforzadas(){
		return actividadesRealizadas.filter {actividad => actividad.implicaEsfuerzo()}
	}
	
	method realizar(actividad){
		if(not self.llegoAlMaximoDeActividades()){
			actividadesRealizadas.add(actividad)
		}
		else{
			self.error("no puede hacer mas actividades porque ya llego al maximo")	
		}
	}
	
	method llegoAlMaximoDeActividades(){
		return actividadesRealizadas.size() >= maximoDeActividades
	}
}


class Tranquilo inherits Socio {
	
	method leAtrae(actividad){
		return actividad.cantDias() >= 4
	}
	
}



class Coherente inherits Socio {
	
	method leAtrae(actividad){
		if(self.esAdoradorDelSol()){
			return actividad.sirveParaBroncearse()
		}
		else{
			return actividad.implicaEsfuerzo()
		}
	}
	
}


class Relajado inherits Socio {
	
	method leAtrae(actividad){
		return idiomas.any {idioma => actividad.usa(idioma)}
	}
	
}






