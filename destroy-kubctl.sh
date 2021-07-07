echo "delete ingress"
microk8s.kubectl delete ingress pms8-ingress

echo "delete services"
microk8s.kubectl delete svc postgres-svc
microk8s.kubectl delete svc redis-svc
microk8s.kubectl delete svc tomcat-svc

echo "delete deployments"
microk8s.kubectl delete deployment postgres-deployment
microk8s.kubectl delete deployment tomcat-deployment
microk8s.kubectl delete deployment redis-deployment

echo "delete Persitense Volume Claim"
microk8s.kubectl delete pvc postgres-pvc
microk8s.kubectl delete pvc tomcat-pvc

echo "delete Persitense Volume"
microk8s.kubectl delete pv postgres-pv
microk8s.kubectl delete pv tomcat-pv

echo "undeploy war"
rm /mnt/data/*.war
echo "remove front"
rm -Rf /mnt/data/project/
