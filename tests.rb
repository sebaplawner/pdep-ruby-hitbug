require 'test/unit'
require './biblioteca'
require './contenido'
require './superBiblioteca'
require './contenidoSimple'
require './contenidoEspecial'
require './contenidoBinario'
require './contenidoTexto'
require './contenidoLink'
require './contenidoCarpeta'
require './compresion'
require './utilitarios'
 
class Tests < Test::Unit::TestCase
	def setup
		@biblioteca = Biblioteca.new 100000
		@superBiblioteca = Biblioteca.new 100000
		@contenido1 = ContenidoTexto.new "Pepe", ['Hola', 'que', 'tal']
		@contenido2 = ContenidoBinario.new "Pepa", 157286401
		@contenido3 = ContenidoBinario.new "Pepo" * 200, 1
		@contenido4 = ContenidoLink.new "Papa", @contenido1
	end

	def test1_1_1 # Saber el tamaño de un archivo de 160 bytes
		assert_equal 160, @contenido1.tamanio
	end

	def test1_2_1 # Saber si un contenido liviano es liviano
		assert_equal true, @contenido1.esLiviano
	end

	def test1_2_2 # Saber si un contenido pesado es liviano
		assert_equal false, @contenido2.esLiviano
	end

	def test1_3_1 # Saber si un contenido de nombre corto, liviano y sin duplicados se puede subir a una biblioteca
		assert_equal true, @contenido1.sePuedeSubir(@biblioteca)
	end

	def test1_3_2 # Saber si un contenido de nombre largo, liviano y sin duplicados se puede subir a una biblioteca
		assert_equal false, @contenido3.sePuedeSubir(@biblioteca)
	end

	def test1_3_3 # Saber si un contenido de nombre corto, pesado y sin duplicados se puede subir a una biblioteca
		assert_equal false, @contenido2.sePuedeSubir(@biblioteca)
	end

	def test1_3_4 # Saber si un contenido de nombre corto, liviano y con duplicados se puede subir a una biblioteca
		@biblioteca.subir @contenido1
		assert_equal false, @contenido1.sePuedeSubir(@biblioteca)
	end

	def test1_4_1 # Subir un contenido a una biblioteca exitosamente
		assert_nothing_raised { @biblioteca.subir @contenido1 }
	end

	def test1_4_2 # Subir un contenido a una biblioteca catastroficamente
		assert_raise { @biblioteca.subir @contenido2 }
	end

	def test1_5_1 # Buscar un contenido dentro de una biblioteca por nombre
		@biblioteca.subir @contenido1
		assert_equal [@contenido1], @biblioteca.buscarPorNombre("Pe")
	end

	def test1_6_1 # Obtener los nombres de los 5 contenidos más recientes de una biblioteca
		@biblioteca.subir @contenido1
		assert_equal ["Pepe"], @biblioteca.actividadReciente
	end

	def test2_2_1 # Eliminar un contenido de una biblioteca
		@biblioteca.subir @contenido1
		@biblioteca.eliminar @contenido1
		assert_equal false, @biblioteca.contiene(@contenido1)
	end

	def test2_3_1 # Saber si se puede subir un contenido especial con referencia saludable
		@biblioteca.subir @contenido1
		assert_equal true, @contenido4.sePuedeSubir(@biblioteca)
	end

	def test2_3_2 # Saber si se puede subir un contenido especial con referencia rota
		assert_equal false, @contenido4.sePuedeSubir(@biblioteca)
	end

	def test2_4_1 # Saber si se puede subir un contenido especial con referencia rota
		@biblioteca.subir @contenido1
		@biblioteca.subir @contenido4
		@biblioteca.eliminar @contenido1
		@biblioteca.removerRotos
		assert_equal false, @biblioteca.contiene(@contenido4)
	end
end