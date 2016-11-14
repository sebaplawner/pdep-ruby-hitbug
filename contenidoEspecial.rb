require './contenido'

class ContenidoEspecial < Contenido
	def initialize
		raise "No se puede inicializar una clase abstracta"
	end
		
	def entraEnBiblioteca biblioteca
		not self.roto biblioteca
	end

	def tamanio
		0
	end
end