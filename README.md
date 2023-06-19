![logo](./images/logotipo-universidad-nebrija.jpg)

# Trabajo de Fin de Grado: Anexos
---

#### Este es el repositorio oficial asociado al desarrollo al Trabajo de Fin de Grado de Cristóbal García Fernández
---

En este repositorio, están contenidos los **códigos y scripts desarrollados** a los que se ha hecho referencia en el proyecto y que, por cuestiones de volumen, no se ha incluido en su totalidad en la memoria.

##### En cuanto al contenido:

- **./EBDW.STERLING**
    
    - *SP_UPDATE_TABLES.sql*: Contiene el script SQL con la definición del **procedimiento almacenado que actualiza las tablas** de producción con el lote de datos más reciente.

    - *task.sql*: Contiene la **tarea** que, cada 10 minutos, hace una llamada al procedimiento almacenado pasando como parámetros la vista origen y la tabla destino de un tópico particular. *Se ha incluido este script como ejemplo pero, al haber 18 tópicos, realmente se han desarrollado 18 tareas*.

    - *YFS_ORDER_HEADER_VW*: Contine la definición de la **vista** a partir de su equivalente en STAGING (*staging.sterling.YFS_ORDER_HEADER_VW*).

- **./STAGING.STERLING**

    - *YFS_ORDER_HEADER_VW*: Contiene la definición de la vista que realiza el parseo de la tabla generada por el conector de Snowflake Kafka para extraer los datos del campo '*RECORD_CONTENT*'.

- **./Dashboard**

    - Contiene las consultas SQL las cuales, mediante los metadatos de Snowflake, generan las gráficas de coste y cómputo en créditos diario, semanal y mensual, así como el cuadro de mando de monitorización de las ejecuciones del procedimiento.  
