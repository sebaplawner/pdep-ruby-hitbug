require './contenidoSimple'
require './compresion'

class ContenidoBinario < ContenidoSimple
	include Compresion

	attr_writer :compresion

	def initialize nombre, bytes, compresion = SINCOMPRESION
		super nombre
		@bytes = bytes
		@compresion = compresion
	end

	def tamanio
		@compresion.(@bytes) * @bytes
	end
end