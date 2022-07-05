use quanlysinhvien;
-- hiển thị ds sv có tên bắt đầu bằng kí tự 'h' ;
SELECT StudentID, StudentName
FROM student
WHERE student.StudentName LIKE 'h%';
-- Hiển thị thông tin lướp có tg bắt dầu vào tháng 12 ;
select ClassID , ClassName , StartDate 
from class 
where class.StartDate like '%12%'; 
-- hiển thị môn học có credit trong khoảng 3 -5 ;
select SubID , SubName , Credit 
from subject 
where credit >= 3 and credit <= 5 ;
-- thay dổi mã lớp sv có tên 'hung' là 2 ;
update student set ClassID = 2 where StudentID = 1;
-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần ;
select StudentName , SubName , Mark from student
join subject on student.StudentID = subject.SubID 
join mark on student.StudentID = mark.StudentID 
order by Mark desc ;

