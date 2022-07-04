use quanlibanhang;
-- them du lieu vao bang customer ;
insert into customer(cName, cAge) value ('Minh Quan' , 10),( 'Ngoc Oanh', 20),('Hong Ha', 50);
-- them du lieu vang bang orders ;
insert into orders (oID,cID, oDate  ) 
values (1,1, '2006-03-21') ,(2,2, '2006-03-23'),(3,1, '2006-03-16') ;
-- them dl vao bang product ;
insert into product (pID, pName , pPrice )
values (1, 'May Giac', 3),(2,'Tu Lanh' ,5),(3, 'Dieu Hoa' ,7) ,(4,'Quat',1),(5 ,'Bep Dien', 2);
-- them dl va0 bang OrderDetail ;
insert into orderdetail (oID, pID, odQTY)
VALUES (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order;
select oID, oDate , oTotalPrice from orders;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách ;
select orders.oID, customer.cID, cName,  pName from orders 
join customer on orders.cID = customer.cID 
join orderdetail on orders.oID =orderdetail.oID 
join product on orderdetail.pID = product.pID ;
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer.cID, customer.cName from customer
left join orders on orders.cID = customer.cID
where orders.cID is null
group by cName  ;
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
--  Giá bán của từng loại được tính = odQTY*pPrice)
select orders.oID, oDate, orderdetail.odQTY * product.pPrice  as TotalPrice 
from orders 
join orderdetail on orders.oID = orderdetail.oID
JOIN product on orderdetail.pID = product.pID 
;

