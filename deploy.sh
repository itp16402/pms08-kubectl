echo "deploy pms08-back-login"
for podname in $(microk8s.kubectl get pods -n jenkins -l app=jenkins -o json| jq -r '.items[].metadata.name'); do microk8s.kubectl cp ${podname}:var/jenkins_home/workspace/pms08-back-login/target/sam-login-0.0.1-SNAPSHOT.war /mnt/data/sam-login-0.0.1-SNAPSHOT.war -n jenkins; done
echo "deploy pms08-back-mail"
for podname in $(microk8s.kubectl get pods -n jenkins -l app=jenkins -o json| jq -r '.items[].metadata.name'); do microk8s.kubectl cp ${podname}:var/jenkins_home/workspace/pms08-back-mail/target/sam-mail-0.0.1-SNAPSHOT.war /mnt/data/sam-mail-0.0.1-SNAPSHOT.war -n jenkins; done
echo "deploy pms08-back-menu"
for podname in $(microk8s.kubectl get pods -n jenkins -l app=jenkins -o json| jq -r '.items[].metadata.name'); do microk8s.kubectl cp ${podname}:var/jenkins_home/workspace/pms08-back-menu/target/sam-menu-0.0.1-SNAPSHOT.war /mnt/data/sam-menu-0.0.1-SNAPSHOT.war -n jenkins; done
echo "deploy pms08-front"
for podname in $(microk8s.kubectl get pods -n jenkins -l app=jenkins -o json| jq -r '.items[].metadata.name'); do microk8s.kubectl cp ${podname}:var/jenkins_home/workspace/pms08-front/dist/project /mnt/data/project/ -n jenkins; done

echo "init database"
for podname in $(microk8s.kubectl get pods -l app=postgres -o json| jq -r '.items[].metadata.name'); do cat postgres/masters.sql | microk8s.kubectl exec -i ${podname} -- psql -U postgres -d postgres; done
cp -R tomcat/WEB-INF /mnt/data/project
