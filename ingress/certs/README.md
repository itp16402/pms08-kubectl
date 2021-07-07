# Για να δω το περιέχομεντ του certification
openssl x509 -in certificate.crt -text -noout
# Create secret tls
k create secret generic tls-secret --from-file=tls.crt=certificate.crt --from-file=tls.key=private.key --from-file=ca.crt=ca_bundle.crt
