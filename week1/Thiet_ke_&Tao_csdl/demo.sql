-- use demo;
-- select  salary from customer
-- order by salary asc;
-- select cName, salary ,id from customer where salary = 23000 or salary = 45008;
-- alter table customer rename column id to cID ;
-- select cID,cName, salary  from customer 
--  inner outer join product on customer.cName = product.namePro;
select donhangID, tenKH, ngaydathang from donhang
inner join khachhang on donhang.khachangID = khachhang.khachangID;
select tenKH, donhangID from khachhang 
left join donhang on khachhang.	khachangID = donhang.khachangID
order by tenKH;
