# pms08-kubectl
Για την εγκατάσταση όλων των YAML αρχείων θα πρέπει πρώτα να γίνουν pull τα yaml δεδομένα με τα σχετικά directories από το git hub https://github.com/itp16402/pms08-kubectl.
Θα πρέπει να μετακινηθείτε στο folder pms08.
Και απο κει να να εκτελέσουμε την εντολή micro8ks.kubctl apply -k ./
Θα δημιουργήθουν τα παρακάτω: 

deployments:

postgres-deployment
redis-deployment 
jenkins-deployment
tomcat-deployment

Persistent Volume Claims:

postgres-pvc
tomcat-pvc
jenkins-pvc

Services:

tomcat-svc
jenkins-jnlp
jenkins
postgres-svc
redis-svc

Ingress:

pms8-ingress

Secret:

pg-user
