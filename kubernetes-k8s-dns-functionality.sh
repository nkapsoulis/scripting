#!/bin/bash

echo 'apiVersion: v1
kind: Pod
metadata:
    name: dnsutils
    namespace: default
    spec:
    containers:
      - name: dnsutils
      image: registry.k8s.io/e2e-test-images/jessie-dnsutils:1.3
        command:
            - sleep
            - "infinity"
          imagePullPolicy: IfNotPresent
      restartPolicy: Always
' > dnsutils.yaml
kubectl apply -f dnsutils.yaml
watch -n 1 kubectl get pod dnsutils # When Running go on.
kubectl exec -i -t dnsutils -- nslookup kubernetes.default
# SAMPLE OUTPUT
# Server:		10.96.0.10
# Address:	10.96.0.10#53

# Name:	kubernetes.default.svc.cluster.local
# Address: 10.96.0.1

