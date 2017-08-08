
CREATE TABLE todos (
  --id -- a serial primary key
  id SERIAL NOT NULL PRIMARY KEY,
  --title -- not optional, string up to 255 characters
  title varchar(255) NOT NULL,
  --details -- optional, holds a large amount of text
  details varchar,
  --priority -- not optional, an integer. Default is 1.
  priority int DEFAULT 1,
  --created_at -- not optional. A date and time.
  created_at timestamp NOT NULL,
  --completed_at -- optional. A date a time.
  completed_at timestamp
);

--Write INSERT statements to insert five todos into this table, with one of them completed.
INSERT INTO todos (title, details, priority, created_at, completed_at)
VALUES ('plan party', 'go shopping, invite guests, prepare home, plan meal', 1, '2017-08-01 16:32', '2017-08-08 09:10');

INSERT INTO todos (title, details, priority, created_at)
VALUES ('go shopping', 'party supplies, food, drinks, party favors', 1, '2017-08-01 16:45');

INSERT INTO todos (title, details, priority, created_at)
VALUES ('prepare home', 'clean house, garden, pool care, decorate', 1, '2017-08-01 17:00');

INSERT INTO todos (title, details, priority, created_at)
VALUES ('invite guests', 'make phone calls, post social media invites', 1, '2017-08-01 17:08');

INSERT INTO todos (title, details, priority, created_at)
VALUES ('prep meal', 'drinks, sides, appetizers, desserts, grill', 1, '2017-08-01 18:15');

UPDATE todos SET priority = 2 WHERE title = 'go shopping';

--Write a SELECT statement to find all incomplete todos.

SELECT title FROM todos WHERE completed_at is NULL;


--Write a SELECT statement to find all todos with a priority above 1.

SELECT title FROM todos WHERE priority > 1;

--Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.

UPDATE todos SET completed_at = '2017-08-12 12:15:55' WHERE id = 2;


--Write a DELETE statement to delete all completed todos.
DELETE FROM todos WHERE completed_at in not NULL;
