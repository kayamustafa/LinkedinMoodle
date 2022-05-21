--Insert for employee
--To do that, firstly must insert, user and person
insert into users values
(900);

insert into person values
(900,"John","Smith","M","2000-01-01");

insert into employee values
(900,"Amazon",406);
--Insert for User_Profile
--But first create user.
insert into users values
(901);

insert into user_profile values
(2052,7349967107,"mail51@mail.com",901);

--Insert for Achievement
insert into achivement values
(1006,1,"Project A",1,"Certificate C",1,"German");