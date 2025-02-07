# Deployment

DB setup:
```sql
create database database;
create user myuser with encrypted password 'mypass';
grant all privileges on database database to myuser;
\c database postgres
GRANT ALL ON SCHEMA public TO myuser```