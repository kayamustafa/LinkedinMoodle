DROP DATABASE IF EXISTS LinkedInMoodle;
CREATE DATABASE IF NOT EXISTS LinkedInMoodle;
USE LinkedInMoodle;
CREATE TABLE Users (
 User_ID INT NOT NULL,
9
 PRIMARY KEY (User_ID)
);
CREATE TABLE Course (
 Course_ID INTEGER ,
 Ins_Name VARCHAR(50),
 Course_Name VARCHAR(50),
 Ins_User_ID INTEGER,
 PRIMARY KEY(Course_ID)
 FOREIGN KEY(Ins_User_ID) REFERENCES Instructor(User_ID)
);
CREATE TABLE Project (
 Pnumber INTEGER UNIQUE,
 Course_ID INTEGER ,
 pname VARCHAR(50),
 PRIMARY KEY (Pnumber , Course_ID),
 FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
CREATE TABLE Community (
 User_ID INTEGER PRIMARY KEY ,
 Com_Name VARCHAR(50),
 FOREIGN KEY (User_ID) REFERENCES Users(USer_ID)
);
CREATE TABLE School (
 User_ID INTEGER PRIMARY KEY ,
 S_Location VARCHAR(50) UNIQUE,
 FOREIGN KEY (User_ID) REFERENCES Community(User_ID)
10
);
CREATE TABLE Person (
 User_ID INTEGER PRIMARY KEY ,
 F_Name VARCHAR(12),
 L_Name VARCHAR(12),
 Sex VARCHAR(8),
 Birthday DATE,
 FOREIGN KEY (User_ID) REFERENCES Users (User_ID)
);
CREATE TABLE Employee (
 User_ID INTEGER PRIMARY KEY ,
 Comp_Name VARCHAR(50) not null,
 Comp_User_ID INTEGER ,
 FOREIGN KEY (User_ID) REFERENCES Person (User_ID)
);
CREATE TABLE Company (
 User_ID INTEGER PRIMARY KEY ,
 Mgr_User_ID INTEGER,
 C_Location VARCHAR(50) UNIQUE,
 FOREIGN KEY (User_ID) REFERENCES Community(User_ID)

);
ALTER TABLE Employee
ADD FOREIGN KEY (Comp_User_ID) REFERENCES Company (User_ID);
CREATE TABLE Student (
 User_ID INTEGER PRIMARY KEY,
11
 Grade VARCHAR(12),
 Sch_User_ID INTEGER,
 FOREIGN KEY (Sch_User_ID) REFERENCES School (User_ID),
 FOREIGN KEY (User_ID) REFERENCES Person(User_ID)
);
CREATE TABLE Instructor (
 User_ID INTEGER PRIMARY KEY,
 Field VARCHAR(20),
 Sch_User_ID INTEGER,
 FOREIGN KEY (Sch_User_ID) REFERENCES School (User_ID),
 FOREIGN KEY (User_ID) REFERENCES Person (User_ID)
);
CREATE TABLE Achivement (
 Achivement_ID INTEGER PRIMARY KEY,
 A_ProjectType BOOLEAN,
 P_Name VARCHAR(50),
 CertificateType BOOLEAN,
 C_Name VARCHAR(20),
 LanguageType BOOLEAN,
 L_Name VARCHAR(20)
);
CREATE TABLE Post (
 Post_ID INTEGER PRIMARY KEY,
 Post_Type VARCHAR(12)
);
CREATE TABLE Video (
12
 Post_ID INTEGER PRIMARY KEY ,
 Video_ID INTEGER,
 FOREIGN KEY (Post_ID) REFERENCES Post (Post_ID)
);
CREATE TABLE Image (
 Post_ID INTEGER PRIMARY KEY ,
 Image_ID INTEGER,
 FOREIGN KEY (Post_ID) REFERENCES Post (Post_ID)
);
CREATE TABLE Article (
 Post_ID INTEGER PRIMARY KEY ,
 Article_ID INTEGER,
 FOREIGN KEY (Post_ID) REFERENCES Post (Post_ID)
);
CREATE TABLE Enroll (
 Std_User_ID INTEGER ,
 Course_ID INTEGER ,
 PRIMARY KEY (Std_User_ID , Course_ID),
 FOREIGN KEY (Std_User_ID) REFERENCES Student (User_ID),
 FOREIGN KEY (Course_ID) REFERENCES Course (Course_ID)
);
CREATE TABLE Student_Do_Projects (
 Std_User_ID INTEGER ,
 Pnumber INTEGER ,
 PRIMARY KEY (Std_User_ID , Pnumber),
 FOREIGN KEY (Std_User_ID) REFERENCES Student (User_ID),
13
FOREIGN KEY (Pnumber) REFERENCES Project (Pnumber)
);
CREATE TABLE User_Profile (
 Profile_ID INTEGER PRIMARY KEY,
 Phone INTEGER,
 Mail VARCHAR(50),
 User_ID INTEGER,
 FOREIGN KEY (User_ID) REFERENCES Users (User_ID)
);
CREATE TABLE Job_Offer (
 Com_User_ID INTEGER UNIQUE ,
 Job_ID INTEGER UNIQUE,
 Description VARCHAR(100),
 Requirement VARCHAR(50),
 Title VARCHAR(20),
 PRIMARY KEY (Com_User_ID , Job_ID),
 FOREIGN KEY (Com_User_ID) REFERENCES Community (User_ID)
);
CREATE TABLE Person_Apply_Job_Offer (
 Com_User_ID INTEGER ,
 Job_ID INTEGER ,
 Per_User_ID INTEGER ,
 App_Date DATE,
 PRIMARY KEY (Com_User_ID , Job_ID , Per_User_ID),
 FOREIGN KEY (Job_ID) REFERENCES Job_Offer (Job_ID),
 FOREIGN KEY (Per_User_ID) REFERENCES Person (User_ID)
 FOREIGN KEY (Com_User_ID) REFERENCES Community (User_ID)
14
);
CREATE TABLE User_Has_Achivement (
 User_ID INTEGER ,
 Achivement_ID INTEGER ,
 PRIMARY KEY (User_ID , Achivement_ID),
 FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
 FOREIGN KEY (Achivement_ID) REFERENCES Achivement (Achivement_ID)
);
CREATE TABLE User_View_Job_Offer (
 User_ID INTEGER ,
 Com_User_ID INTEGER ,
 Job_ID INTEGER ,
 PRIMARY KEY (User_ID , Com_User_ID , Job_ID),
 FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
 FOREIGN KEY (Com_User_ID) REFERENCES Job_Offer (Com_User_ID),
 FOREIGN KEY (Job_ID) REFERENCES Job_Offer (Job_ID)
);
CREATE TABLE User_View_User (
User_ID INTEGER ,
V_User_ID INTEGER ,
PRIMARY KEY (User_ID , V_User_ID),
FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
FOREIGN KEY (V_User_ID) REFERENCES Users (User_ID)
);
CREATE TABLE User_Add_Friend_User (
 User_ID INTEGER ,
15
 A_User_ID INTEGER ,
 PRIMARY KEY (User_ID , A_User_ID),
 FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
 FOREIGN KEY (A_User_ID) REFERENCES Users (User_ID)
);
CREATE TABLE User_Can_Share_Post (
 User_ID INTEGER,
 Post_ID INTEGER,
 S_Date DATE,
 PRIMARY KEY (User_ID , Post_ID),
 FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
 FOREIGN KEY (Post_ID) REFERENCES Post (Post_ID)
);
CREATE TABLE User_Can_Comment_Post (
 User_ID INTEGER ,
 Post_ID INTEGER,
 C_Date DATE,
 Text VARCHAR(100),
 PRIMARY KEY (User_ID , Post_ID),
 FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
 FOREIGN KEY (Post_ID) REFERENCES Post (Post_ID)
);
CREATE TABLE User_Can_Like_Post (
 User_ID INTEGER ,
 Post_ID INTEGER ,
 L_Date DATE,
 PRIMARY KEY (User_ID , Post_ID),
16
 FOREIGN KEY (User_ID) REFERENCES Users (User_ID),
 FOREIGN KEY (Post_ID) REFERENCES Post (Post_ID)
);
CREATE TABLE Experiment (
 P_User_ID INTEGER ,
 C_User_ID INTEGER ,
 Company_Name VARCHAR(50),
 Title VARCHAR(20),
 PRIMARY KEY (P_User_ID , C_User_ID),
 FOREIGN KEY (P_User_ID) REFERENCES Person (User_ID),
 FOREIGN KEY (C_User_ID) REFERENCES Company (User_ID)
);
