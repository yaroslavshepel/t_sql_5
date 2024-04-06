use pr5
go
create table [Faculties_HW](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(100) unique not null
);

create table [Departments_HW](
	Id int primary key identity(1,1) not null,
	[Financing] money check([Financing] >= 0) not null,
	[Name] nvarchar(max) check(len([Name])>0) not null,
	[Faculties_HW_Id] int foreign key references [Faculties_HW]([Id])
);

create table [Groups_HW](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(10) unique not null,
	[Year] int check([Year]>=1 and [Year]<=5) not null,
	[Departments_HW_Id] int foreign key references [Departments_HW]([Id])
);

create table [Teachers_HW](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(max) check(len([Name])>=1) not null,
	[Surname] nvarchar(max) check(len([Surname])>0) not null,
	[Salary] money check([Salary]>0) not null
);

create table [Subjects_HW](
	Id int primary key identity(1,1) not null,
	[Name] nvarchar(max) check(len([Name])>0) not null
);

create table [Lecture_HW](
	Id int primary key identity(1,1) not null,
	[Lecture_Room] nvarchar(max) check(Len([Lecture_Room])>0) not null,
	[Subjects_HW_Id] int foreign key references [Subjects_HW]([Id]),
	[Teachers_HW_Id] int foreign key references [Teachers_HW]([Id])
);

create table [GroupsLectures_HW](
	Id int primary key identity(1,1) not null,
	[Day_of_Week] int check([Day_of_Week]>=1 and [Day_of_Week]<=7) not null,
	[Groups_HW_Id] int foreign key references [Groups_HW]([Id]),
	[Lecture_HW_Id] int foreign key references [Lecture_HW]([Id])
);

