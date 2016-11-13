require './contenidoEspecial'

class ContenidoCarpeta < ContenidoEspecial
	attr_reader :referencias

	def initialize nombre, referencias
		super nombre
		@referencias = referencias
	end

	def esLiviano
		@referencias.all? { |referencia| referencia.esLiviano }
	end

	def nombre
		@referencias.map { |referencia| referencia.nombre }.join ' ' 
	end

	def roto biblioteca
		@referencias.all? { |item| not item.roto biblioteca  }
	end
end