-- tạo mysql stored procedure
delimiter //
create procedure findAllCustomers () 
begin
select * from customers;
end //
delimiter ;
-- gọi procedure ;
call findAllCustomers() ;
-- sửa procedure ;
delimiter //
drop procedure if exists findAllCustomers;
create procedure findAllCustomers ()
begin 
select * from customers where 	customerNumber = 175 ;
end//
delimiter ;
