name: Django CI with Docker

on:
  push:
    branches: ["main"]
  pull_request:
    branches: ["main"]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - name: Check out the code
      uses: actions/checkout@v4

    - name: Set up Docker
      uses: docker/setup-buildx-action@v2

    - name: Install Docker Compose
      run: sudo apt-get install -y docker-compose

    - name: Export GitHub Secrets as Environment Variables
      env:
        DJANGO_SECRET_KEY: ${{ secrets.DJANGO_SECRET_KEY }}
        DATABASE_URL: ${{ secrets.DATABASE_URL }}
        OTHER_SECRET: ${{ secrets.OTHER_SECRET }}
      run: |
        echo "DJANGO_SECRET_KEY=${DJANGO_SECRET_KEY}" >> .env
        echo "DATABASE_URL=${DATABASE_URL}" >> .env
        echo "OTHER_SECRET=${OTHER_SECRET}" >> .env

    - name: Build and Run Docker Compose
      run: |
        docker-compose up --build
