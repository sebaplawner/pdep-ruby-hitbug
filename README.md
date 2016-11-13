# Hitbug - Ruby

###Los equipos que elijan Ruby deberán analizar los siguientes aspectos:
####Disciplina de Tipado: cómo Ruby tipa las variables.
>	Ruby tiene tipado dinámico, y soporta polimorfismo de tipos (permite tratar a subclases utilizando la interfaz de la clase padre). Ruby no requiere de polimorfismo de funciones (sobrecarga de funciones) al ser dinámicamente tipado (los parámetros de una función pueden ser de distinto tipo en cada llamada, encargándose dicha función de determinar el tipo y actuar en consecuencia).
  
----

####Interpretación: ¿Es ruby un lenguaje compilado o interpretado?
>	Ruby es un lenguaje de programación interpretado en una sola pasada y su implementación oficial es distribuida bajo una licencia de software libre.

----

####Metaprogramación: ¿Qué significa metaprogramar? ¿Qué ofrece Ruby en este sentido?
>	La metaprogramación consiste en escribir programas que escriben o manipulan otros programas (o a sí mismos) como datos, o que hacen en tiempo de compilación parte del trabajo que, de otra forma, se haría en tiempo de ejecución. Esto permite al programador ahorrar tiempo en la producción de código.

----

####Clases abiertas: ¿Qué son las open clases o clases abiertas? ¿Que ventajas y desventajas tienen? ¿Qué es el monkey patching?
>	Las clases de Ruby están abiertas. Puedes abrirlas, agregarles funcionalidad y modificarlas en cualquier momento.
>	
>	La principal ventaja es que aumenta la dinámica del lenguaje, permitiendo modificaciones y flexibilidad al escribir código.
>	
>	La desventaja es que es fácil estropearlo y si no se sabe lo que se hace puede causar destrozos.
>	
>	Monkey patching es la manera de un programa para extenderse o modificar librerías que lo acompañan localmente (afectando únicamente la instancia corriendo del programa).

----

####Módulos: ¿Qué es y qué tres usos tiene un module? ¿Qué es un mixin? ¿Para qué sirve?
>	En programación, un módulo es una porción de un programa de ordenador.
>
>	Primero, actúan como librería, definiendo métodos cuyos nombres no interfieran con otros definidos en otros sitios.
>	
>	Segundo, permiten aumentar las funcionalidades de las clases: si una clase usa un módulo, los métodos de este módulo estarán disponibles en los objetos que procedan de esta clase.
>
>	Cuando una clase puede heredar características de más de una clase padre, la clase se supone que muestra la herencia múltiple.
>	Ruby no apoya directamente la herencia múltiple, pero Rubí posee módulos que cumplen otro uso maravilloso. De un golpe, eliminan prácticamente la necesidad de la herencia múltiple, proporcionando una instalación llamada mixin.
>
>	Mixins le dan una manera maravillosamente controlada de agregar funcionalidad a las clases. Sin embargo, su verdadero poder viene cuando el código en el mixin comienza a interactuar con el código de la clase que lo utiliza.

----

####Pureza: ¿se cumple el "todo es un objeto"? ¿Qué cosa no lo es? ¿Que consecuencias tiene?
>	Ruby es orientado a objetos: todos los tipos de datos son un objeto, incluidas las clases y tipos que otros lenguajes definen como primitivas, (como enteros, booleanos, y "nil"). Toda función es un método. Las variables siempre son referencias a objetos, no los objetos mismos.
>
>	En Ruby no existen los objetos inmediatos lo que no nos permite definir un objeto sin antes haber diseñado la clase que le servirá de molde.
>
>	Su consecuencia es tener que modelar todas las clases aunque sea por un sólo objeto y no poder usar la composición como la conocemos, aunque existen reemplazos como los Procs y lambdas que servirán como reemplazo.

----

####Objetos: ¿se puede declarar objetos "al vuelo" y darles comportamiento dinámicamente?
>	No existen los objetos "al vuelo", debemos diseñar sus clases para poder luego instanciarlos como objetos. Aunque existen muchas utilidades como Procs, lambdas, módulos y clases abiertas que nos permiten diseñar nuestros objetos de manera dinámica y personalizada.
