drop sequence emaillist_seq;

create sequence emaillist_seq
start with 1 
increment by  1
maxvalue 99999999;

-- sql crud

insert  into emaillist
values( emaillist_seq.nextval, '안','대혁', 'kickscar@gmail.com');

commit;  -- 혹시 이전에 delete하거나 update 할 수 있으므로,


-- select
select  no,last_name, first_name, email from emaillist 
order by no desc;

--  