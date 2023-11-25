# Utiliza una imagen base con Java (puede ser JDK o JRE según tus necesidades)
FROM openjdk:11

# Argumento para el puerto que la aplicación expondrá
ARG PORT=8080

# Expone el puerto (debe coincidir con el puerto de tu aplicación)
EXPOSE $PORT

# Agrega el archivo jar de tu aplicación al contenedor
ADD target/ChessProject-0.0.1-SNAPSHOT.jar ChessProject-0.0.1-SNAPSHOT.jar

# Ejecuta el jar
ENTRYPOINT ["java", "-jar", "/ChessProject-0.0.1-SNAPSHOT.jar"]
