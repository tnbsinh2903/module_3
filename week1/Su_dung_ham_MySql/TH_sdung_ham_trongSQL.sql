use quanlysinhvien;
-- hiển thị số lượng sinh viên ở từng nơi ;
select Address , count(StudentID) as 'Số lượng học viên' 
from student group by Address ;
-- Tính điểm trung bình các môn học của mỗi học viên ;
select student.StudentID ,student.StudentName, avg(Mark) 
from student join Mark on student.StudentID = mark.StudentID
GROUP BY StudentID, StudentName ;
-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15;
select student.StudentID ,student.StudentName, avg(Mark) as avger
from student join Mark on student.StudentID = mark.StudentID
GROUP BY StudentID, StudentName
having avger > 5 ;
-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất ;
select student.StudentID ,student.StudentName, avg(Mark) as avger
from student join Mark on student.StudentID = mark.StudentID
GROUP BY StudentID, StudentName
having avger >= all (select avg(mark) from mark group by mark.StudentID );