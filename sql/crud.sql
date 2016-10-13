-- sql (CRUD) test

-- insert 
insert into EMAILLIST 
VALUES(emaillist_seq.nextval, '홍', '길동', 'email@email.com');

-- select
select no, last_name, first_name, email
from emaillist
order by no desc;