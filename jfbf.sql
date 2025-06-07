SELECT * FROM 'Student'
WHERE'student_id' =1; 
CREATE Table STUDENT(
    StudentID VARCHAR(10) PRIMARY KEY,
    SNAME VARCHAR (50),
    Gender CHAR (1),
    DOB  DATE,
    CLASS VARCHAR(10)
    );

    INSERT INTO STUDENT (SID,SNAME,Gender,DOB,CLASS) VALUES
    ('S001','陳大文','M' ,'2006-02-15' ,'4A'),
    ('S002','李小明', 'M' ,'2005-11-23' ,'4B'),
    ('S003','王美麗','F' ,'2006-05-30' ,'4A');