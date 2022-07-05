explain select * from customers where customerName = 'Land of Toys Inc.';
-- thêm index theo cặp ;
alter table customers
add index id_fullName (contactFirstName, contactLastName );
explain select * from customers 
where contactFirstName = 'Jean' or contactLastName = 'King';
-- xóa index trong bảng ;
alter table customers
drop index id_fullName ;