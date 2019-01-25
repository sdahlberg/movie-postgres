#!/bin/bash

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER movie WITH PASSWORD 'movie';
    CREATE DATABASE movie;
    GRANT ALL PRIVILEGES ON DATABASE movie TO movie;
    \connect movie;
    CREATE SCHEMA "movie_adapter" AUTHORIZATION movie;
    CREATE SCHEMA "movie_service" AUTHORIZATION movie;
EOSQL
