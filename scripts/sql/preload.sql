-- make sure you run sign-up first
-- Put Names of lists into the list table

insert into lists (category, created_at, updated_at, user_id)
  values ('Home Supplies', '2011-11-11', '2011-11-11', 1),
  ('Office Supplies', '2022-02-02', '2022-02-02', 1);

select * from lists;

--  To put items in a intems table
insert into items (todo, list_id, created_at, updated_at)
  values ('Toilet Paper', 1 , '2111-11-11', '2111-11-11'),
  ('Dog Food', 1, '2111-12-22', '2111-12-22'),
  ('Fish Food', 1 , '2222-03-03', '2222-03-03'),
  ('hamdaburger', 1 , '2222-03-03', '2222-03-03'),
  ('Pens', 2 , '2222-03-03', '2222-03-03'),
  ('Paper', 2 , '2222-03-03', '2222-03-03'),
  ('Staples', 1 , '2222-03-03', '2222-03-03');

  insert into lists (category, created_at, updated_at, user_id)
    values ('Home Supplies', '2011-11-11', '2011-11-11', 2),
    ('Office Supplies', '2022-02-02', '2022-02-02', 2);

  select * from lists;

  --  To put items in a intems table
  insert into items (todo, list_id, created_at, updated_at)
    values ('Toilet Paper', 3 , '2111-11-11', '2111-11-11'),
    ('Dog Food', 3, '2111-12-22', '2111-12-22'),
    ('Fish Food', 3 , '2222-03-03', '2222-03-03'),
    ('hamdaburger', 3 , '2222-03-03', '2222-03-03'),
    ('Pens', 4 , '2222-03-03', '2222-03-03'),
    ('Paper', 4 , '2222-03-03', '2222-03-03'),
    ('Staples', 4 , '2222-03-03', '2222-03-03');

  insert into lists (category, created_at, updated_at, user_id)
    values ('Car Supplies', '2011-11-11', '2011-11-11', 3),
    ('Boat Supplies', '2022-02-02', '2022-02-02', 3);

  select * from lists;

  insert into items (todo, list_id, created_at, updated_at)
    values ('Toilet Paper', 6 , '2111-11-11', '2111-11-11'),
    ('Dog Food', 6, '2111-12-22', '2111-12-22'),
    ('Fish Food', 6 , '2222-03-03', '2222-03-03'),
    ('hamdaburger', 6 , '2222-03-03', '2222-03-03'),
    ('Oil', 5 , '2222-03-03', '2222-03-03'),
    ('Belts', 5 , '2222-03-03', '2222-03-03'),
    ('Filters', 5 , '2222-03-03', '2222-03-03');
