require './contenido'

class ContenidoEspecial < Contenido
	def initialize
		super
	end
		
	def entraEnBiblioteca biblioteca
		not self.roto biblioteca
	end

	def tamanio
		0
	end
end