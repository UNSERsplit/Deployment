# Deployment

DB setup:
```sql
create database mydb;
create user myuser with encrypted password 'mypass';
grant all privileges on database mydb to myuser;
\c mydb postgres
GRANT ALL ON SCHEMA public TO myuser```