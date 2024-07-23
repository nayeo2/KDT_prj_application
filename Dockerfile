# Dockerfile

# 기본 이미지를 설정합니다
FROM openjdk:17-jdk-slim

# 작업 디렉토리 생성
WORKDIR /app

# Gradle 빌드에서 생성된 JAR 파일을 컨테이너로 복사합니다
COPY /build/libs/inclass-spring-security-0.0.1-SNAPSHOT.jar /app/inclass-spring-security-0.0.1-SNAPSHOT.jar

# JAR 파일 실행
ENTRYPOINT ["java", "-jar", "inclass-spring-security-0.0.1-SNAPSHOT.jar"]
