use quanlysinhvien;
-- Hiển thị ds tất cả hv;
SELECT *FROM Student;
-- delete from Student where StudentID <> 1 and StudentID <> 2 and StudentID <> 3  ;
-- Hiển thị ds hv đang học;
SELECT *
FROM Student
WHERE Status = TRUE;
-- hiển thị ds môn học có tg nhỏ hơn 10;
SELECT *
FROM Subject
WHERE Credit < 10;
-- hiên thị ds hv lớp a1;
SELECT StudentID, StudentName, ClassName
FROM Student
JOIN class ON student.ClassID = class.ClassID
where ClassName = 'A1';
-- hiển thị điểm môn cf 
select  Student.StudentID, Student.StudentName, Subject.SubName, Mark.Mark from Student
join Mark on student.StudentID = mark.StudentID
join subject on mark.SubID = subject.SubID where SubName = 'CF'; 
