

class EnfermedadInfecciosa {
	var celulasAmenaza
	
	constructor(unasCelulas){
		celulasAmenaza = unasCelulas
	}
	method efecto(persona){
		persona.aumentarTemperatura(0.001*celulasAmenaza)
	}
	method celulasTiene(){
		return celulasAmenaza
	}
	method duplicarse(){
		celulasAmenaza *= 2
	}
	method esAgresiva(persona){
		return persona.celulasTiene()*0.1>celulasAmenaza	
	}
	method celulas(cuantas){
		celulasAmenaza = cuantas
	}
	method atenuarse(medicamento){
		celulasAmenaza -= medicamento*15
	}
}

class EnfermedadAutoinmune{
	var celulasAmenaza
	var diasAfecto
	
	constructor(unasCelulas,unosDias){
		celulasAmenaza = unasCelulas
		diasAfecto = unosDias
	}
	method celulasTiene(){
		return celulasAmenaza
	}
	method efecto(persona){
		persona.perderCelulas(celulasAmenaza)
		diasAfecto += 1
	}
	method esAgresiva(persona){
		return diasAfecto>30
	}
	method celulas(cuantas){
		celulasAmenaza = cuantas
	}
	method atenuarse(medicamento){
		celulasAmenaza -= medicamento*15
	}
}