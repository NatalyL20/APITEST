## Especificaciones del proyecto
```Gherkin
Lenguaje de Programación: Java.
Framework de Pruebas: Karate para estructurar las pruebas y generar reportes.
Cucumber para casos de prueba.
```

## Obtener el proyecto
Para obtener el proyecto debemos clonar desde Github.
Abrir el proyecto y descargar las dependencias y plugins del archivo POM.

## Estructura del proyecto
El proyecto tiene la siguiente estructura:
```Gherkin

+ src
  + test
    + java  
        +com.regresIn
          +data
          +feature
          +utilities
        +karate-config
        +TestRunner
   
```

## Ejecución del proyecto
Ejecutar la clase TestRunner la cual se encuentra configurada para ejecutar todos los feature.

Se encuentra en la ruta:
```Gherkin

+ src
  + test
    + java
        +TestRunner
```
## Reporte
El reporte se generará en la ruta con el nombre index.html:
```Gherkin
+APITEST
    + target
        + karate-reports  
          +karate-sumary.html
       
```


