CREATE DATABASE itversity_retail_db;
CREATE USER itversity_retail_user WITH ENCRYPTED PASSWORD 'itversity';
GRANT ALL ON DATABASE itversity_retail_db TO itversity_retail_user;