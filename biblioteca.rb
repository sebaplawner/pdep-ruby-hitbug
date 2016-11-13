require './contenido'

class Biblioteca
	def initialize tamanioIndividual
		@biblioteca = []
		@tamanioIndividual = tamanioIndividual
	end

	def contiene contenido
		@biblioteca.include? contenido
	end

	def superaTamanioIndividual contenido
		contenido.tamanio > @tamanioIndividual
	end

	def rebalsa contenido
		self.tamanio + contenido.tamanio > 500 * @tamanioIndividual
	end

	def tamanio
		@biblioteca.inject(0) { |suma, item| suma + item.tamanio }
	end

	def subir contenido
		raise 'El archivo no se pudo subir' if not contenido.sePuedeSubir self
		@biblioteca << contenido
		contenido.modificar	
	end

	def buscarPorNombre nombre
		@biblioteca.select{ |item| item.nombre.include? nombre }
	end

	def actividadReciente
		@biblioteca.sort_by{ |item| item.ultimaModificacion }[0..4].map{ |item| item.nombre }
	end

	def removerRotos
		@biblioteca.reject! { |item| item.roto self }
	end

	def eliminar contenido
		@biblioteca.delete contenido
	end
end