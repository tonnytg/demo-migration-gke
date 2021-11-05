#!/bin/bash

read -p "Name of project (ex: apple-123): " project_name
read -p "Name of compute region (ex: us-central1): " compute_region
read -p "Name of compute zone (ex: us-central1-c): " compute_zone
read -p "Name of cluster (ex: blackPearl): " cluster_name

# Set in config the new project
gcloud config set project $project_name

# Set region of compute to be used by gcloud
gcloud config set compute/region ${compute_region}

# Set zone of compute to be used by gcloud
gcloud config set compute/zone ${compute_zone}

# Create a basic gke cluster
gcloud container clusters create ${cluster_name} --num-nodes=1

# Get credentials of new cluster
gcloud container clusters get-credentials ${cluster_name}

