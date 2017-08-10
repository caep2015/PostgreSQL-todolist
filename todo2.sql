--database is called todolistdb
--droptable todo.sql
--10 inserts instead of 20
--set it up with droptable
--second screen go into psql connect \cdatabase name
-- connect
--run make sure they work

--Write INSERT statements to insert 10 todos into the todos table,
--with a combination of priorities, created times,
--and completed times, with not all having a completed time.

DROP TABLE IF EXISTS todos;

CREATE TABLE todos (
  id SERIAL NOT NULL PRIMARY KEY,
  title varchar(255) NOT NULL,
  details varchar,
  priority int DEFAULT 1,
  created_at timestamp NOT NULL,
  completed_at timestamp
);

INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('1','Prep for back to school', 'choose curriculum, purchase books, print schedules', 10, '2017-08-01 16:32', '2017-08-08 09:10');

INSERT INTO todos (id, title, details, priority, created_at)
VALUES ('2','Plan Automn Garden', 'order seed from catalogs, check gardening guides, prep soil', 9, '2017-08-01 16:32');

INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('3','Plan Thanksgiving Gathering', 'finalize attendees and plan meal', 8, '2017-08-01 16:32', '2017-08-03 09:10');

INSERT INTO todos (id, title, details, priority, created_at, )
VALUES ('4','Make winter plans', 'Check on reservations at the ski lodge, purchase snow boots', 7, '2017-08-01 16:32');

INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('5','Do quarterly home maintenace', 'Change air filters, water filters, vacuum vents and ceiling fans', 6, '2017-08-01 16:32', '2017-08-03 09:10');

INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('6','Pack for vacation', 'purchase toiletries, pack suitcases, and itinerary', 5, '2017-08-01 16:32', '2017-08-07 09:10');

INSERT INTO todos (id, title, details, priority, created_at)
VALUES ('7','Plan family time', 'Purchase popcorn, snacks, treats, drinks, new games, and maybe a movie', 4, '2017-08-01 16:32');

INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('8','Beach plans', 'Surf lessons, kayaks, sand castles, sailing', 3, '2017-08-01 16:32', '2017-08-06 09:10');

INSERT INTO todos (id, title, details, priority, created_at)
VALUES ('9','code title', 'code detail', 2, '2017-08-01 16:32');

INSERT INTO todos (id, title, details, priority, created_at, completed_at)
VALUES ('10','Write code', 'make sure it includes javaScript and databases', 1, '2017-08-01 16:32', '2017-08-04 09:10');


--Write a SELECT statement to find all incomplete todos with priority 3.
SELECT * FROM todos WHERE completed_at AND priority = 3 is null GROUP BY created_at, todos.id;

--Write a SELECT statement to find the number of incomplete todos by priority.
SELECT COUNT(title) FROM todos WHERE completed_at is null GROUP BY priority, todos.id;

--Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT COUNT(created_at) FROM todos WHERE created_at>'2017-07-10' GROUP BY priority, todos.id;

--Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SELECT * MAX(created_at) FROM todos WHERE priority = 1 GROUP BY priority, todo.id LIMIT 1;
