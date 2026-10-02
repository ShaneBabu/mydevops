#!/bin/bash

echo "Starting Trivy image scan..."

trivy image mydevops-app:1.0
trivy image mydevops-db:1.0

echo "Trivy scan completed."
