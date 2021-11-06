# add repo
helm repo add traefik https://helm.traefik.io/traefik

# update repo
helm repo update

# create namespace to traefik
kubectl create namespace traefik

# install traefik at namespace traefik with LoadBalancer Internal
helm install \
     --set service.annotations."cloud\.google\.com/load-balancer-type"=Internal \
     --namespace traefik \
     traefik \
     traefik/traefik

# set project name here
export project_name="abc"
# If you have API GCP to create Network DNS Record
gcloud beta dns --project=${project_name} managed-zones create \
    zonedns.internal --description="test dns zone" \
    --dns-name="myzonedns.internal." --visibility="private" --networks="default"
