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

  method cantidadPasajeros()= pasajeros.size()
  method pasajeroMaxVitalidad()= pasajeros.max({p=>p.vitalidad()})
  method estaEquilibradoEnVitalidad() =  self.pasajeroMaxVitalidad() 
                                <= 
                               self.pasajeroMinVitalidad() * 2
  method pasajeroMinVitalidad()= pasajeros.min({p=>p.vitalidad()})

method elegidoEstaEnNave()= pasajeros.any({p=>p.esElegido()})
method chocar()= pasajeros.forEach({p=>p.saltar() and self.salirDeLaNave()})
method acelerar()= pasajeros.forEach({p=>p.saltar()})
method salirDeLaNave()= pasajeros.clear()
}