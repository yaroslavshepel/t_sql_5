create table [Departments](
Id int primary key identity(1,1) not null,
[Building] int not null,
[Name] nvarchar(max) not null,
constraint CK_Building_n check ([Building] >= 1 and [Building] <= 5)
);

create table [Doctors](
Id int primary key identity(1,1) not null,
[Name] nvarchar(max) not null,
[Premium] money not null,
[Salary] money not null,
[Surname] nvarchar(max) not null
);

create table [Wards](
Id int primary key identity(1,1) not null,
[Name] nvarchar(max) not null,
[Places] int not null check ([Places] > 0),
[Department_Id] int foreign key references [Departments]([Id])
);

create table [Examinations](
Id int primary key identity(1,1) not null,
[Name] nvarchar(max) not null
);

create table [Doctors_Examinations](
Id int primary key identity(1,1) not null,
[Start_Time] time not null, 
[End_Time] time not null,
[Doctor_Id] int foreign key references [Doctors]([Id]),
[Examinations_Id] int foreign key references [Examinations](Id),
[Wards_Id] int foreign key references [Wards]([Id]),
constraint CK_Start_Time_ck check ([Start_Time] >= '08:00:00' and [Start_Time] <= '18:00:00'),
constraint CK_End_Time_ck check ([End_Time] > [Start_Time])
);

drop table [Doctors_Examinations]