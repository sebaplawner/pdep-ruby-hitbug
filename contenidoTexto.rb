require './contenidoSimple'

class ContenidoTexto < ContenidoSimple
	def initialize nombre, lineas
		super nombre
		@lineas = lineas
	end

	def tamanio
		16 * @lineas.inject(0) { |suma, item| suma + item.size }
	end
end