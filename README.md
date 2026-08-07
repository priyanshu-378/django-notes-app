# Dockerized Django Notes App

This repository contains a Dockerized version of the Django Notes App originally created by **Londhe Shubham**. The application has been containerized using Docker and Docker Compose with both single-stage and multi-stage Docker builds.

## Features

- Dockerized Django application
- Single-stage Docker build
- Multi-stage Docker build for optimized image size
- Docker Compose configuration
- MySQL database support
- Easy deployment using containers

## Tech Stack

- Python 3.9
- Django
- MySQL
- Docker
- Docker Compose

## Project Structure

```
.
├── Dockerfile
├── Dockerfile-multi
├── docker-compose.yml
├── requirements.txt
├── entrypoint.sh
├── backend/
└── ...
```

## Clone Repository

```bash
git clone <your-repository-url>
cd django-notes-app
```

---

# Running with Docker (Single-stage Build)

## Build Image

```bash
docker build -t django-notes-app .
```

## Run Container

```bash
docker run -d -p 8000:8000 django-notes-app
```

---

# Running with Multi-stage Build

## Build Image

```bash
docker build -f Dockerfile-multi -t django-notes-app:multi .
```

## Run Container

```bash
docker run -d -p 8000:8000 django-notes-app:multi
```

---

# Running with Docker Compose

Start the application

```bash
docker compose up --build
```

Run in detached mode

```bash
docker compose up -d
```

Stop containers

```bash
docker compose down
```

---

# Access Application

Open your browser and visit

```
http://localhost:8000
```

---

# Docker Concepts Demonstrated

- Single-stage Docker build
- Multi-stage Docker build
- Docker Compose
- Image optimization
- Layer caching
- Container networking
- Volume mounting
- MySQL integration

---

# Acknowledgement

The original Django Notes App was developed by **Londhe Shubham**.

The Dockerfiles, multi-stage Docker implementation, and Docker Compose configuration were created by **Priyanshu Chauhan** for learning Docker containerization and deployment.
