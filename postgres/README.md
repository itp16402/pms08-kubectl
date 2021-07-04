# Create secrets
# k create secret generic pg-user --from-literal=PGUSER=postgres --from-literal=PGPASSWORD=postgres
# kustomization.yaml
# restore to Postgres po
#  cat a.sql | k exec -i pg-deployment-6bd7fc755d-nmhws -- psql -U postgres -d postgres
k apply -f ./
