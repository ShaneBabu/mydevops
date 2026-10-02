#!/bin/bash

echo "Starting Docker Compose deployment..."

docker compose up -d --build

echo "Application and database containers started successfully."
