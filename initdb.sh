echo "init database"
for podname in $(microk8s.kubectl get pods -l app=postgres -o json| jq -r '.items[].metadata.name'); do cat postgres/masters.sql | microk8s.kubectl exec -i ${podname} -- psql -U postgres -d postgres; done
