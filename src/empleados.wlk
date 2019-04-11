object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	method sueldo() { return 15000 }
	method sueldo(nuevoValor)
		{ sueldo = nuevoValor }
		 
	method cobrarSueldo() 
		{dinero += sueldo}
	
	method gastar(cuanto) {
		if (cuanto < dinero) { dinero -= cuanto}
		else { deuda += cuanto }
	}
	method pagarDeuda() {
		if(dinero > deuda) { dinero -= deuda
			deuda = 0 }
		else { deuda -= dinero
			dinero = 0}
		}
			
	method totalDeuda() { return deuda }
		
	
	method totalDinero() { return dinero }
	
	
	
}

object baigorria {
	var sueldo= 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cobrarSueldo() {sueldo += self.sueldo() }
	method totalCobrado() { return sueldo}
		
	}  

object gimenez {
	var saldo = 300000
	method saldo() { return saldo }
	method pagarA(empleado) { 
		saldo -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
