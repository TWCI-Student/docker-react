# Docker Tutorial

Docker Tutorial based on Udemy Course 'Docker and Cubernetes: The Complete Guide' by Stephen Grider

## Docker

```bash
# Create the docker container
$ docker build -f Dockerfile.dev .
Successfully built <containerID>

# Run the container
# -p 3000:3000  Map external port 3000 to internal port 3000
# -v $pwd):/app Map the present working directory to the app folder in the container
# -v /app/node_modules  Exclude the node_modules folder from the mapping
$ docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app <containerID>

# Run tests in the container
$ docker run -it <containerID> npm run test

# Run the docker-compose file
$ docker-compose up -d
```
