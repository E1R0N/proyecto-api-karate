# Proyecto API Rest con Karate, Cucumber y Gradle

Este proyecto contiene pruebas automatizadas utilizando Karate Framework y Cucumber para la ejecución de pruebas REST y la generación de informes.

##Dependencias Principales
- Karate Framework (v1.2.0)
- Cucumber (v7.13.0)
- JUnit 5 (v5.9.3)
- Apache Commons IO (v2.11.0)
- Apache Commons Math3 (v3.6.1)
- Google Guava (v28.2-jre)
- Noggit (v0.8)
- Apache Commons Lang3 (v3.12.0)

## Requisitos:
- **JDK 1.8**
- **Gradle 7.6.1**

## Cómo Ejecutar el Proyecto
### 1. Clona el repositorio:
 ```bash
   https://github.com/E1R0N/proyecto-api-karate.git
  ```
### 2. Ejecutar el archivo `build.gradle`:
El archivo `build.gradle` contiene la configuración de dependencias y tareas necesarias para ejecutar las pruebas.

Para descargar todas las dependencias y compilar el proyecto, ejecuta el siguiente comando desde la raíz del proyecto:
```bash
./gradlew build
```
Este comando también verificará la integridad del proyecto y generará los artefactos necesarios.
### 3. Ejecutar las pruebas con Gradle:
Una vez que el proyecto esté compilado y listo, puedes ejecutar todas las pruebas automatizadas con el siguiente comando:
```bash
./gradlew clean test
```
El comando clean asegura que se eliminen los archivos generados previamente, y el comando test ejecuta todas las pruebas de Cucumber integradas con Karate. Después de la ejecución, se generarán reportes automáticos.
### 4. Ver los reportes de pruebas:
Después de ejecutar las pruebas, puedes visualizar los reportes detallados generados por Cucumber en la siguiente ruta:
```bash
target/cucumber-html-reports
```
