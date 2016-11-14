require './contenidoSimple'
require './compresion'

class ContenidoBinario < ContenidoSimple
	include Compresion

	attr_writer :compresion

	def initialize nombre, bytes, compresion = SINCOMPRESION
		@nombre = nombre
		@bytes = bytes
		@compresion = compresion
	end

	def tamanio
		@compresion.(@bytes) * @bytes
	end
end