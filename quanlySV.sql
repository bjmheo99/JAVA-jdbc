create database QuanLySV
go
use QuanLySV
create table Student(
	ID int identity(1,1) primary key NOT NULL,
	name nvarchar(40) NOT NULL,
	age varchar(3) NOT NULL
)
create table Class(
	ID int identity(1,1) primary key NOT NULL,
	class_name nvarchar(40) NOT NULL
)
create table DayOff(
	ID int identity(1,1) primary key NOT NULL,
	student_id varchar(12) NOT NULL,
	day_off Date
)
INSERT INTO Student (name,age) VALUES (N'Nguyễn Văn A',20);
INSERT INTO Student (name,age) VALUES (N'Lê Hoàng B',21);
INSERT INTO Student (name,age) VALUES (N'Trần Hữu C',22);
INSERT INTO Student (name,age) VALUES (N'Nguyễn Thị D',20);

INSERT INTO Class (class_name) VALUES ('java201');
INSERT INTO Class (class_name) VALUES ('LTDD');
INSERT INTO Class (class_name) VALUES (N'Quản trị mạng');
INSERT INTO Class (class_name) VALUES ('CSDL');

INSERT INTO DayOff (student_id,day_off) VALUES ('171250533224','2019/09/29');
INSERT INTO DayOff (student_id,day_off) VALUES ('171250533224','2019/09/15');
INSERT INTO DayOff (student_id,day_off) VALUES ('171250533225','2019/09/20');
INSERT INTO DayOff (student_id,day_off) VALUES ('171250533225','2019/11/26');
INSERT INTO DayOff (student_id,day_off) VALUES ('171250533226','2019/10/03');
INSERT INTO DayOff (student_id,day_off) VALUES ('171250533226','2019/10/21');
INSERT INTO DayOff (student_id,day_off) VALUES ('171250533227','2019/09/14');
INSERT INTO DayOff (student_id,day_off) VALUES ('171250533227','2019/12/11');

