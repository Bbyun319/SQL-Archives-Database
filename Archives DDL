SPOOL C:\Users\Bbyun\OneDrive\Desktop\theArmoryDSO.sql
SPOOL C:\Users\Bbyun\OneDrive\Desktop\theArmoryDSO.lst

set echo on;
set pagesize 60;
set linesize 150;
set autocommit on;
alter session set recyclebin=off;

Alter Table Filing_Cabinet DISABLE	CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
Alter Table Filing_Cabinet DISABLE	CONSTRAINT Cabinet_CabinetLocation_ID_FK;
drop TABLE Project_Personnel CASCADE CONSTRAINTS;
drop TABLE ArtWork_Organization CASCADE CONSTRAINTS;
drop TABLE Artwork_Personnel CASCADE CONSTRAINTS;
drop TABLE Project_Organization CASCADE CONSTRAINTS;
drop TABLE Organization_Role CASCADE CONSTRAINTS;
drop TABLE Project_ArtWork CASCADE CONSTRAINTS;
drop TABLE ArtWork_Item CASCADE CONSTRAINTS;
drop TABLE Project_Item CASCADE CONSTRAINTS;
drop TABLE Organization_Item CASCADE CONSTRAINTS;
drop TABLE Person_Item CASCADE CONSTRAINTS;
drop TABLE Folderless_Item CASCADE CONSTRAINTS;
drop TABLE Foldered_Item CASCADE CONSTRAINTS;
drop TABLE Cabinet_Location CASCADE CONSTRAINTS;
drop TABLE Event CASCADE CONSTRAINTS;
drop TABLE Person_Role CASCADE CONSTRAINTS;
drop TABLE Exhibition CASCADE CONSTRAINTS;
drop TABLE Project CASCADE CONSTRAINTS;
drop TABLE Art_Work CASCADE CONSTRAINTS;
drop TABLE Item CASCADE CONSTRAINTS;
drop TABLE Folder CASCADE CONSTRAINTS;
drop TABLE Box CASCADE CONSTRAINTS;
drop TABLE Person CASCADE CONSTRAINTS;
drop TABLE Organizations CASCADE CONSTRAINTS;
drop TABLE Folder_Content CASCADE CONSTRAINTS;
drop TABLE Filing_Cabinet CASCADE CONSTRAINTS;
drop TABLE Container CASCADE CONSTRAINTS;
drop TABLE Container_Type CASCADE CONSTRAINTS;
drop TABLE Room CASCADE CONSTRAINTS;
drop TABLE Project_Type CASCADE CONSTRAINTS;
drop TABLE Person_Type CASCADE CONSTRAINTS;
drop TABLE Organization_Type CASCADE CONSTRAINTS;
drop TABLE Medium CASCADE CONSTRAINTS;
drop TABLE Item_Type CASCADE CONSTRAINTS;
drop TABLE Item_Classification CASCADE CONSTRAINTS;
drop TABLE Exhibition_Type CASCADE CONSTRAINTS;
drop TABLE Event_Type CASCADE CONSTRAINTS;
drop TABLE Zip_Code CASCADE CONSTRAINTS;

DROP SEQUENCE Container_ID;
DROP SEQUENCE Cabinet_ID;
DROP SEQUENCE Organization_ID;
DROP SEQUENCE Person_ID;
DROP SEQUENCE Folder_ID;
DROP SEQUENCE Item_ID;
DROP SEQUENCE ArtWork_ID;
DROP SEQUENCE Project_ID;
DROP SEQUENCE PersonRole_ID;
DROP SEQUENCE OrganizationRole_ID;

Drop cluster Room_Cluster;
Drop cluster Container_Cluster;
Drop cluster Item_Cluster;
Drop cluster Project_Cluster;
Drop cluster PersonRole_Cluster;
Drop cluster OrganizationRole_Cluster;
Drop cluster ArtWork_Cluster;

CREATE CLUSTER Room_Cluster (Room_Name VARCHAR2(50));
CREATE INDEX Room_Cluster_Index on cluster Room_Cluster;

CREATE CLUSTER Container_Cluster (Container_ID NUMBER(10));
CREATE INDEX Container_Cluster_Index on cluster Container_Cluster;

CREATE CLUSTER Item_Cluster (Item_ID NUMBER(10));
CREATE INDEX Item_Cluster_Index on cluster Item_Cluster;

CREATE CLUSTER Project_Cluster (Project_ID NUMBER(10));
CREATE INDEX Project_Cluster_Index on cluster Project_Cluster;

CREATE CLUSTER PersonRole_Cluster (PersonRole_ID NUMBER(10));
CREATE INDEX PersonRole_Cluster_Index on cluster PersonRole_Cluster;

CREATE CLUSTER OrganizationRole_Cluster (OrganizationRole_ID NUMBER(10));
CREATE INDEX OrganizationRole_Cluster_Index on cluster OrganizationRole_Cluster;

CREATE CLUSTER ArtWork_Cluster (ArtWork_ID NUMBER(10));
CREATE INDEX ArtWork_Cluster_Index on cluster ArtWork_Cluster;



CREATE SEQUENCE Container_ID increment by 1 start with 1;
CREATE SEQUENCE Cabinet_ID increment by 1 start with 1;
CREATE SEQUENCE Organization_ID increment by 1 start with 1;
CREATE SEQUENCE Person_ID increment by 1 start with 1;
CREATE SEQUENCE Folder_ID increment by 1 start with 1;
CREATE SEQUENCE Item_ID increment by 1 start with 1;
CREATE SEQUENCE ArtWork_ID increment by 1 start with 1;
CREATE SEQUENCE Project_ID increment by 1 start with 1;
CREATE SEQUENCE PersonRole_ID increment by 1 start with 1;
CREATE SEQUENCE OrganizationRole_ID increment by 1 start with 1;

-- 1. Zip_Code
CREATE TABLE Zip_Code (
  Zip NUMBER(5) CONSTRAINT Zip_Code_PK PRIMARY KEY,
  City VARCHAR2(50) CONSTRAINT Zip_City_NULL NOT NULL,
  State VARCHAR2(30) CONSTRAINT Zip_state_NULL NOT NULL
);

-- 2. Event_Type
CREATE TABLE Event_Type (
  Event_Type VARCHAR2(50) CONSTRAINT Event_Type_PK PRIMARY KEY
);

-- 3. Exhibition_Type
CREATE TABLE Exhibition_Type (
  Exhibition_Type VARCHAR2(50) CONSTRAINT Exhibition_Type_PK PRIMARY KEY,
  Description VARCHAR2(320)
);

-- 4. Item_Classification
CREATE TABLE Item_Classification (
  Item_Classification VARCHAR2(50) CONSTRAINT Item_Classification_PK PRIMARY KEY,
  Description VARCHAR2(320)
);

-- 5. Item_Type
CREATE TABLE Item_Type (
  Item_Type VARCHAR2(50) CONSTRAINT Item_Type_PK PRIMARY KEY,
  Description VARCHAR2(320)
);

-- 6. Medium
CREATE TABLE Medium (
  Medium VARCHAR2(50) CONSTRAINT Medium_PK PRIMARY KEY,
  Description VARCHAR2(320)
);

-- 7. Organization_Type
CREATE TABLE Organization_Type (
  OrganizationType VARCHAR2(50) CONSTRAINT Organization_Type_PK PRIMARY KEY,
  Description VARCHAR2(320)
);

-- 8. Person_Type
CREATE TABLE Person_Type (
  PersonType VARCHAR2(50) CONSTRAINT Person_Type_PK PRIMARY KEY,
  Description VARCHAR2(320)
);

-- 9. Project_Type
CREATE TABLE Project_Type (
  ProjectType Varchar2(50) CONSTRAINT Project_Type_PK PRIMARY KEY,
  Description VARCHAR2(320)
);

-- 10. Room
CREATE TABLE Room (
  Room_Name VARCHAR2(50) CONSTRAINT Room_PK PRIMARY KEY
)CLUSTER Room_Cluster(Room_Name);

-- 11. Container_Type

CREATE TABLE Container_Type (
  ContainerType Varchar2(50) CONSTRAINT Container_Type_PK PRIMARY KEY,
  Description Varchar2(320)
);
-- 12. Container
CREATE TABLE Container (
  Container_ID NUMBER(10) CONSTRAINT Container_PK PRIMARY KEY,
  Container_Name VARCHAR2(50) CONSTRAINT Container_Container_Name_NULL NOT NULL 
  CONSTRAINT Container_Container_Name_UQ UNIQUE,
  Description VARCHAR2(320),
  ContainerType Varchar2(50) CONSTRAINT Container_ContainerType_FK REFERENCES  Container_Type(ContainerType)
            CONSTRAINT Container_ContainerType_NULL NOT NULL
)CLUSTER Container_Cluster(Container_ID);

-- 13. Filing Cabinet

CREATE TABLE Filing_Cabinet (
  Cabinet_ID NUMBER CONSTRAINT Filing_Cabinet_PK PRIMARY KEY,
  Room_Name VARCHAR2(50) CONSTRAINT Container_Room_Name_FK REFERENCES Room(Room_Name)
        CONSTRAINT Container_Room_Name_NULL NOT NULL
)CLUSTER Room_Cluster(Room_Name);
-- 14. Folder_Content
CREATE TABLE Folder_Content (
  Folder_Content VARCHAR2(50) CONSTRAINT Folder_Content_PK PRIMARY KEY,
  Description VARCHAR2(320)
);

-- 15. Organizations

CREATE TABLE Organizations (
  Organization_ID NUMBER(10) CONSTRAINT Organizations_PK PRIMARY KEY,
  Organization_Name VARCHAR2(100),
  Street_Address VARCHAR2(200),
  Zip NUMBER(5) CONSTRAINT Organizations_Zip_FK REFERENCES Zip_Code(Zip),
  Phone_Number VARCHAR2(12),
  Email VARCHAR2(320)
);

-- 16. Person

CREATE TABLE Person (
  Person_ID NUMBER(10) CONSTRAINT Person_PK PRIMARY KEY,
  First_Name VARCHAR2(50),
  Middle_Name VARCHAR2(50),
  Last_Name VARCHAR2(50),
  Email VARCHAR2(320),
  Phone VARCHAR2(12),
  Shipping_Address VARCHAR2(50),
  Zip NUMBER(5) CONSTRAINT Person_Zip_FK REFERENCES Zip_Code(Zip)
);

-- 17. Box

CREATE TABLE Box (
  Box_ID NUMBER(10) CONSTRAINT Box_Box_ID_FK REFERENCES Container(Container_ID),
  Start_Date DATE,
  End_Date DATE,
  Archive_Date DATE,
  Room_Name Varchar2(50) CONSTRAINT Box_Room_Name_FK REFERENCES Room 
  CONSTRAINT Box_Room_Name_NULL NOT NULL,
  CONSTRAINT Box_Date_CK CHECK(End_Date >= Start_Date),
  CONSTRAINT Box_Archive_Date_CK CHECK(Archive_Date > End_Date),
  CONSTRAINT Box_PK PRIMARY KEY(Box_ID)
)CLUSTER Container_Cluster(Box_ID);

-- 18. Folder

CREATE TABLE Folder (
  Folder_ID NUMBER CONSTRAINT Folder_PK PRIMARY KEY,
  Folder_Name VARCHAR2(50)CONSTRAINT Folder_Folder_Name_NULL NOT NULL
                          CONSTRAINT Folder_Folder_Name_UQ UNIQUE,
  Description VARCHAR2(320),
  Folder_Content VARCHAR2(50) CONSTRAINT Folder_Folder_Content_FK REFERENCES Folder_Content(Folder_Content)
                              CONSTRAINT Folder_Folder_Content_NULL NOT NULL,
  Container_ID NUMBER(10) CONSTRAINT Folder_Container_ID_FK REFERENCES Container(Container_ID)
                          CONSTRAINT Folder_Folder_Container_ID_NULL NOT NULL
)CLUSTER Container_Cluster(Container_ID);

-- 19. Item

CREATE TABLE Item (
  Item_ID NUMBER(10) CONSTRAINT Item_PK PRIMARY KEY,
  Item_Name VARCHAR2(50) CONSTRAINT Item_Item_Name_NULL NOT NULL
                         CONSTRAINT Item_Item_Name_UQ UNIQUE,
  Description VARCHAR2(320),
  Start_Date DATE,
  End_Date DATE,
  Item_Type VARCHAR2(50) CONSTRAINT Item_Item_Type_FK REFERENCES Item_Type(Item_Type)
                         CONSTRAINT Item_Item_Type_NULL NOT NULL,
  Item_Classification VARCHAR2(50) CONSTRAINT Item_Item_Classification_FK REFERENCES Item_Classification(Item_Classification)
                            CONSTRAINT Item_Item_Classification_NULL NOT NULL,
  IN_FOLDER VARCHAR2(10) CONSTRAINT Item_In_Folder_NULL NOT NULL,
  CONSTRAINT IN_FOLDER_YN CHECK (IN_FOLDER IN ('Yes','No')),
  CONSTRAINT Item_Date_CK CHECK(End_Date >= Start_Date)
)CLUSTER Item_Cluster(Item_ID);

-- 20. Art_Work

CREATE TABLE Art_Work (
  ArtWork_ID NUMBER(10) CONSTRAINT Art_Work_PK PRIMARY KEY,
  Name VARCHAR2(50) CONSTRAINT Art_Work_Name_NULL NOT NULL
                    CONSTRAINT Art_Work_Name_UQ UNIQUE,
  Description VARCHAR2(320),
  Date_Created DATE,
  Medium VARCHAR2(50) CONSTRAINT Art_Work_Medium_FK REFERENCES Medium(Medium)
                      CONSTRAINT Art_Work_Medium_NULL NOT NULL
)CLUSTER ArtWork_Cluster(ArtWork_ID);

-- 21. Project
--superclass for Exhibition and Event

CREATE TABLE Project (
  Project_ID NUMBER(10) CONSTRAINT Project_PK PRIMARY KEY,
  Project_Name VARCHAR2(50) CONSTRAINT Project_Project_Name_NULL NOT NULL
  CONSTRAINT Project_Project_Name_UQ UNIQUE,
  Description VARCHAR2(320),
  Start_Date Date,
  End_Date Date,
  ProjectType Varchar2(50) CONSTRAINT Project_ProjectType_FK REFERENCES
  Project_Type(ProjectType)
  CONSTRAINT Project_ProjectType_NULL NOT NULL,
  CONSTRAINT Project_Date_CK CHECK(End_Date >= Start_Date)
)CLUSTER Project_Cluster(Project_ID);

-- 22. Person_Role

CREATE TABLE Person_Role (
  PersonRole_ID NUMBER(10) CONSTRAINT Person_Role_PK PRIMARY KEY,
  Person_ID NUMBER(10) CONSTRAINT Person_Role_Person_ID_FK REFERENCES Person(Person_ID)
                       CONSTRAINT Person_Role_Person_ID_NULL NOT NULL,
  PersonType VARCHAR2(50) CONSTRAINT Person_Role_PersonType_FK REFERENCES Person_Type(PersonType)
                          CONSTRAINT Person_Role_PersonType_NULL NOT NULL,
  CONSTRAINT Person_Role_PersonType_Person_ID_UQ UNIQUE(Person_ID, PersonType)
)CLUSTER PersonRole_Cluster(PersonRole_ID);

-- 23. Exhibition
--Exhibition is a subclass of Project, so Exhibition_ID is an alias for Project_ID
CREATE TABLE Exhibition (
  Exhibition_ID NUMBER(10) CONSTRAINT Exhibition_ExhibitionID_FK REFERENCES PROJECT(PROJECT_ID),
  Exhibition_Type VARCHAR2(50) CONSTRAINT Exhibition_Exhibition_Type_FK REFERENCES
  Exhibition_Type(Exhibition_Type)
  CONSTRAINT Exhibition_Exhibition_Type_NULL NOT NULL,
  CONSTRAINT Project_ExhibitionID PRIMARY KEY(Exhibition_ID)
)CLUSTER Project_Cluster(Exhibition_ID);


-- 24. Event
-- Event is a subclass with Project and has  an optional relationship with Exhibition
CREATE TABLE Event (
  Event_ID NUMBER(10) CONSTRAINT Event_EventID_FK REFERENCES PROJECT(PROJECT_ID),
  Exhibition_ID NUMBER(10)CONSTRAINT Event_ExhibitionID_FK REFERENCES EXHIBITION(Exhibition_ID),
  Event_Type VARCHAR2(50) CONSTRAINT Event_Event_Type_FK REFERENCES Event_Type(Event_Type)
                          CONSTRAINT Event_Event_Type_NULL NOT NULL,
  CONSTRAINT Event_PK PRIMARY KEY(Event_ID)
)CLUSTER Project_Cluster(Event_ID);

-- 25. Cabinet_Location

CREATE TABLE Cabinet_Location (
  CabinetLocation_ID NUMBER(10) CONSTRAINT Cabinet_Location_CabinetLocation_ID REFERENCES Container(Container_ID),
  Row_Number NUMBER CONSTRAINT Cabinet_Location_Row_Number_NULL NOT NULL,
  Cabinet_ID NUMBER CONSTRAINT Cabinet_Loc_Cabinet_ID_FK REFERENCES Filing_Cabinet(Cabinet_ID)
  CONSTRAINT Cabinet_Location_Cabinet_ID_NULL NOT NULL,
  Description VARCHAR2(320),
  CONSTRAINT Cabinet_Location_Cabinet_Row_UQ UNIQUE(Cabinet_ID, Row_Number),
  CONSTRAINT Cabinet_Location_Pk PRIMARY KEY(CabinetLocation_ID)
)CLUSTER Container_Cluster(CabinetLocation_ID);

-- Adds a Many to many relationship with Cabinet_Location
Alter Table Filing_Cabinet
	Add (CabinetLocation_ID Number(10) 
CONSTRAINT Cabinet_CabinetLocation_ID_FK REFERENCES Cabinet_Location
		CONSTRAINT Cabinet_CabinetLocation_ID_NULL NOT NULL);

-- 26. Foldered_Item
--subclass of Item
CREATE TABLE Foldered_Item (
  Item_ID NUMBER(10) CONSTRAINT Foldered_Item_Item_ID REFERENCES Item(Item_ID),
  Folder_ID NUMBER(10) CONSTRAINT Foldered_Item_Folder_ID_FK REFERENCES Folder(Folder_ID)
  CONSTRAINT Foldered_Item_Folder_ID_NULL NOT NULL,
  CONSTRAINT Foldered_Item_PK PRIMARY KEY (Item_ID)
)CLUSTER Item_Cluster(Item_ID);

-- 27. Folderless_Item
--subclass of item
CREATE TABLE Folderless_Item (
  Item_ID NUMBER(10)CONSTRAINT Folderless_Item_Item_ID REFERENCES Item(Item_ID),
  Container_ID NUMBER(10) CONSTRAINT Folderless_Item_Container_ID_FK REFERENCES Container(Container_ID)
  CONSTRAINT Folderless_Item_Container_ID_NULL NOT NULL,
  CONSTRAINT Folderless_Item_PK PRIMARY KEY(Item_ID)
)CLUSTER Item_Cluster(Item_ID);

-- 28. Person_Item
CREATE TABLE Person_Item (
  Person_ID NUMBER(10) CONSTRAINT Person_Item_Per_FK REFERENCES Person(Person_ID),
  Item_ID NUMBER(10) CONSTRAINT Person_Item_Item_ID_FK REFERENCES Item(Item_ID),
  CONSTRAINT Person_Item_PK PRIMARY KEY(Person_ID, Item_ID)
)CLUSTER Item_Cluster(Item_ID);
-- 29. Organization_Item
CREATE TABLE Organization_Item (
  Organization_ID NUMBER(10)CONSTRAINT Organization_Item_Oganization_ID_FK REFERENCES Organizations(Organization_ID),
  Item_ID NUMBER(10) CONSTRAINT Organization_Item_Item_ID_FK REFERENCES Item(Item_ID),
  CONSTRAINT Organization_Item_PK PRIMARY KEY(Organization_ID, Item_ID)
);

-- 30. Project_Item
CREATE TABLE Project_Item (
  Project_ID NUMBER(10) CONSTRAINT Project_Item_Project_ID_FK REFERENCES Project(Project_ID),
  Item_ID NUMBER(10) CONSTRAINT Project_Item_Item_ID_FK REFERENCES Item(Item_ID),
  CONSTRAINT Project_Item_PK PRIMARY KEY(Project_ID, Item_ID)
)CLUSTER Item_Cluster(Item_ID);

-- 31. ArtWork_Item
CREATE TABLE ArtWork_Item (
  Artwork_ID NUMBER(10) CONSTRAINT ArtWork_Item_FK REFERENCES Art_work(Artwork_ID),
  Item_ID NUMBER(10) CONSTRAINT ArtWork_Item_Item_ID_FK REFERENCES Item(Item_ID),
  CONSTRAINT ArtWork_Item_PK PRIMARY KEY(Artwork_ID, Item_ID)
)CLUSTER Item_Cluster(Item_ID);


-- 32. Project_ArtWork
CREATE TABLE Project_ArtWork (
  Project_ID NUMBER(10) CONSTRAINT Project_ArtWork_FK REFERENCES Project,
  ArtWork_ID NUMBER(10) CONSTRAINT Project_ArtWork_ArtWork_ID_FK REFERENCES Art_Work(ArtWork_ID),
 CONSTRAINT Project_ArtWork_PK PRIMARY KEY(Project_ID, ArtWork_ID)
)CLUSTER Project_Cluster(Project_ID);

-- 33. Organization_Role

CREATE TABLE Organization_Role (
  OrganizationRole_ID NUMBER(10) CONSTRAINT Organization_Role_PK PRIMARY KEY,
  Organization_ID NUMBER CONSTRAINT Organization_Role_Organization_ID_FK REFERENCES Organizations(Organization_ID)
                         CONSTRAINT Organization_Role_Organization_ID_NULL NOT NULL,
  Organization_Type VARCHAR2(50) CONSTRAINT Organization_Role_Organization_Type_FK REFERENCES Organization_Type(OrganizationType)
                                 CONSTRAINT Organization_Role_Organization_Type_NULL NOT NULL,
  CONSTRAINT Organization_Role_Organization_ID_Organization_Type_UQ UNIQUE(Organization_ID, Organization_Type)
)CLUSTER OrganizationRole_Cluster(OrganizationRole_ID);

-- 34. ArtWork_Organization
CREATE TABLE ArtWork_Organization (
  ArtWork_ID NUMBER(10) CONSTRAINT ArtWork_Organization_FK REFERENCES Art_Work,
  OrganizationRole_ID NUMBER(10) CONSTRAINT ArtWork_Organization_OrganizationRole_ID_FK REFERENCES Organization_Role(OrganizationRole_ID),
  Description VARCHAR2(320),
  CONSTRAINT ArtWork_Organization_PK PRIMARY KEY(ArtWork_ID, OrganizationRole_ID)
)CLUSTER OrganizationRole_Cluster(OrganizationRole_ID);

-- 35. Project_Organization

CREATE TABLE Project_Organization (
  Project_ID NUMBER(10) CONSTRAINT Project_Organization_Project_ID_FK REFERENCES Project(Project_ID),
  OrganizationRole_ID NUMBER(10) CONSTRAINT Project_Organization_OrganizationRole_ID_FK REFERENCES Organization_Role(OrganizationRole_ID),
  Description VARCHAR2(320),
   CONSTRAINT Project_Organization_PK PRIMARY KEY(Project_ID, OrganizationRole_ID)
)CLUSTER OrganizationRole_Cluster(OrganizationRole_ID);

-- 36. Artwork_Personnel
CREATE TABLE Artwork_Personnel (
  ArtWork_ID NUMBER(10) CONSTRAINT Artwork_Personnel_ArtWork_ID_FK REFERENCES Art_Work(ArtWork_ID),
  PersonRole_ID NUMBER(10) CONSTRAINT Artwork_Personnel_PersonRole_ID_FK REFERENCES Person_Role(PersonRole_ID),
  Description VARCHAR2(320),
  CONSTRAINT Artwork_Personnel_PK PRIMARY KEY(ArtWork_ID, PersonRole_ID)
)CLUSTER PersonRole_Cluster(PersonRole_ID);

-- 37. Project_Personnel
CREATE TABLE Project_Personnel (
  PersonRole_ID NUMBER(10) CONSTRAINT Project_Personnel_PersonRole_ID_FK REFERENCES Person_Role,
  Project_ID NUMBER(10) CONSTRAINT Project_Personnel_Project_ID_FK REFERENCES Project(Project_ID),
  Description VARCHAR2(320),
  CONSTRAINT Project_Personnel_PK PRIMARY KEY(PersonRole_ID, Project_ID)
)CLUSTER PersonRole_Cluster(PersonRole_ID);

--TRiGGER to check if Project has the subtype exhibition if being inserted into the event table. 

CREATE OR REPLACE TRIGGER Project_Exhibition_Check
BEFORE INSERT OR UPDATE ON Exhibition
FOR EACH ROW
DECLARE
v_ProjectType Varchar2(50);
BEGIN

SELECT ProjectType 
INTO v_ProjectType 
FROM PROJECT
WHERE :NEW.Exhibition_ID = Project_ID;

IF v_ProjectType <> 'Exhibition' THEN
 RAISE_APPLICATION_ERROR(-20001, 'Project Subtype must equal ''Exhibition'' to be inserted into the Event Table');

	END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'Invalid Project_ID.');
END; 


CREATE OR REPLACE TRIGGER Container_Box_Check
BEFORE INSERT OR UPDATE ON Box
FOR EACH ROW
DECLARE
v_ContainerType Varchar2(50);
BEGIN

SELECT ContainerType 
INTO v_ContainerType 
FROM Container
WHERE :NEW.Box_ID = Container_ID;

IF v_ContainerType <> 'Box' THEN
 RAISE_APPLICATION_ERROR(-20002, 'Box Superclass Attribute ContainerType must equal ''Box'' to be inserted into the Box Table');

	END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'Invalid Container_ID.');
END; 



-- Ensures that cabinet belongs to an existing or correct filing cabinet

CREATE OR REPLACE TRIGGER Container_Cabinet_Check
BEFORE INSERT OR UPDATE ON Cabinet_Location
FOR EACH ROW
DECLARE
v_ContainerType Varchar2(50);
BEGIN
SELECT ContainerType 
INTO v_ContainerType 
FROM Container
WHERE :NEW.CabinetLocation_ID = Container_ID;

IF v_ContainerType <> 'Filing_Cabinet' THEN
 RAISE_APPLICATION_ERROR(-20002, 'Container Superclass Attribute ContainerType must equal ''Filing_Cabinet'' to be inserted into the Cabinet Table');

	END IF;

END; 

-- This checks for when the user tries to insert a folderless item into the foldered item category
create or replace TRIGGER Item_Foldered_Item_Check
BEFORE INSERT OR UPDATE ON Foldered_Item
FOR EACH ROW
DECLARE
v_IN_FOLDER Varchar2(10);
BEGIN

SELECT IN_FOLDER 
INTO v_IN_FOLDER 
FROM Item
WHERE :NEW.Item_ID = Item_ID;

IF v_IN_FOLDER = 'No' THEN
 RAISE_APPLICATION_ERROR(-20001, 'Item is marked as folderless, you are trying to make the item foldered, either change the ''IN_FOLDER'' status in the ''Item'' Table to ''N'' or insert into the folderless_item table');

	END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'ItemID missing from Item Table');
END; 


-- checks to see if any foldered items are being inserted into the folderless category
create or replace TRIGGER Item_Folderless_Item_Check
BEFORE INSERT OR UPDATE ON Folderless_Item
FOR EACH ROW
DECLARE
v_IN_FOLDER Varchar2(1);
BEGIN

SELECT IN_FOLDER 
INTO v_IN_FOLDER 
FROM Item
WHERE :NEW.Item_ID = Item_ID;

IF v_IN_FOLDER = 'Yes' THEN
 RAISE_APPLICATION_ERROR(-20002, 'Item is marked as in a folder, you are trying to make the item folderless, either change the in folder status or insert into the foldered_item table');

	END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20002, 'ItemID missing from Item Table');
END; 




-- upon inserts or updates on cabinet location, filing cabinet is updated.

create or replace TRIGGER Cabinet_Location_Cabinet_Insert_Trigger
AFTER INSERT OR UPDATE ON Cabinet_Location
FOR EACH ROW
BEGIN

UPDATE Filing_Cabinet
Set cabinetlocation_id = :new.cabinetlocation_ID
Where cabinet_id = :new.cabinet_id;

END; 
