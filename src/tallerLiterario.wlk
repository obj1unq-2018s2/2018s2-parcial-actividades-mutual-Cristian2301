import socios.*

class Taller {
	const libros = #{}
	
	method idiomas(){
		return libros.map {libro => libro.idioma()}.asSet()		
	}
	
	method cantDias(){
		return libros.size() + 1
	}
	
	method implicaEsfuerzo(){
		return self.tieneLibroDeMasDe500Pags() or (self.todosLosLibrosSonDelMismoAutor() 
				and self.hayMasDeUnLibro())
	}
	
	method tieneLibroDeMasDe500Pags(){
		return libros.any {libro => libro.cantPaginas() > 500}
	}
	
	method todosLosLibrosSonDelMismoAutor(){
		return self.nombresDeAutoresDeLibros().size() == 1
	}
	
	method nombresDeAutoresDeLibros(){
		return libros.map {libro => libro.nombreAutor()}.asSet()
	}
	
	method hayMasDeUnLibro(){
		return libros.size() > 1
	}
	
	method sirveParaBroncearse(){
		return false
	}
	
	method recomendadaPara(socio){
		return socio.idiomas().size() > 1
	}
}



class Libro {
	var property idioma
	const property cantPaginas = 0
	var property nombreAutor
	
	
}



