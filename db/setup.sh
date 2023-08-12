docker build -t people_db ./db
docker run --name pg_db --rm -e POSTGRES_PASSWORD=password -d people_db
# docker run --name runner --rm -e POSTGRES_PASSWORD=password -p 5454:5432 -d people_db