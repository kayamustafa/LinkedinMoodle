--Delete from achivement
delete from achivement where Achivement_ID = 1006;

--Delete from employee
delete from employee where user_ID = 501;

--Delete from instructor
SET foreign_key_checks = 0;
delete from instructor where user_ID = 502;
SET foreign_key_checks = 1;