#sh db_load.sh my_database c:\dev\dump.sql
docker-compose exec -T postgres psql -p 5432 -U $1 < $2
