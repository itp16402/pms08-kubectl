# pms08-kubectl
Βήμα 1.
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

Βήμα 2.
Θα πρέπει στο φάκελλο pms08 να εκτελεστεί το script initdb.sh όπου θα εκτελέσει τις απαραίτητες sql εντολές για την δημιουργία πινάκων και την εισαγωγή των αρχικών δεδομένων.

Βήμα 3.
Θα πρέπει να συνδεθείτε στο Jenkins http://huapms08.cloudns.cl:30000 και να γίνουν build τα παρακάτω projects:

pms08-back-login
pms08-back-main
pms08-back-mail

pms08-font

Βήμα 4.

Θα πρέπει στο φάκελλο pms08 να εκτελεστεί το script deploy.sh όπου θα κάνει deploy (στην ουσία copy) τα παραπάνω αρχεία.
