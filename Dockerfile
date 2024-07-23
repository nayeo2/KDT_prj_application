# 공식 OpenJDK 17 런타임을 부모 이미지로 사용
FROM openjdk:17-jre-slim

# 컨테이너에서 작업 디렉토리 설정
WORKDIR /app

# 패키징된 jar 파일을 컨테이너로 복사
COPY target/inclass-spring-security-0.0.1-SNAPSHOT.jar /app/inclass-spring-security-0.0.1-SNAPSHOT.jar

# jar 파일 실행
ENTRYPOINT ["java", "-jar", "inclass-spring-security-0.0.1-SNAPSHOT.jar"]
