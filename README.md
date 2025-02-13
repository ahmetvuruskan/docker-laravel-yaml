
# Laravel Application with Docker

This repository provides the configuration for running a Laravel application using Docker. It simplifies the setup of your development environment by containerizing the application and its dependencies.

## Prerequisites

Before you begin, ensure that you have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)


## Docker PHP Extensions

For a list of available PHP extensions for the Docker environment, you can refer to this [gist](https://gist.github.com/chronon/95911d21928cff786e306c23e7d1d3f3).

## Additional Configuration

You can modify the `docker-compose.yml` file to adjust settings like:
- PHP versions
- Database credentials
- Ports and volumes

## Troubleshooting

If you encounter issues, try the following:
1. Ensure Docker is running on your machine.
2. Rebuild the containers with `docker-compose up --build` if changes are made to the Docker configuration.
3. Check the logs of a specific service with `docker-compose logs <service-name>`.
