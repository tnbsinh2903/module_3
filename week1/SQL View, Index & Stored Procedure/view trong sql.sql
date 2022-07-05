-- tạo view ;
create view customer_view as 
select customerNumber , customerName, phone
from customers ;
-- cập nhật view  ;
create or replace view customer_view as 
select customerNumber , customerName, contactFirstName, contactLastName, phone
from customers where city = 'Nantes';
-- xóa view ;
drop view customer_view;