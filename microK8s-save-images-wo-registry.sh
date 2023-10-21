#!/bin/bash

docker save myImage > myImage.tar
microk8s ctr image import myImage.tar
    # image: myImage:<its_tag>
    # imagePullPolicy: Never

microk8s ctr images ls | grep myImage
rm myImage.tar

microk8s kubectl delete po myPod
microk8s kubectl apply -f manifests/myPod.yaml
# microk8s kubectl exec -ti myPod -- /bin/sh

