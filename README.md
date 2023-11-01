# Modelo relacional. Viveros

Para facilitar la comprensión de los scripts, estos se han dividido según mi consideración.

Por un lado, contamos con `CREATE_ALL_TABLES.sql`, que, como su nombre indica, crea todas las tablas de la base de datos. Por otro lado, tenemos `DELETE_ALL_TABLES.sql`, que de manera análoga elimina todas las tablas. Finalmente, `INSERT_ALL.sql` se encarga de llamar a cada uno de los archivos ubicados en el directorio `INSERT_SCRIPTS`. Estos tres scripts se agrupan en uno principal llamado `BUILD_DATA_BASE.sql`, que primero elimina todas las tablas, después las crea y, por último, añade las entradas en cada una de ellas.

También es importante mencionar que, para verificar las restricciones, existen scripts en el directorio `FAULTY_INSERTS` que realizan inserciones con errores de manera intencionada, con el propósito de comprobar dichas restricciones.

Por último, cabe destacar que el script `SHOW_ALL_TABLES.sql` muestra toda la información de las tablas en la base de datos.


## Capturas de pantalla de cada tabla


Tabla de cliente

![Cliente](/img/Cliente.jpg)

Tabla de cliente plus

![Cliente PLus](/img/Cliente_plus.jpg)

Tabla de Empleados

![Empleados](/img/Empleados.jpg)

Tabla de Producto

![Producto](/img/Producto.jpg)

Tabla de Viveros

![Viveros](/img/Viveros.jpg)

Tabla de Zonas

![Zonas](/img/Zona.jpg)

Tabla de Historicos

![Historicos](/img/Historico.jpg)

Tabla de Pedidos

![Pedidos](/img/Pedidos.jpg)



## Modelo Entidad/Relación

![Entidad/Relación](/img/Entidad.png)

## Modelo Relacional

![Relacional](/img/Relacional.png)