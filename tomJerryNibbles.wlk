//Polimorfismo : capacidad de los objetos para responder de manera distinta a un mismo mensaje
//2 o mas objetos (que pueden ser diferentes) pero sus mensajes (method) tienen el mismo nombre, los 2 saben responder el mismo mensaje.

object tom {   
    var ultimoRatonComido = jerry // En este caso vamos a utilizar objetos definidos para referirlo ya que no sabemos que vamos a hacer con esta informacion
    // Wollok es un tipado dinamico no me va a fallar ya que su variable puede cambiar , pero no es una buena practica queremos que toda variale refiera un cierto tipo
    var energiaActual = 50
    var velocidadMaxima = 10 // a la var valocidadMaxima asignale 10 (es un objeto, en POO todo es un objeto) 10  es lo que nos importa

    method energiaActual(){
        return energiaActual
    }
    method correr(cantidadDeMetro){
        energiaActual = self.energiaActual - cantidadDeMetro /2
    }
    method comioUnRaton(unRaton){
        return (energiaActual =+ unRaton.energia() + 12)
    }
    method velocidadMaxima(){
        return (5 + energiaActual / 20)
    }
}
object jerry {
    var edad = 2 

    method edad() {
        return edad
    }
    method peso(){
        return (self.edad() * 20) // el calulo va ser constante pero el resulado puede cambiar a lo largo del tiempo.
    }
    method cumplirAnios(){
        return (edad + 1)
    }
}

object nibbles {

// no lo hago como constante ya que lo voy a tener que utilizar como polimorfismo
    method peso(){
        return 35
    }
}

// Inventar otro ratón