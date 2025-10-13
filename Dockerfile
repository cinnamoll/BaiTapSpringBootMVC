# Sử dụng base image là OpenJDK (phiên bản 17-jdk-slim là một lựa chọn tốt cho kích thước nhỏ)
FROM openjdk:17-jdk-slim

# Đặt biến môi trường để định nghĩa tên file JAR được build
ARG JAR_FILE=target/*.jar

# Sao chép file JAR đã build từ máy host vào container
# Giả sử file JAR của bạn nằm trong target/ và bạn muốn nó là app.jar trong container
COPY ${JAR_FILE} app.jar

# Expose cổng mà ứng dụng Spring Boot sử dụng (thường là 8080)
EXPOSE 8080

# Lệnh chạy ứng dụng Spring Boot khi container khởi động
ENTRYPOINT ["java", "-jar", "app.jar"]