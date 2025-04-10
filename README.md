Actt. Diseño e Implementación de un Sistema con Tolerancia a Fallas usando Tecnologías de Última Generación

1.	Selección de nuestro escenario
Para nuestro tema nosotros decidimos escoger realizar la actividad primeramente pensada en microservicios, los cuales tendrían la capacidad de tener una información y de esta conectarse con una base de datos cuya información sea procesada en tiempo real, también que esta misma información sea posible de consultar mediante una interfaz visual.

La base de datos tiene conexión correcta con la API, posterior a esto también guarda dentro los errores que lleguen a suceder , que en este caso con errores generados con el fin de observar el comportamiento y funcionamiento del proyecto.

Se decidió hacer EndPoints para poder crear facturas, pagos, pedidos, clientes, detalles y con esto se conecta la base de datos para llevar registros , y de nuestro código se hacen testeos con fallos programados , los cuales quedan registrados en BD. 

Dejo a grandes rasgos la estructura de nuestro proyecto el cual esta en un repositorio de Git Hub.


2.- 	Diseño de arquitectura
•	Conforme a los requisitos ya mencionados y previamente redactados en otro documento, en nuestro caso estaremos aplicando micro servicios, ya que de este modo no tendremos un solo punto de fallo , es decir que no solo se centrará en un solo fallo , estarán distribuidos en los EndPoints.
•	Detectar fallos
o	nuestra manera de detectar los fallos será por medio de la base de datos debido a que ahí se estarán mostrando en tiempo real si llegase a fallar
o	Por correo electrónico si se llega a presentar quizás 2 o más veces el fallo, avisando en tiempo real para estar informados.
•	Herramientas
o	N8n, Para flujos de trabajo automatizados con manejo de errores, reintentos y lógica condicional.
o	Python y C#, como lenguajes de programación para llevar a cabo toda la parte importante del proyecto en curso.

¿Cómo se relaciona con tolerancia a fallas?
•	Este servicio puede formar parte de un sistema de supervisión: si una aplicación crítica y de gran importancia deja de ejecutarse, el servicio lo detecta.
•	Se podría extender para reiniciar automáticamente el proceso, enviar alertas, o tomar acciones correctivas → haciéndolo un componente tolerante a fallas.
