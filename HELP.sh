cd D:/Other/projects/k8s
docker build -t hello1image .
# Создаем под
kubectl run hellopod1 --image=hello1image:latest --port=80
kubectl run hellopod1
#pod/hellopod1 created
 kubectl get pods

 http://localhost:8081/

 kubectl run -i --tty --attach hellopod1 --image=valentinjd/hellodocker:latest --port=8081

 kubectl get deployments --all-namespaces
# Удалить под
kubectl delete pod hellopod1 --grace-period=0 --force

# Репозиторий докерхаб
docker tag local-image:v1tag valentinjd/hellodocker:v1tag
docker tag hello1image:latest valentinjd/hellodocker:latest
docker push valentinjd/hellodocker:latest
