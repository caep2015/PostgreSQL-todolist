# PostgreSQL Database
The Iron Yard Week 7, Day 2: Daily Project: Create and edit a database table using SQL

Create a PostgreSQL database called `todolist` with a table called `todos` to be used for storing todo items.

Each item should have the following fields:

* id -- a serial primary key
* title -- not optional, string up to 255 characters
* details -- optional, holds a large amount of text
* priority -- not optional, an integer. Default is 1.
* created_at -- not optional. A date and time.
* completed_at -- optional. A date and time.

In a file called `todo.sql`:

* Write the `CREATE TABLE` statement to make this table.
* Write `INSERT` statements to insert five todos into this table, with one of them completed.
* Write a `SELECT` statement to find all incomplete todos.
* Write a `SELECT` statement to find all todos with a priority above 1.
* Write an `UPDATE` statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
* Write a `DELETE` statement to delete all completed todos.
