class Persona {
	var enfermedades = []
	var celulas 
	var temperatura = 36
	
	constructor(unasEnfermedades, unasCelulas){
		enfermedades = unasEnfermedades
		celulas = unasCelulas	
	}
	
	method celulasNuevas(cuantas){
		celulas = cuantas
	}	
	method celulasTiene(){
		return celulas
	}
	method tieneEnfermedades(){
		return enfermedades
	}
	method contraerEnfermedad(enfermedad){
		enfermedades.add(enfermedad)
	}
	method pasarUnDia(){
		enfermedades.map({enfermedad => enfermedad.efecto(self)})
	}
	method temperatura(){
		return temperatura
	}
	method aumentarTemperatura(grados){
		temperatura += grados
	}
	method perderCelulas(celulasPerdidas){
		celulas -= celulasPerdidas	
	}
	method limpiarEnfermedades(){
		enfermedades.clear()
	}
	method estaEnComa(){
		return (temperatura>=45 || celulas<1000000)
	}
	method quedarseAgresivas(){
		enfermedades = enfermedades.filter({enfermedad=>enfermedad.esAgresiva(self)})
	}
	method enfermedadesencantidad(){
		enfermedades = enfermedades.map({enfermedad=>enfermedad.celulasTiene()})
	}
	method recibirMedicamento(medicamento){
		enfermedades = enfermedades.map({enfermedad =>enfermedad.atenuarse(medicamento)})	
	}
}




