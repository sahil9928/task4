-- Example MySQL schema
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    created_at TIMESTAMP
);


-- Equivalent PostgreSQL schema
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    created_at TIMESTAMP
);


sudo apt-get install pgloader


pgloader mysql://user:password@source_db/mydb postgresql://user:password@target_db/mydb


mysqldump -u user -p --opt --no-create-info mydb > data.sql


psql -U user -d target_db -f data.sql


-- Count rows in MySQL
SELECT COUNT(*) FROM users;

-- Count rows in PostgreSQL
SELECT COUNT(*) FROM users;


-- Check for NULLs in MySQL
SELECT COUNT(*) FROM users WHERE name IS NULL;

-- Check for NULLs in PostgreSQL
SELECT COUNT(*) FROM users WHERE name IS NULL;


-- Compare data for a sample record
SELECT * FROM users WHERE id = 1;  -- MySQL query
-- Then do the same in PostgreSQL
SELECT * FROM users WHERE id = 1;  -- PostgreSQL query


-- Check indexes in PostgreSQL
SELECT * FROM pg_indexes WHERE tablename = 'users';

-- Check foreign keys in PostgreSQL
SELECT conname, conrelid::regclass AS table_name, confrelid::regclass AS reference_table
FROM pg_constraint WHERE conrelid = 'users'::regclass;


