
class Doctor{
	method suministrarMedicina(cantidadDeMedicina, paciente){
		paciente.recibirMedicamento(cantidadDeMedicina)
	}
}

class JefeDeDepartamento{
	method atenderPaciente(cantidadDeMedicina, doctor, paciente){
		doctor.suministrarMedicina(cantidadDeMedicina, paciente)
	}
}