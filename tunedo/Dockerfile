FROM openjdk:21-buster
LABEL key="tune-do-team"
RUN groupadd spring && useradd -r -g spring spring
USER spring:spring
ARG WAR_FILE=target/*.war
COPY ${WAR_FILE} tunedo-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/tunedo-0.0.1-SNAPSHOT.war"]