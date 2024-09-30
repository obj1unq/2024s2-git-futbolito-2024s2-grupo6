/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method patear(pelota) {
	  self.validarPosicionPelota(pelota)
	  pelota.pateada()
	}

	method validarPosicionPelota(pelota) {
	  if(not self.mismaPosicionQuePelota(pelota)){
		self.error("No puede patear porque no esta en la misma posicion que la pelota")
	  }
	}

	method mismaPosicionQuePelota(pelota) {
	  return self.position() == pelota.position()
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)

	method pateada() {
	  position = game.at((game.width() - 1).min(position.x() + 3), position.y())
	}	
}
