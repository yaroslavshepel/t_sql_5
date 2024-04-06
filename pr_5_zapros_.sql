/*select * from [Departments]
select * from [Doctors]
select * from [Wards]
select * from [Examinations]
select * from [Doctors_Examinations]*/

/*select Id, [Name] as [Ward_Name], [Places] from [Wards]*/

/*1*/
/*select count(*) [More_Than_10_Places] from [Wards] where [Places] > 10*/

/*2,3*/
/*select  
[Departments].[Name] as 'Name', count([Wards].[Name]) as 'Places' 
from [Departments], [Wards]
where [Departments].Id = [Wards].[Department_Id]
group by [Departments].[Name]*/

/*4*/
/*select
[Departments].[Name] as 'Departments_Name', sum([Premium]) as 'Sum_premium'
from [Departments], [Doctors]
group by [Departments].[Name]*/

/*6*/
/*select 
COUNT([Doctors].[Name]) as 'Number_of_doctors', (sum([Doctors].[Salary]) + sum([Doctors].[Premium])) as 'Sum_salary'
from [Doctors]*/

/*7*/
/*select 
(sum([Doctors].[Salary]) + sum([Doctors].[Premium]))/COUNT([Doctors].[Name]) as 'Awerange_salary'
from [Doctors]*/

/*8*/
/*select
[Wards].[Id] as 'Id', [Wards].[Name] as 'Ward_name', min([Wards].[Places]) as 'min_ward_places'
from [Wards]
where [Wards].[Id] = [Wards].[Places]
group by [Wards].[Id], [Wards].[Name]*/
