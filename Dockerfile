# Usa una imagen base de Java
FROM openjdk:17-jdk-alpine

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR al contenedor
COPY target/simple-rest.jar simple-rest.jar

# Expone el puerto en el que tu aplicación escuchará
EXPOSE 8080

# Comando para ejecutar tu aplicación Spring Boot
ENTRYPOINT ["java", "-jar", "simple-rest.jar"]
