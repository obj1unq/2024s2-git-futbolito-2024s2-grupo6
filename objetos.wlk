/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	const balon = pelota
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method taquito() {
		self.validarTaquito()
		balon.position(game.at(self.nextX(), balon.position().y()))
	}

	method validarTaquito() {
		if (balon.position() != position) {
			self.error("Lionel no tiene una pelota")
		}
	}

	method nextX() {
		return 0.max(balon.position().x() - 2)
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
