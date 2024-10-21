
-- create user table
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);


-- create post table with forenKey
CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE set NULL
    -- user_id INTEGER REFERENCES "user"(id) ON DELETE set DEFAULT DEFAULT 2
);
-- set not null in fkey
ALTER Table post
    alter COLUMN user_id set NOT NULL;


DROP Table post;
DROP TABLE "user";

-- insert user data
INSERT INTO "user" (username)
    VALUES
        ('akash'),
        ('batash'),
        ('sagor'),
        ('nodi');

SELECT * from "user"

-- insert post data
INSERT INTO post (title, user_id) VALUES
    ('Enjoying a sunny day with Akash! ☀️', 2),
    ('Batash just shared an amazing recipe! 💭', 1),
    ('Exploring adventures with Sagor! ♒', 4),
    ('Nodi''s wisdom always leaves me inspired! 💦', 4)

SELECT * from post;


-----------------------Deletion constraint on DELETE user ------------------

-- Cascading deletion --> ON DELETE CASCADE [user delete korle er refer fkey jekhane use korse se data o delete hoye jabe]
-- Setting NULL --> ON DELETE SET NULL
-- Restrict Deletion --> ON DELETE RESTRICT / ON DELETE ON ACTION (default)
-- Set Default value --> ON DELETE SET DEFAULT

DELETE FROM "user"
    WHERE id = 4;



