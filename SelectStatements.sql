select * from employee
select * from instructor
select * from student

select *
from
employee e
join
company c ON c.User_ID = e.Comp_User_ID
where
e.comp_name = "Facebook";

select 
p.f_name, p.l_name
from 
employee e
join 
company c on e.comp_user_ID = c.User_ID
join
person p on e.user_ID = p.User_ID
where e.comp_name = "Facebook"

select 
p.f_name, p.l_name
from 
instructor i
join 
employee e on e.user_ID = i.User_ID
join
person p on e.user_ID = p.User_ID
where e.comp_name = "Tupras"

select
p.f_name, p.l_name
from
instructor i
join
company c on i.User_ID = c.Mgr_User_ID
join
person p on p.User_ID = c.Mgr_User_ID



--Lessons given by a person who is an employee, an instructor and a manager at amazon at the same time

select 
i.field
from 
instructor i
join 
employee e on e.user_ID = i.User_ID
join
person p on e.user_ID = p.User_ID
join
company cp on cp.Mgr_User_ID = e.user_ID
join 
course c on c.Ins_User_ID = cp.Mgr_User_ID
where e.comp_name = "Amazon";

--Number, name and surname of the student who is in the project managed by the person who is
-- instructor and manager at Amazon
select 
pe.User_ID,pe.f_name,pe.l_name
from 
employee e
join 
instructor i on e.User_ID = i.User_ID
join
company c on i.User_ID = c.Mgr_User_ID
join
course co on c.Mgr_User_ID = co.Ins_User_ID
join
project p on p.Course_ID = co.Course_ID
join
student_do_projects sdp on p.Pnumber = sdp.Pnumber
join 
person pe on sdp.std_user_ID = pe.User_ID
where e.comp_name = "Amazon";

--The names, surnames of all persons working in a company and the name of company they work for
SELECT Person.F_Name,Person.L_Name, Community.Com_Name
FROM Person, Company, Employee, Community
WHERE Company.User_ID = Employee.Comp_User_ID AND Employee.User_ID = Person.User_ID AND Company.User_ID = Community.User_ID

--The address of the company where the user with 502 ID works.
SELECT Person.F_Name, Company.C_location
FROM person, employee, company
WHERE person.User_ID = employee.User_ID AND employee.Comp_User_ID = Company.User_ID AND User.ID = 502;

--Names of students and their projects
SELECT Person.F_Name, Project.pname
FROM Person, Student, Project, Student_Do_Projects
WHERE Student.user_ID = Person.User_ID AND Student.User_ID = Student_Do_Projects.Std_User_ID AND Student_Do_Projects.Pnumber = Project.Pnumber;