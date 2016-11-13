require './biblioteca'

class Contenido
	attr_reader :nombre, :ultimaModificacion

	def initialize nombre
		@nombre = nombre
	end

	def sePuedeSubir biblioteca
		self.entraEnBiblioteca biblioteca and self.tieneNombreCorto and not biblioteca.contiene self
	end

	def tieneNombreCorto
		@nombre.size < 200
	end

	def renombrar nuevoNombre
		@nombre = nuevoNombre
		self.modificar
	end

	def modificar
		@ultimaModificacion = Time.now
	end
end