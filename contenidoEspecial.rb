require './contenido'

class ContenidoEspecial < Contenido
	def entraEnBiblioteca biblioteca
		not self.roto biblioteca
	end

	def tamanio
		0
	end
end