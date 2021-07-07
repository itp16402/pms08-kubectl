# Create secrets
# k create secret generic pg-user --from-literal=PGUSER=postgres --from-literal=PGPASSWORD=postgres
# kustomization.yaml
# restore to Postgres po
cat masters.sql | k exec -i pg-deployment-6bd7fc755d-nmhws -- psql -U postgres -d postgres
#
# Encoding text data
echo -n 'postgres' | base64

# Decoding text data
echo 'cG9zdGdyZXMK' | base64 --decode

# apply all yaml files required kustomization.yaml
k apply -f ./
