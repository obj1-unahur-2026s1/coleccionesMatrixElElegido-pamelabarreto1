object neo {
var energia=100

 method esElegido() =true
method saltar(){ energia= energia /2}
method vitalidad() = energia /10
method energia()=energia

}
object morfeo {
 var vitalidad= 8 
 var estaDescansado=true
 method esElegido() =false
method saltar(){estaDescansado=false
vitalidad=vitalidad-1}
  method vitalidad()=vitalidad

}
object trinity{
method vitalidad() =0
method saltar() {}
method esElegido() =false

}
object nave {
  const pasajeros=[morfeo, trinity, neo]
  method pasajeros() =pasajeros 
  method pasajeroMaxVitalidad()= pasajeros.max({p=>p.vitalidad()})
  method estaEquilibradoEnVitalidad() =  self.pasajeroMaxVitalidad() 
                                <= 
                               self.pasajeroMinVitalidad() * 2
  method pasajeroMinVitalidad()= pasajeros.min({p=>p.vitalidad()})

method elegidoEstaEnNave()= pasajeros.any({p=>p.esElegido()})
method chocar()= pasajeros.forEach({p=>p.saltar() self.bajarUnPasajero(p)})
method acelerar()= pasajeros.filter({p=>not p.esElegido() self.saltarDeAlegria()}) //pasajeros.filter({p=>not p.esElegido()}).forEach({p=>p.saltar()})
method saltarDeAlegria() =pasajeros.forEach({p=>p.saltar()})
method saltaryBajarAlElegido(unPasajero) {unPasajero.saltar()
self.bajarAlElegido(unPasajero)}

 

method bajarAlElegido(unPasajero)= if (unPasajero.esElegido()){pasajeros.remove(unPasajero)}else{}
method bajarUnPasajero(unPasajero)= pasajeros.remove(unPasajero)
  method agregarPasajero(unPasajero) =pasajeros.add(unPasajero)
  method sacarAtodosLosPasajeros() =pasajeros.clear()   
  method cantidadPasajeros()= pasajeros.size()
}