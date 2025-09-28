FROM openjdk:17-jdk

# JAR 파일이 저장될 작업 디렉토리 설정
WORKDIR /app

# Maven 또는 Gradle 빌드 후 생성된 JAR 파일을 컨테이너 내부 /app 디렉토리에 app.jar 이름으로 복사
COPY app.jar app.jar
# Host(Jenkins)에 생성된 app.jar 파일을 컨테이너 내부 /app/app.jar 파일로 복사

# 4. 실행 포트 지정 컨테이너가 외부와 통신하기 위한 PORT 설정
EXPOSE 8081

# 5. 컨테이너 실행 시 JAR 실행
# 컨테이너가 시작될 때 자동으로 java, -jar, app.jar 명령을 실행하도록 설정 
ENTRYPOINT ["java", "-jar", "app.jar"]
