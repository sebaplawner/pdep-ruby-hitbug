require './contenido'
require './utilitarios'

class ContenidoSimple < Contenido
	include MB
	
	def initialize
		raise "No se puede inicializar una clase abstracta"
	end

	def entraEnBiblioteca biblioteca
		not biblioteca.superaTamanioIndividual self and not biblioteca.rebalsa self
	end

	def roto biblioteca
		not biblioteca.contiene self
	end

	def esLiviano
		self.tamanio < to_mb(150)
	end
end