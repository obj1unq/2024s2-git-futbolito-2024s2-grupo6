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
	
	method levantarla() {
	  if (self.validarPosicion()){
		pelota.position(game.at(position.x(), position.y() + 1))
		game.schedule(2000, {self.bajarPelota()})
	  }

	}

	method bajarPelota() {
			pelota.position(game.at(position.x(), position.y()))
	}
	method validarPosicion() {
	  return  self.position() == pelota.position()
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
