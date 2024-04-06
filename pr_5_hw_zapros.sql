use pr5
go
/*1*/
select 
count(*) as 'Teacher_count'
from [Teachers_HW] as T
join [Departments_HW] as D on T.Id = D.Id
where D.[Name] = 'Software Development';

/*2*/
select
	count(*) as 'Lesson_count'
	from [Teachers_HW], [Lecture_HW]
	inner join [Teachers_HW] as TH on [Lecture_HW].Teachers_HW_Id = TH.id
	where [Teachers_HW].[Name] = 'Dave' and [Teachers_HW].[Surname] = 'McQueen'

/*3*/
select
	count(*) as 'Lesson_count'
	from [Lecture_HW]
	join [GroupsLectures_HW] on [Lecture_HW].Id = [GroupsLectures_HW].Lecture_HW_Id
	where [Lecture_HW].[Lecture_Room] = 'D201'

/*4*/
select
	[Lecture_HW].Lecture_Room, COUNT(*) as 'Lecture_Count'
	from [Lecture_HW]
	group by [Lecture_Room]

/*6*/
select
	avg([Teachers_HW].[Salary]) as 'avg_salary'
	from [Faculties_HW]
	join [Departments_HW] on [Faculties_HW].Id = [Departments_HW].Faculties_HW_Id
	join [Groups_HW] on [Departments_HW].Id = [Groups_HW].Departments_HW_Id
	join [Lecture_HW] on [Groups_HW].Id = [Groups_HW].Id
	join [Teachers_HW] on [Lecture_HW].[Teachers_HW_Id] = [Teachers_HW].Id
	where [Faculties_HW].[Name] = 'Computer Science_'

/*8*/
select
	avg([Departments_HW].Financing) as 'avg_financing'
	from [Departments_HW]

/*9*/
select
	[Teachers_HW].[Name] + ' ' + [Teachers_HW].[Surname] as 'Full_Name',
	COUNT(*) as 'Lecture_Count'
	from [Teachers_HW]
	JOIN [Lecture_HW] ON [Teachers_HW].[Id] = [Lecture_HW].[Teachers_HW_Id]
	GROUP BY [Teachers_HW].[Id], [Teachers_HW].[Name], [Teachers_HW].[Surname];

/*10*/
select
    [Day_of_Week],
    count(*) as [Lecture_Count]
	from [GroupsLectures_HW]
	group by [Day_of_Week];



