-- Active: 1729482640868@@127.0.0.1@5432@ph

-- person tabil show
SELECT * FROM person;

-- new email column create with default value.
ALTER TABLE person
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

-- add new row
INSERT INTO person values(8, 'test2', 45, 'test2@gmail.com');

-- delete column
ALTER TABLE person
    DROP COLUMN email;

-- change column name
ALTER TABLE person
    RENAME COLUMN age to user_age;

-- change column data type [aikhane age varcher(20) sele]
ALTER Table person
    alter COLUMN user_name type VARCHAR(50);

-- set new constant in column[null to not null]
ALTER Table person
    alter column user_age set NOT NULL;

-- remove column constant[not null to null]
ALTER Table person
    ALTER COLUMN user_age drop NOT null;

-- make unique a column. if 2 row value is same then it's give me error.
ALTER TABLE person
    ADD constraint unique_person_user_age UNIQUE(user_age);

-- delete unique 
ALTER TABLE person
    DROP constraint unique_person_user_age;

-- make primary key
ALTER Table person
    ADD constraint pk_person_user_age PRIMARY KEY(id);


-- delete table
DROP TABLE person;

-- delete only table data, not tabil model
TRUNCATE TABLE person;