ALTER TABLE person
ADD CONSTRAINT check_gender
CHECK (Sex IN ('M', 'F'));

ALTER TABLE student
ADD CONSTRAINT check_grade
CHECK (Grade IN ('A', 'B','C','D','E','F'));

ALTER TABLE User_Profile
ADD CONSTRAINT check_phonenumber
CHECK (Phone BETWEEN 1000000000 AND 9999999999)