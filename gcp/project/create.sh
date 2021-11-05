#!/bin/bash

read -p "Enter project name: " project_name
gcloud projects create ${project_name}