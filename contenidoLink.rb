require './contenidoEspecial'

class ContenidoLink < ContenidoEspecial
	def initialize nombre, referencia
		@nombre = nombre
		@referencia = referencia
	end

	def esLiviano
		true
	end

	def nombre
		@referencia.nombre
	end

	def roto biblioteca
		@referencia.roto biblioteca
	end
end