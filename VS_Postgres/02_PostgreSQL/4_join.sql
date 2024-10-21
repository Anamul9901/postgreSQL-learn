-- ----------REtrieve all posts titl with their username -------------


-- inner join
SELECT title, username FROM post
    JOIN "user" on post.user_id = "user".id;


-- ai join k inner join bole. JOIN er age INNER dele o hoi, na deleo hoi
-- aitr khetre post er data age dekhabe pore user er
SELECT * FROM post
    INNER JOIN "user" on post.user_id = "user".id;

-- aitr kehtre user er data age dekhabe pore post er
SELECT * FROM "user"
    JOIN post ON "user".id = post.user_id;

SELECT post.id, "user".id FROM post
    JOIN "user" ON post.user_id = "user".id;


-- post er nam chuto kore p, user er nam chuto kore u
SELECT p.id, u.id FROM post p 
    JOIN "user" u ON p.user_id = u.id;

-- [nam short korar khetre 'as' use na korle o hoi]
SELECT p.id, u.id FROM post as p 
    JOIN "user" as u ON p.user_id = u.id;




-- ------------------- left-right join----------------

INSERT INTO post (id, title, user_id) VALUES
    (5, 'this is a test post title', NULL);

SELECT * from post;

-- aikhane null user data thakle dekhabe nah
SELECT * FROM post as p 
    JOIN "user" u ON p.user_id = u.id;


-- aikhane right er data null thakle o left er all data dekhabe dekhabe
SELECT  * FROM post as p 
    LEFT JOIN "user" u ON p.user_id = u.id;



-- aikhane left er data null thakle o right er all data dekhabe dekhabe
-- aikhane right outer dele hoi only right dele o hoi
SELECT * FROM post p 
    RIGHT OUTER JOIN "user" u ON p.user_id = u.id;