# DateSLQ

Tenemos 4 tipos de datos sql para implementar y manejar fechas.

Tipo
| -------------|
| date| 
| datetime| 
| time| 
| timestamp| 
| year| 

cada uno con una caracteristica especial.

Formato de ingreso 
| Tipo de dato | Formato | Ejemplo | Tamaño de almacenamiento (bytes)|
| ------------- | ------------- |------------- |------------- |
| date  | YYYY-MM-dd  |  2020-12-12|3 |
| datetime | YYYY-MM-DD hh:mm:ss[.nnn]  |2020-12-12 00:00:00 | 8|
| time  |hh:mm:ss[.nnnnnnn]  | 12:12:00 |3 to 5 |
| timestamp  | YYYY-MM-DD hh:mm:ss[.nnn]  | 2020-12-12 00:00:00 | 4 |
| year  |YYYY   |  2020 | 1|

Date: 3 bytes
Tipo fecha, almacena una fecha. El rango de valores va desde el 1 de enero del 1001 al 31 de diciembre de 9999. El formato de almacenamiento es de año-mes-dia

DateTime: 8 bytes
Combinación de fecha y hora. El rango de valores va desde el 1 de enero del 1001 a las 0 horas, 0 minutos y 0 segundos al 31 de diciembre del 9999 a las 23 horas, 
59 minutos y 59 segundos. El formato de almacenamiento es de año-mes-dia horas:minutos:segundos

TimeStamp: 4 bytes
Combinación de fecha y hora. El rango va desde el 1 de enero de 1970 al año 2037. El formato de almacenamiento depende del tamaño del campo:

Time: 3 bytes
Almacena una hora. El rango de horas va desde -838 horas, 59 minutos y 59 segundos a 838, 59 minutos y 59 segundos. 
El formato de almacenamiento es de 'HH:MM:SS'

Year: 1 byte
Almacena un año. El rango de valores permitidos va desde el año 1901 al año 2155. El campo puede tener tamaño dos o tamaño 4 
dependiendo de si queremos almacenar el año con dos o cuatro dígitos.

## Diferencia entre datetime y timeStamm

MySQL convierte TIMESTAMP los valores de la zona horaria actual a UTC para el almacenamiento y de vuelta de UTC a la zona horaria actual para la recuperación. (Esto no ocurre con otros tipos como DATETIME.) De forma predeterminada, la zona horaria actual para cada conexión es la hora del servidor. La zona horaria se puede configurar por conexión. Siempre que la configuración de la zona horaria permanezca constante, obtendrá el mismo valor que almacenó. Si almacena un TIMESTAMP valor y luego cambia la zona horaria y recupera el valor, el valor recuperado es diferente del valor que almacenó. Esto ocurre porque no se utilizó la misma zona horaria para la conversión en ambas direcciones. La zona horaria actual está disponible como el valor de latime_zone variable del sistema
