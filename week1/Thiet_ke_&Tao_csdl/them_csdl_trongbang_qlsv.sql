USE quanlysinhvien;
insert into class values 
(1, 'A1','2008-12-20',1),
(2, 'A2','2008-12-22',1),
(3, 'B1',current_date(),0);

alter table student add column phone int (10);

insert into student ( StudentName, Address, phone, Status, ClassID)
values ('Hung', 'Ha Noi', 0912113113, 1,1), ('Hoa', 'Hai Phong', 0912113113, 1,1), ('Manh', 'HCM', 0123123123, 0,2);

insert into Subject 
values (1,'CF',5,1),(2,'C',6,1),(3,'HDJ',5,1),(4,'RDBMS',10,1);

INSERT INTO Mark (SubID, StudentID, Mark, ExamTimes) 
VALUES (1,1,8,1),(1,2,10,2),(2,1,12,1);