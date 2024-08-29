object galvan {
  var sueldo = 15000
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }

  method sueldo() {
    return sueldo
  }

  method cobrarSueldo() {

  }

}

object baigorria {
  const precioXEmpanada = 15
  var cantidadVendida = 0
  var totalCobrado = 0

  method vender(cantidad) {
    cantidadVendida += cantidad
  }

  method sueldo() {
    return cantidadVendida * precioXEmpanada
  }

  method cobrarSueldo() {
    totalCobrado += self.sueldo()
    cantidadVendida = 0
  }

  method totalCobrado() {
    return totalCobrado
  }

}

object gimenez {
  var fondo = 300000

  method fondo() {
    return fondo
  }

  method pagarSueldo(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrarSueldo()
  }
}