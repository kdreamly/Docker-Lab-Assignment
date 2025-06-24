# Docker-Lab-Assignment
Docker Lab Assignment
1. Create a Single-Stage Dockerfile
Write a Dockerfile to build and run a Node.js application using the provided code base.
The application should run on port 80.

mkdir my-node-app
cd my-node-app
vim Dockerfile
vim index.js 
docker build -t my-node-app .
docker run -p 80:80 my-node-app
curl http://localhost


