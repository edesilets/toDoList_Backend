-- make sure you run sign-up first
-- Put Names of lists into the list table

insert into lists (category, created_at, updated_at, user_id)
  values ('ThisIsAnCategoryOfList1', '2011-11-11', '2011-11-11', 1),
  ('ThisIsAnCategoryOfList2', '2022-02-02', '2022-02-02', 1);

select * from lists;

--  To put items in a intems table
insert into items (todo, list_id, created_at, updated_at)
  values ('ThisIsAnTodoOfItems1', 1 , '2111-11-11', '2111-11-11'),
  ('ThisIsAnTodoOfItems2', 2, '2111-12-22', '2111-12-22'),
  ('ThisIsAnTodoOfItems3', 2 , '2222-03-03', '2222-03-03'),
  ('ThisIsAnTodoOfItems4', 1 , '2222-03-03', '2222-03-03');
