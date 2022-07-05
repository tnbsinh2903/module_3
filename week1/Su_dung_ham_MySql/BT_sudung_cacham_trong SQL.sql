-- hiển thị tt môn học có credit cao nhát ;
select SubID , SubName ,max(Credit) AS Credit, Status 
from subject ;
-- hiển thị tt môn học có điểm thi lớn nhất ;
select subject.SubID , subject.SubName, Credit ,max(Mark) as Mark from subject
join mark on subject.SubID = mark.SubID ;
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần;
select student.StudentID , student.StudentName, student.Address, student.Status , avg(Mark) as MarkStudent
from student join mark on student.StudentID = mark.StudentID
group by StudentID;
