echo ===== Compiling Java Program =====
javac PrimeNumber.java
 
echo ===== Executing Java Program =====
echo 17| java PrimeNumber
 
echo ===== Building Docker Image =====
docker build -t prime-app:latest .
 
echo ===== Deploying to Kubernetes =====
kubectl delete job prime-job --ignore-not-found
kubectl apply -f prime-job.yaml
kubectl wait --for=condition=complete job/prime-job --timeout=120s
 
echo ===== Application Output =====
kubectl logs job/prime-job
