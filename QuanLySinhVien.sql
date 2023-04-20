USE QuanLySinhVien;
-- Hiển thị tất cả sinh viên có tên bắt đầu bằng chữ "h" 
select * from student where StudentName like "h%";
-- Hiển thị thông tin lớp học có thời gian bắt đầu bằng tháng 12
select * from class where StartDate like "%-12-%";
-- Hiển thị tất cả các thông tin môn học có credit khoảng 3-5
select * from subject where Credit between 3 and 5;
-- Thay đổi mã lớp của sinh viên có tên "Hung" là 2
update student set ClassId=2 where StudentName="Hung";
update mark set Mark = 12 where StudentId = 2;
select * from student;
-- Hiển thị các thông tin, dữ liệu sắp xếp theo điểm thi giảm dần, nếu trùng sắp theo tên tăng dần
select student.StudentName, subject.SubName, mark.Mark
from ((student
join mark on student.StudentId = mark.StudentId)
join subject on mark.SubId = subject.SubId)
order by mark DESC, StudentName ASC;
