use pr5
go
INSERT INTO [Faculties_HW] 
VALUES 
    ('Computer Science_'),
    ('Software Development_'),
    ('Electrical Engineering_'),
    ('Mechanical Engineering_'),
    ('Civil Engineering_'),
    ('Chemical Engineering_');

INSERT INTO [Departments_HW] ([Financing], [Name])
VALUES 
    (50000, 'Computer Science'),
    (40000, 'Software Development'),
    (60000, 'Electrical Engineering'),
    (55000, 'Mechanical Engineering'),
    (48000, 'Civil Engineering'),
    (62000, 'Chemical Engineering');

INSERT INTO [Groups_HW] ([Name], [Year])
VALUES 
    ('CS101', 1),
    ('CS102', 1),
    ('SD202', 2),
    ('SD203', 2),
    ('EE303', 3),
    ('EE304', 3);

INSERT INTO [Teachers_HW] 
VALUES 
    ('John', 'Doe', 50000),
    ('Jane', 'Smith', 55000),
    ('Dave', 'McQueen', 60000),
    ('Jack', 'Underhill', 65000),
    ('Alice', 'Johnson', 58000),
    ('Michael', 'Williams', 62000);

INSERT INTO [Subjects_HW] 
VALUES 
    ('Mathematics'),
    ('Physics'),
    ('Computer Science'),
    ('Chemistry'),
    ('Biology'),
    ('English');

INSERT INTO [Lecture_HW] ([Lecture_Room])
VALUES 
    ('D201'),
    ('D202'),
    ('D203'),
    ('D204'),
    ('D205'),
    ('D206');

INSERT INTO [GroupsLectures_HW] ([Day_of_Week])
VALUES 
    (1),
    (2),
    (3),
    (4),
    (5),
    (6);
