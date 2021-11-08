#!/bin/bash

read -p "Enter project name: " project_name
for I in `seq 1 2`
do
  echo "creating project $project_name"
  gcloud projects create $project_name
  if [ $? -eq 0 ]; then
    echo "Project $project_name created successfully"
  else
    echo "Project $project_name already exists"
    break
  fi
done