-- tham so loai IN ;
DELIMITER $$
CREATE PROCEDURE getCusById (in cusNum int (11))
BEGIN
SELECT * FROM customers WHERE customerNumber = cusNum ;
END $$ 
DELIMITER ;
CALL getCusById(157) ;
-- tham so laoi OUT ;
delimiter $$ 
create procedure GetCustomersCountByCity( in in_city varchar(50), out total int)
begin 
select count(customerNumber)
into total from customers 
where city = in_city ;
end $$

call GetCustomersCountByCity('Lyon' , @total);
select @total ;
-- tham so loai inout;
DELIMITER $$
CREATE PROCEDURE SetCounter( inout counter int, in inc int )
BEGIN
SET counter = counter + inc ;
END $$ 
DELIMITER ;

SET @counter =1 ;
call SetCounter(@counter,1); 
call SetCounter(@counter,1); 
call SetCounter(@counter,5); 
select @counter ; 
