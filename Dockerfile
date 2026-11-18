FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY PrimeNumber.java .
RUN javac PrimeNumber.java
CMD ["java", "PrimeNumber"]