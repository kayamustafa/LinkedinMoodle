Insert into linkedinmoodle.users values (500),
(501),
(502),
(503),
(504),
(505),
(506),
(507),
(508),
(509),
(510),
(400),
(401),
(402),
(403),
(404),
(405),
(406),
(407),
(408),
(409),
(410),
(411),
(412),
(413),
(414),
(415),
(416),
(300),
(301),
(302),
(303),
(304),
(305),
(306),
(307),
(308),
(309),
(310),
(600),
(601),
(602),
(603),
(604),
(605),
(606),
(607),
(608),
(609),
(610);
insert into person values
(500,"Brent","Mccabe","M", "2000-01-25"),
(501,"Theodora ","Trejo","M", "1996-02-15"),
(502,"Hunter ","Wharton","M", "1992-02-14 "),
(503,"Radhika ","Murphy","F", "2003-02-16"),
(504,"Pablo ","Lee","M", "1986-12-24"),
(505,"Ishaq ","O'Quinn","M", "1983-10-06"),
(506,"Farhana ","Pratt","F", "1986-05-25"),
(507,"Sameeha ","Jones","F", "1997-10-19"),
(508,"Nataniel ","Burgess","F", "1998-12-13"),
(509,"Hal ","Stephens","M", "1996-03-08"),
(510,"Jaylan ","Nolan","F", "1993-02-15"),
(300,"Saif ","Fenton","M", "1999-01-08"),
(301,"Ariana ","Huynh","F", "1983-04-18"),
(302,"Connie ","Mcdonald","F", "1983-06-07"),
(303,"Rayhan ","Hills","M", "1985-09-10"),
(304,"Alba ","Gray","M", "1987-07-28"),
(305,"Cherry ","Dunkley","F", "1992-01-30"),
(306,"Manha ","Findlay","M", "1999-07-10"),
(307,"Suzanne ","Atkins","F", "1985-08-21"),
(308,"Calvin ","Mendoza","M", "1988-09-18"),
(309,"Lilliana ","Ayala","F", "1998-03-07"),
(310,"Tj ","Meyer","M", "1998-12-14"),
(600,"Abigail ","Mayo","M","1989-10-20"),
(601,"Orson ","Naylor","M", "1991-12-19"),
(602,"Aine ","Harding","F", "1985-08-21"),
(603,"Castro","Robson ","M", "1984-07-20"),
(604,"Barbara ","Shannon","F", "2000-01-25"),
(605,"Hopkins","Richard","M", "1986-01-11"),
(606,"Yaseen ","Greer","M", "1998-07-07"),
(607,"Josiah ","Soto","M", "1993-07-19"),
(608,"Shelby ","Melia","F", "2002-09-30"),
(609,"Dianne ","Jacobs","F", "1990-03-21"),
(610,"Shona ","Correa","F", "1985-08-03");
insert into community values
(400,"ComA"),
(401,"ComA"),
(402,"ComA"),
(403,"ComA"),
(404, "ComA"),
(405,"ComB"),
(406,"ComB"),
(407,"ComB"),
(408,"ComB"),
(409,"ComC"),
(410,"ComC"),
(411,"ComC"),
(412,"ComC"),
(413,"ComC"),
(414,"ComC"),
(415,"ComC"),
(416,"ComC");
insert into school values
(400,"Izmir"),
(401,"Ankara"),
(402,"Bursa"),
(403,"Kocaeli"),
(404, "Istanbul"),
(405,"Sakarya");
insert into employee values
(500,"Amazon",406),
(501,"Amazon",406),
(502,"Tupras",409),
(503,"Aselsan",408),
(504,"Toyota",413),
(505,"Foxconn",410),
(300,"Facebook",411),
(301,"Alibaba",412),
(302,"Garanti BBVA",414),
(303,"Mitsubishi",415),
(304,"Quanta Computer",416),
(600,"Tupras",409),
(601,"Toyota",413),
(602,"Garanti BBVA",414),
(603,"Facebook",411),
(604,"Ping An Insurance",407);
insert into company values
(406,500,"Seattle 98109"),
(407,604,"Center No. 5033 Yitian"),
(408,503," İstiklal Marşı Caddesi No: 16"),
(409,600,"Güney Mah. Petrol Cad. No: 25/1 41780,"),
(410,505,"Kancheepuram District - 602106 Tamilnadu"),
(411,300,"Hacker Way Menlo Park, CA 94025"),
(412,301,"969 West Wen Yi Road"),
(413,504,"Mansuroğlu, 286/10. Sk No:2"),
(414,603,"Nispetiye Mah. Aytar Cad. No:2"),
(415,303,"Chiyoda-ku, Tokyo, 100-8086"),
(416,304,"1621 Heil Quaker Blvd. La Vergne");
insert into instructor values
(500,"Math", 400),
(502,"Physics",405),
(503,"Chemistry",403),
(504,"Computer Science",400),
(505,"Biology",404),
(507, "Sociology", 400)
(606, "Psychology", 401)
(607, "History", 402);
insert into course values
(101, "Brent Mccabe", "Math", 500),
(102, "Hunter Wharton", "Physics", 502),
(103, "Radhika Murphy", "Chemistry", 503),
(104, "Pablo Lee", "Computer Science", 504),
(105, "Ishaq O'Quinn", "Biology", 505),
(106, "Sameeha Jones", "Sociology", 507),
(107, "Yaseen Greer", "Psychology", 606),
(108, "Josiah Soto", "History", 607);
insert into project values
(1, 101, "MathProjectA"),
(2, 101, "MathProjectB"),
(3, 102, "PhysicsProjectA"),
(4, 103, "ChemistryProjectA"),
(5, 104, "ComputerSciProjectA"),
(6, 105, "BiologyProjectA"),
(7, 106, "SociologyProjectA"),
(8, 107, "PsychologyProjectA"),
(9, 108, "HistoryProjectA"),
(10, 108, "HistoryProjectB");
insert into student values
(301,"A",400),
(302,"F",400),
(303,"D",401),
(304,"B",405),
(305,"C",403),
(306,"A",404),
(307,"A",400),
(308,"B",402),
(605,"F",401),
(608,"D",403),
(609,"C",404),
(610,"D",402);
insert into achivement values
(1000, TRUE, "ProjectA", FALSE, "", FALSE, ""),
(1001, FALSE, "", TRUE, "CertificateA", FALSE, ""),
(1002, FALSE, "", FALSE, "", TRUE, "English"),
(1003, TRUE, "ProjectB", FALSE, "", FALSE, ""),
(1004, FALSE, "", TRUE, "CertificateB", FALSE, ""),
(1005, FALSE, "", FALSE, "", TRUE, "Turkish");
insert into post values
(1, "Video"),
(2, "Image"),
(3, "Article"),
(4, "Video"),
(5, "Image"),
(6, "Article"),
(7, "Video"),
(8, "Image"),
(9, "Article");
insert into video values
(1, 1),
(4, 2),
(7, 3);
insert into post values
(1, "Video"),
(2, "Image"),
(3, "Article"),
(4, "Video"),
(5, "Image"),
(6, "Article"),
(7, "Video"),
(8, "Image"),
(9, "Article");
insert into video values
(1, 1),
(4, 2),
(7, 3);
insert into enroll values
(301, 101),
(301, 102),
(302, 105),
(303, 104),
(304, 107),
(304, 103),
(305, 108),
(306, 102),
(307, 102),
(308, 105),
(605, 106),
(608, 107),
(609, 102),
(610, 106),
(610, 108);
insert into student_do_projects values
(301, 1),
(301, 3),
(304, 8),
(605, 7),
(608, 8),
(609, 3),
(610, 7),
(610, 10);
insert into user_profile values
(2000, 7349967455, "mail1@mail.com", 500),
(2001, 7349967456, "mail2@mail.com",501),
(2002, 7349967457,"mail3@mail.com",502),
(2003,7349967458,"mail4@mail.com",503),
(2004,7349967459,"mail5@mail.com",504),
(2005,7349967462,"mail6@mail.com",505),
(2006,7349967463,"mail7@mail.com",506),
(2007,7349967464,"mail8@mail.com",507),
(2008,7349967465,"mail9@mail.com",508),
(2009,7349967466,"mail10@mail.com",509),
(2010,7349967467,"mail11@mail.com",510),
(2011,7349967468,"mail12@mail.com",400),
(2012,7349967469,"mail13@mail.com",401),
(2013,7349967470,"mail14@mail.com",402),
(2014,7349967471,"mail15@mail.com",403),
(2015,7349967472,"mail16@mail.com",404),
(2016,7349967473,"mail17@mail.com",405),
(2017,7349967474,"mail18@mail.com",406),
(2018,7349967475,"mail19@mail.com",407),
(2019,7349967476,"mail20@mail.com",408),
(2020,7349967477,"mail21@mail.com",409),
(2021,7349967478,"mail22@mail.com",410),
(2022,7349967479,"mail23@mail.com",411),
(2023,7349967480,"mail24@mail.com",412),
(2024,7349967481,"mail25@mail.com",413),
(2025,7349967482,"mail26@mail.com",414),
(2026,7349967483,"mail27@mail.com",415),
(2027,7349967484,"mail28@mail.com",416),
(2028,7349967485,"mail29@mail.com",300),
(2029,7349967486,"mail30@mail.com",301),
(2030,7349967487,"mail31@mail.com"302),
(2031,7349967488,"mail32@mail.com",303),
(2032,7349967489,"mail33@mail.com",304),
(2033,7349967490,"mail34@mail.com",305),
(2034,7349967491,"mail35@mail.com",306),
(2035,7349967492,"mail36@mail.com",307),
(2036,7349967493,"mail37@mail.com",308),
(2037,7349967494,"mail38@mail.com",309),
(2038,7349967495,"mail39@mail.com",310),
(2039,7349967496,"mail40@mail.com",600),
(2040,7349967497,"mail41@mail.com",601),
(2041,7349967498,"mail42@mail.com",602),
(2042,7349967499,"mail43@mail.com",603),
(2043,7349967100,"mail44@mail.com",604),
(2044,7349967101,"mail45@mail.com",605),
(20457349967102,"mail46@mail.com",606),
(2046,7349967103,"mail47@mail.com",607),
(2047,7349967104,"mail48@mail.com",608),
(2048,7349967105,"mail49@mail.com",609),
(2049,7349967106,"mail50@mail.com",610);
insert into job_offer values
(400, 1, "Description1","Requirements1","JobTitle1"),
(403, 2, "Description2","Requirements2","JobTitle2"),
(404, 3, "Description3","Requirements3","JobTitle3"),
(407, 4, "Description4","Requirements4","JobTitle4"),
(409, 5, "Description5","Requirements5","JobTitle5"),
(412, 6, "Description6","Requirements6","JobTitle6"),
(412, 7, "Description7","Requirements7","JobTitle7"),
(412, 8, "Description8","Requirements8","JobTitle8");
insert into person_apply_job_offer values
(400, 1, 500, "2020-06-19"),
(412, 6, 504, "2021-08-29"),
(412, 7, 504, "2021-08-29"),
(412, 6, 503, "2021-08-30"),
(403, 2, 608, "2022-01-14"),
(404, 3, 609, "2018-07-22"),
(407, 4, 610, "2020-02-14");
insert into user_has_achivement values
(500, 1000),
(500, 1002),
(501, 1001),
(502, 1000),
(503, 1002),
(504, 1001),
(505, 1002),
(506, 1000),
(507, 1001),
(508, 1002);
insert into user_view_job_offer values
(500, 400, 1),
(503, 412, 6),
(504, 412, 6),
(504, 412, 7),
(505, 403, 2),
(506, 404, 3),
(507, 404, 3),
(508, 407, 4),
(509, 409, 5),
(510, 400, 1),
(608, 400, 1),
(609, 412, 6),
(610, 404, 3);
insert into user_view_user values
(500, 305),
(505, 303),
(502, 305),
(501, 305),
(505, 301),
(610, 300),
(601, 504),
(603, 307),
(509, 609),
(608, 504),
(506, 505),
(601, 502),
(602, 310);
insert into user_add_friend_user values
(500, 305),
(505, 303),
(502, 305),
(501, 305),
(505, 301),
(610, 300);
insert into user_can_share_post values
(300, 1, "2022-01-19"),
(305, 1, "2022-01-12"),
(305, 2, "2022-01-12"),
(510, 7, "2021-12-29"),
(600, 4, "2022-01-08"),
(602, 8, "2022-01-01"),
(603, 3, "2022-01-02"),
(604, 4, "2022-01-03"),
(605, 5, "2022-01-04"),
(606, 6, "2022-01-05"),
(607, 9, "2022-01-30");
insert into user_can_comment_post values
(505, 1, "2022-01-20", "CommentOnAPost1"),
(505, 2, "2022-01-20", "CommentOnAPost2"),
(310, 7,"2022-01-22", "CommentOnAPost3"),
(605, 5, "2022-01-08", "CommentOnAPost4"),
(307, 5, "2022-01-07", "CommentOnAPost5");
insert into user_can_like_post values
(505, 1, "2022-01-20"),
(505, 2, "2022-01-20"),
(310, 7,"2022-01-22"),
(605, 3, "2022-01-08"),
(508, 1, "2022-01-20"),
(505, 2, "2022-01-20"),
(310, 6,"2022-01-22"),
(605, 5, "2022-01-08"),
(307, 5, "2022-01-07");
insert into experiment values
(500, 406, "ComB", "Software Engineer"),
(500, 407, "ComB", "Frontend Enginner"),
(501, 408, "ComB", "Data Analyst"),
(502, 409, "ComC", "Consultant"),
(308, 409, "ComC", "Accountant"),
(602, 410, "ComC", "Marketing Manager"),
(603, 412, "ComC", "Sales Manager"),
(605, 415, "ComC", "Project Manager");