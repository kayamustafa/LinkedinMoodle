-- Checks grade
COMMIT;
DELIMITER $$
CREATE TRIGGER before_Student_insert
BEFORE INSERT ON Student
FOR EACH ROW
BEGIN
 IF NEW.Grade > 4.0 THEN
 SET NEW.Grade = 0 ;
 END IF;
END $$
ROLLBACK;

-- Checks sex
COMMIT;
DELIMITER $$
CREATE TRIGGER before_Person_insert
BEFORE INSERT ON person
For Each row
BEGIN
 IF NEW.SEX != "F" or NEW.SEX != "M" THEN
 SET NEW.SEX = "Unknown";
 END IF;
END $$

-- Checks birthday
COMMIT;
DELIMITER $$
CREATE TRIGGER before_Person_insert_birthdate
BEFORE INSERT ON PERSON
FOR EACH ROW
BEGIN
 IF NEW.Birthday >"2022-01-01" THEN
 SET NEW.Birthday = "Wrong input";
 END IF;
END $$