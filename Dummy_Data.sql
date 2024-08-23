INSERT INTO Project_Type (projecttype, description) VALUES ('Exhibition', 'Showcase of artistic works');

INSERT INTO ROOM(ROOM_NAME) VALUES('Archives_Room');
-- Container_Name
Alter Table Filing_Cabinet DISABLE	CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
INSERT INTO Filing_Cabinet (Cabinet_ID, Room_Name) VALUES (1, 'Archives_Room');
INSERT INTO Container_Type (ContainerType, Description) VALUES ('Box', 'Insert Description');


-- Cabinet Item
INSERT INTO Container_Type (ContainerType, Description) VALUES ('Filing_Cabinet', 'Insert Description');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (1, 'Exhibitions Files', 'Anything related to Exhibitions', 'Filing_Cabinet');
INSERT INTO Cabinet_Location (CabinetLocation_ID, Row_Number, Cabinet_ID, Description) VALUES (1, 1, 1, 'All files related to Events');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (2, 'Event Files', 'Anything related to Events', 'Filing_Cabinet');
INSERT INTO Cabinet_Location (CabinetLocation_ID, Row_Number, Cabinet_ID, Description) VALUES (2, 2, 1, 'All files related to Events');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (3, 'Artwork Files', 'Anything related to Artwork', 'Filing_Cabinet');
INSERT INTO Cabinet_Location (CabinetLocation_ID, Row_Number, Cabinet_ID, Description) VALUES (3, 3, 1, 'All relevant files related to Artwork');
INSERT INTO Filing_Cabinet (Cabinet_ID, Room_Name) VALUES (2, 'Archives_Room');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (4, 'Personnel Files', 'Anything related to Personnel', 'Filing_Cabinet');
INSERT INTO Cabinet_Location (CabinetLocation_ID, Row_Number, Cabinet_ID, Description) VALUES (4, 1, 2, 'All relevant files related to People');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (5, 'Organizational Files', 'Anything related to internal/external Organizational documents', 'Filing_Cabinet');
INSERT INTO Cabinet_Location (CabinetLocation_ID, Row_Number, Cabinet_ID, Description) VALUES (5, 2, 2, 'All files related to Organizations');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (6, 'Gallery Files', 'Anything specific to Galleries, goes in here', 'Filing_Cabinet');
INSERT INTO Cabinet_Location (CabinetLocation_ID, Row_Number, Cabinet_ID, Description) VALUES (6, 3, 2, 'Organized Gallery Files');
-- Box Item
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (Container_ID.NEXTVAL, 'Event Documents', 'Storage of documents related to art gallery events', 'Box');
INSERT INTO Box (Box_ID, Start_Date, End_Date, Archive_Date, Room_Name) VALUES (16, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'),'Archives_Room');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (Container_ID.NEXTVAL, 'Pam’s Desk Exhibition Files', 'Box of assorted and unsorted exhibition files from Pam’s desk', 'Box');
INSERT INTO Box (Box_ID, Start_Date, End_Date, Archive_Date, Room_Name) VALUES (18, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'), TO_DATE('2023-07-01', 'YYYY-MM-DD'), 'Archives_Room');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (Container_ID.NEXTVAL, 'Art Project Mishmash', 'Box with a chaotic mix of materials for various art projects', 'Box');
INSERT INTO Box (Box_ID, Start_Date, End_Date, Archive_Date, Room_Name) VALUES (19, TO_DATE('2022-12-01', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'), TO_DATE('2023-06-01', 'YYYY-MM-DD'), 'Archives_Room');
INSERT INTO Container (Container_ID, Container_Name, Description, ContainerType) VALUES (Container_ID.NEXTVAL, 'Event Leftovers Box', 'Box containing a disordered assortment of leftover items and notes from past events', 'Box');
INSERT INTO Box (Box_ID, Start_Date, End_Date, Archive_Date, Room_Name) VALUES (20, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2023-08-31', 'YYYY-MM-DD'), TO_DATE('2023-09-01', 'YYYY-MM-DD'), 'Archives_Room');


--Item Types
INSERT INTO Item_Type (Item_Type, Description) VALUES ('VHS Tape', 'Analog video tape format used for recording and playing back videos');
INSERT INTO Item_Type (Item_Type, Description) VALUES ('Document', 'Paper with printed info for the sole purpose of administrative work');
INSERT INTO Item_Type (Item_Type, Description) VALUES ('Brochure', 'A small booklet or pamphlet, often containing promotional material or product information.');
INSERT INTO Item_Type (Item_Type, Description) VALUES ('Booklet', 'Detailed booklet of exhibition artworks');
INSERT INTO Item_Type (Item_Type, Description) VALUES ('USB Drive', 'Portable storage device for digital files');
INSERT INTO Item_Type (Item_Type, Description) VALUES ('Casette_Tape', 'Recorded audio files');
--Item Classification
INSERT INTO Item_Classification(item_classification, description) VALUES ('Exhibition Catalogue', 'Catalogues detailing artists and works in an exhibition');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Video_Promotion', 'Promotional video materials for art exhibitions and events');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Catalog','A presentation with a series of art pieces that are connected organizationally');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Employee_Log','Document that tracks sign ins and hours worked for an event');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Marketing Material', 'Materials used for marketing purposes');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Exhibition Material', 'Materials related to organizing an exhibition');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Project Files', 'files pertaining to the administration of a project');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Budget Report', 'Detailed financial reports and budgets for events');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Artwork Blueprints', 'Blueprints and design schematics for artwork creation');
INSERT INTO Item_Classification(item_classification, description) VALUES ('Artist Commentary', 'Audio recordings of artist interviews and commentaries');

-- Person_Item
ALTER TABLE Filing_Cabinet DISABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
INSERT INTO Person_Type (PersonType, Description) VALUES ('Artist', 'Individual who creates contemporary art');
INSERT INTO Zip_Code (Zip, City, State) VALUES (90001, 'Los Angeles', 'CA');
INSERT INTO Person (Person_ID, First_Name, Middle_Name, Last_Name, Email, Phone, Shipping_Address, Zip) VALUES (Person_ID.NEXTVAL, 'Alex', 'J', 'Johnson', 'alex.j@example.com', '310-555-1234', '1234 Artist Lane', 90001);
INSERT INTO Person_Role (PersonRole_ID, Person_ID, PersonType) VALUES (PersonRole_ID.NEXTVAL, Person_ID.CURRVAL, 'Artist');
INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Artist Portfolios', 'Portfolios showcasing artists’ works in exhibitions');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Alex Johnson Portfolio', 'Portfolio of contemporary artist Alex Johnson', 'Artist Portfolios',4);
INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, IN_FOLDER) VALUES (Item_ID.NEXTVAL, 'Alex Johnson Catalogue', 'Catalogue of Contemporary Art Exhibition featuring Alex Johnson', TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2023-04-30', 'YYYY-MM-DD'), 'Booklet', 'Catalog','Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);
INSERT INTO Person_Item (Person_ID, Item_ID) VALUES (Person_ID.CURRVAL, Item_ID.CURRVAL);
ALTER TABLE Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
-- Organization Item
ALTER TABLE Filing_Cabinet DISABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
INSERT INTO Organization_Type (OrganizationType, Description) VALUES ('Art Gallery', 'A vibrant space dedicated to showcasing avant-garde and contemporary art from emerging artists around the globe');

INSERT INTO Zip_Code (Zip, City, State) VALUES (91101, 'Pasadena', 'CA');
INSERT INTO Organizations (Organization_ID, Organization_Name, Street_Address, Zip, Phone_Number, Email) 
VALUES (Organization_ID.NEXTVAL, 'The Luminary Art Gallery', '456 Creative Blvd', 91101, '626-555-7890', 'info@luminaryart.com');
INSERT INTO Organization_Role (OrganizationRole_ID, Organization_ID, Organization_Type) 
VALUES (OrganizationRole_ID.NEXTVAL, Organization_ID.CURRVAL, 'Art Gallery');
INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Video Promotions', 'Collection of promotional videos for gallery exhibitions');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Gallery Video Archive', 'Archive of video promotions for past exhibitions', 'Video Promotions', Container_ID.CURRVAL);

INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) 
VALUES (Item_ID.NEXTVAL, 'Gallery Opening Night VHS', 'VHS tape of The Luminary Art Gallery opening night', TO_DATE('2022-01-15', 'YYYY-MM-DD'), TO_DATE('2022-01-15', 'YYYY-MM-DD'), 'VHS Tape', 'Video_Promotion', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);
INSERT INTO Organization_Item (Organization_ID, Item_ID) VALUES (Organization_ID.CURRVAL, Item_ID.CURRVAL);
ALTER TABLE Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
-- Exhibition Item
Alter Table Filing_Cabinet DISABLE	CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
-- Adding a new project type for inventory management
-- Inserting a project with the correct Project_Type as Exhibition
INSERT INTO Project (Project_ID, Project_Name, Description, Start_Date, End_Date, ProjectType) VALUES (Project_ID.NEXTVAL, 'ArtNight Pasadena at the Armory', 'Pasadenas arts and culture organizations open their doors for the evening', TO_DATE('2022-10-13', 'YYYY-MM-DD'), TO_DATE('2022-10-13', 'YYYY-MM-DD'), 'Exhibition');
-- Adding a new exhibition type
INSERT INTO Exhibition_Type (Exhibition_Type, Description) VALUES ('General', 'A broad range of artistic works encompassing various mediums and styles');
-- Inserting an exhibition linked to the project
INSERT INTO Exhibition (Exhibition_ID, Exhibition_Type) VALUES (Project_ID.CURRVAL, 'General');  

INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Exhibition_Info', 'Folder holds Exhibition_Info');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, '2021 Abstract Art Exhibition', 'All Documents relating to 2021 Abstract Art Exhibition', 'Exhibition_Info', 1);
-- Adding an item: exhibition catalog for the abstract art

INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, '2021 Abstract Art Exhibition Catalog', 'Catalog of the 2021 Abstract Art Exhibition', TO_DATE('2021-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 'Booklet', 'Catalog', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);
-- Associating the project with the item
INSERT INTO Project_Item (Project_ID, Item_ID) VALUES (Project_ID.CURRVAL, Item_ID.CURRVAL);
Alter Table Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;

-- Event Item
Alter Table Filing_Cabinet DISABLE	CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
INSERT INTO Project_Type (projecttype, description) VALUES ('Event', 'Items realted to Events');
INSERT INTO Project (Project_ID, Project_Name, Description, Start_Date, End_Date, ProjectType) VALUES (Project_ID.NEXTVAL, 'Risograph Horror Halloween Night', 'Create Risograph prints with a spooky theme for Halloween', TO_DATE('2023-10-25', 'YYYY-MM-DD'), TO_DATE('2023-10-25', 'YYYY-MM-DD'), 'Event');
INSERT INTO Event_Type (Event_Type) VALUES ('Workshop');
INSERT INTO Event (Event_ID, Exhibition_ID, Event_Type) VALUES (Project_ID.CURRVAL, NULL, 'Workshop'); 
INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Event_Info', 'Folder holds Events_Info');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, '2023 Risograph Horror Halloween Night', 'All documents created for Risograph Horror Halloween Night', 'Event_Info', Container_ID.CURRVAL);
-- Adding an item: exhibition catalog for the abstract art
INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, '2023 Risograph Horror Halloween Night Employee Log', 'Sign-Ins and assigned teachers for Risograph Workshop', TO_DATE('2023-10-25', 'YYYY-MM-DD'), TO_DATE('2023-10-25', 'YYYY-MM-DD'), 'Document', 'Employee_Log', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);
-- Associating the project with the item
INSERT INTO Project_Item (Project_ID, Item_ID) VALUES (Project_ID.CURRVAL, Item_ID.CURRVAL);
Alter Table Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
-- ArtWork Item
Alter Table Filing_Cabinet DISABLE	CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
INSERT INTO Medium (Medium, Description) VALUES ('Digital', 'Art created using digital technology');
INSERT INTO Art_Work (ArtWork_ID, Name, Description, Date_Created, Medium) VALUES (ArtWork_ID.NEXTVAL, 'Digital Dreams', 'A piece representing the blend of technology and art', TO_DATE('2022-05-15', 'YYYY-MM-DD'), 'Digital');
INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Event Brochures', 'Brochures for various events');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, '2023 Art Expo', 'Brochures and documents for the 2023 Art Expo', 'Event Brochures', 3);
INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, 'Art Expo Brochure', 'Brochure for the 2023 Art Expo', TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Brochure', 'Marketing Material', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);
INSERT INTO ArtWork_Item (Artwork_ID, Item_ID) VALUES (ArtWork_ID.CURRVAL, Item_ID.CURRVAL);
Alter Table Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
-- Project_ArtWork
ALTER TABLE Filing_Cabinet DISABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
INSERT INTO Medium (Medium, Description) VALUES ('Technologies', 'Art that heavily uses technology');

INSERT INTO Art_Work (ArtWork_ID, Name, Description, Date_Created, Medium) VALUES (ArtWork_ID.NEXTVAL, 'Fusion of Times', 'A piece blending past and future art forms', TO_DATE('2022-06-20', 'YYYY-MM-DD'), 'Technologies');
INSERT INTO PROJECT_ARTWORK(PROJECT_ID,ARTWORK_ID) VALUES(4,2)
INSERT INTO Project (Project_ID, Project_Name, Description, Start_Date, End_Date, ProjectType) VALUES (Project_ID.NEXTVAL, 'Contemporary Art Exhibition', 'Exhibition featuring contemporary art', TO_DATE('2023-04-15', 'YYYY-MM-DD'), TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'Exhibition');
INSERT INTO Exhibition_Type (Exhibition_Type, Description) VALUES ('Contemporary', 'Modern style artistic works');
INSERT INTO Exhibition (Exhibition_ID, Exhibition_Type) VALUES (Project_ID.CURRVAL, 'Contemporary');
INSERT INTO PROJECT_ARTWORK(PROJECT_ID,ARTWORK_ID) VALUES(12,7);
INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Exhibition Documents', 'Documents related to Exhibitions');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Contemporary Art Documents', 'All documents for Contemporary Art Exhibition', 'Exhibition Documents', 1);
INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, 'Contemporary Art Catalogue', 'Catalogue for the Contemporary Art Exhibition', TO_DATE('2023-04-15', 'YYYY-MM-DD'), TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'Booklet', 'Catalog', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);
INSERT INTO ArtWork_Item (Artwork_ID, Item_ID) VALUES (ArtWork_ID.CURRVAL, Item_ID.CURRVAL);
INSERT INTO Project_Item (Project_ID, Item_ID) VALUES (Project_ID.CURRVAL, Item_ID.CURRVAL);
ALTER TABLE Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;


-- ArtWork_Organization
ALTER TABLE Filing_Cabinet DISABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;

INSERT INTO Art_Work (ArtWork_ID, Name, Description, Date_Created, Medium) VALUES (ArtWork_ID.NEXTVAL, 'Desicrato: Desecration and Creation', 'A piece of art that uses technology as a statement on desecration', TO_DATE('2022-06-20', 'YYYY-MM-DD'), 'Technologies');

INSERT INTO Organization_Type (OrganizationType, Description) VALUES ('Event Cosponsor', 'an organization that provides monetary or administrative support');
INSERT INTO Zip_Code (Zip, City, State) VALUES (91103, 'Pasadena', 'CA');
INSERT INTO Organizations (Organization_ID, Organization_Name, Street_Address, Zip, Phone_Number, Email) 
VALUES (Organization_ID.NEXTVAL, 'Monroe Foundation', '789 Artistic Ave', 91103, '626-123-4567', 'contact@vistamodern.com');
INSERT INTO Organization_Role (OrganizationRole_ID, Organization_ID, Organization_Type) 
VALUES (OrganizationRole_ID.NEXTVAL, Organization_ID.CURRVAL, 'Event Cosponsor');

INSERT INTO ArtWork_Organization (ArtWork_ID, OrganizationRole_ID, Description) VALUES (ArtWork_ID.CURRVAL, OrganizationRole_ID.CURRVAL, 'Exhibited at Vista Modern Gallery');

INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Exhibit Plans', 'Strategic plans and layouts for exhibits');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Fusion Exhibit Plan', 'Planning documents for Fusion of Times exhibit', 'Exhibit Plans', 1);
INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, 'Exhibit Design Files', 'USB drive containing design files for Fusion exhibit', TO_DATE('2022-06-20', 'YYYY-MM-DD'), TO_DATE('2022-06-20', 'YYYY-MM-DD'), 'USB Drive', 'Project Files', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);

INSERT INTO ArtWork_Item (Artwork_ID, Item_ID) VALUES (ArtWork_ID.CURRVAL, Item_ID.CURRVAL);
INSERT INTO Organization_Item (Organization_ID, Item_ID) VALUES (Organization_ID.CURRVAL, Item_ID.CURRVAL);

ALTER TABLE Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
-- Project_Organization
INSERT INTO Project (Project_ID, Project_Name, Description, Start_Date, End_Date, ProjectType) VALUES (Project_ID.NEXTVAL, 'The Armory Gala', 'Annual fundraising gala for The_Armory art gallery', TO_DATE('2023-10-25', 'YYYY-MM-DD'), TO_DATE('2023-10-25', 'YYYY-MM-DD'), 'Event');
INSERT INTO Event_Type (Event_Type) VALUES ('Gala');
INSERT INTO Event (Event_ID, Exhibition_ID, Event_Type) VALUES (Project_ID.CURRVAL, NULL, 'Gala'); 

INSERT INTO Organizations (Organization_ID, Organization_Name, Street_Address, Zip, Phone_Number, Email) 
VALUES (Organization_ID.NEXTVAL, 'The_Armory', '1028 Art St', 91103, '626-555-7890', 'info@thearmory.com');
INSERT INTO Organization_Role (OrganizationRole_ID, Organization_ID, Organization_Type) 
VALUES (OrganizationRole_ID.NEXTVAL, Organization_ID.CURRVAL, 'Art Gallery');

INSERT INTO Project_Organization (Project_ID, OrganizationRole_ID, Description) VALUES (Project_ID.CURRVAL, OrganizationRole_ID.CURRVAL, 'Gallery Event Fundraiser hosted by The Armory');


INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, 'Gala Event Budget', 'Detailed budget document for The Armory Gala', TO_DATE('2023-10-25', 'YYYY-MM-DD'), TO_DATE('2023-10-25', 'YYYY-MM-DD'), 'Document', 'Budget Report', 'No');
INSERT INTO Folderless_Item (Item_ID, Container_ID) VALUES (Item_ID.CURRVAL, 2);

INSERT INTO Project_Item (Project_ID, Item_ID) VALUES (Project_ID.CURRVAL, Item_ID.CURRVAL);
INSERT INTO Organization_Item (Organization_ID, Item_ID) VALUES (Organization_ID.CURRVAL, Item_ID.CURRVAL);


-- Artwork_Personnel

ALTER TABLE Filing_Cabinet DISABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;

INSERT INTO Medium (Medium, Description) VALUES ('Interactive Digital Art', 'Art form integrating digital technology with interactive elements');

INSERT INTO Art_Work (ArtWork_ID, Name, Description, Date_Created, Medium) VALUES (ArtWork_ID.NEXTVAL, 'Virtual Canvas', 'An interactive digital art piece merging virtual reality and traditional painting', TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Interactive Digital Art');

INSERT INTO Person_Type (PersonType, Description) VALUES ('VR Art Specialist', 'Expert in creating art using virtual reality technology');
INSERT INTO Zip_Code (Zip, City, State) VALUES (90003, 'Los Angeles', 'CA');
INSERT INTO Person (Person_ID, First_Name, Middle_Name, Last_Name, Email, Phone, Shipping_Address, Zip) VALUES (Person_ID.NEXTVAL, 'Morgan', 'L', 'Reed', 'morgan.r@example.com', '323-555-7890', '789 Innovation Blvd', 90003);
INSERT INTO Person_Role (PersonRole_ID, Person_ID, PersonType) VALUES (PersonRole_ID.NEXTVAL, Person_ID.CURRVAL, 'VR Art Specialist');

INSERT INTO Artwork_Personnel (ArtWork_ID, PersonRole_ID, Description) VALUES (ArtWork_ID.CURRVAL, PersonRole_ID.CURRVAL, 'VR specialist Morgan Reed’s contribution to Virtual Canvas');
INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Project Insights', 'In-depth information and technical details of innovative art projects');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Virtual Canvas Insights', 'Technical and conceptual details of the Virtual Canvas project', 'Project Insights', 3);
INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, 'Virtual Canvas Schematics', 'Detailed VR design schematics for Virtual Canvas', TO_DATE('2023-02-10', 'YYYY-MM-DD'), TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Document', 'Artwork Blueprints', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);
INSERT INTO ArtWork_Item (Artwork_ID, Item_ID) VALUES (ArtWork_ID.CURRVAL, Item_ID.CURRVAL);
INSERT INTO Person_Item (Person_ID, Item_ID) VALUES (Person_ID.CURRVAL, Item_ID.CURRVAL);


ALTER TABLE Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;


-- Project_Personnel

ALTER TABLE Filing_Cabinet DISABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;


INSERT INTO Project (Project_ID, Project_Name, Description, Start_Date, End_Date, ProjectType) VALUES (Project_ID.NEXTVAL, 'International Art Expo', 'A global exhibition featuring a diverse range of art', TO_DATE('2023-07-15', 'YYYY-MM-DD'), TO_DATE('2023-07-25', 'YYYY-MM-DD'), 'Exhibition');
INSERT INTO Exhibition_Type (Exhibition_Type, Description) VALUES ('International', 'Artworks from around the world showcasing global cultures and techniques');
INSERT INTO Exhibition (Exhibition_ID, Exhibition_Type) VALUES (Project_ID.CURRVAL, 'International');


INSERT INTO Zip_Code (Zip, City, State) VALUES (90004, 'Los Angeles', 'CA');
INSERT INTO Person (Person_ID, First_Name, Middle_Name, Last_Name, Email, Phone, Shipping_Address, Zip) VALUES (Person_ID.NEXTVAL, 'Jordan', 'B', 'Lee', 'jordan.lee@example.com', '323-555-1212', '234 Artisan Rd', 90004);
INSERT INTO Person_Role (PersonRole_ID, Person_ID, PersonType) VALUES (PersonRole_ID.NEXTVAL, Person_ID.CURRVAL, 'Artist');

INSERT INTO Project_Personnel (PersonRole_ID, Project_ID, Description) VALUES (PersonRole_ID.CURRVAL, Project_ID.CURRVAL, 'Jordan Lee featured in International Art Expo');

INSERT INTO Folder_Content (Folder_Content, Description) VALUES ('Exposition Interviews', 'Interviews and discussions with artists from the exposition');
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Jordan Lee Art Expo Interview', 'Interview with artist Jordan Lee at the International Art Expo', 'Exposition Interviews', 4);

INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, 'Jordan Lee Expo Commentary', 'Audio recording of Jordan Lee discussing their artwork at the expo', TO_DATE('2023-07-16', 'YYYY-MM-DD'), TO_DATE('2023-07-16', 'YYYY-MM-DD'), 'Casette_Tape', 'Artist Commentary', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);

INSERT INTO Person_Item (Person_ID, Item_ID) VALUES (Person_ID.CURRVAL, Item_ID.CURRVAL);
INSERT INTO Project_Item (Project_ID, Item_ID) VALUES (Project_ID.CURRVAL, Item_ID.CURRVAL);

ALTER TABLE Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;
-- Project-Artwork-Personnel-Organization
ALTER TABLE Filing_Cabinet DISABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;

INSERT INTO Art_Work (ArtWork_ID, Name, Description, Date_Created, Medium) VALUES ( ArtWork_ID.NEXTVAL, 'Urban Symphony', 'A vibrant canvas blending urban landscapes with musical elements', TO_DATE('2021-06-15', 'YYYY-MM-DD'), 'Mixed Media');


INSERT INTO Project (Project_ID, Project_Name, Description, Start_Date, End_Date, ProjectType) VALUES (Project_ID.NEXTVAL, 'Cityscapes and Soundwaves', 'An exhibition exploring the intersection of urban life and music', TO_DATE('2023-05-20', 'YYYY-MM-DD'), TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Exhibition');
INSERT INTO Exhibition (Exhibition_ID, Exhibition_Type) VALUES (Project_ID.CURRVAL, 'Contemporary');
INSERT INTO PROJECT_ARTWORK(PROJECT_ID,ARTWORK_ID) VALUES(15,11);
INSERT INTO Organizations (Organization_ID, Organization_Name, Street_Address, Zip, Phone_Number, Email) VALUES (Organization_ID.NEXTVAL, 'Artistic Endeavors Foundation', '789 Palette Ave', 91103, '626-555-0110', 'contact@artisticendeavors.org');
INSERT INTO Organization_Role (OrganizationRole_ID, Organization_ID, Organization_Type) VALUES (OrganizationRole_ID.NEXTVAL, Organization_ID.CURRVAL, 'Art Gallery');

INSERT INTO Zip_Code (Zip, City, State) VALUES (90005, 'Los Angeles', 'CA');
INSERT INTO Person (Person_ID, First_Name, Middle_Name, Last_Name, Email, Phone, Shipping_Address, Zip) VALUES (Person_ID.NEXTVAL, 'Emily', 'B', 'Johnson', 'emilyj@example.com', '555-0102', '1234 Painter''s Lane', 90005);
INSERT INTO Person_Role (PersonRole_ID, Person_ID, PersonType) VALUES (PersonRole_ID.NEXTVAL, Person_ID.CURRVAL, 'Artist');

INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Emily Johnson''s Exhibition Portfolio', 'Collection of documents, images, and notes related to Emily Johnson''s contributions to the "Cityscapes and Soundwaves" exhibition', 'Exhibition Documents', 4);


INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (Item_ID.NEXTVAL, 'Emily Johnson - Catalogue', 'Catalogue for the Contemporary Art Exhibition', TO_DATE('2023-04-15', 'YYYY-MM-DD'), TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'Booklet', 'Exhibition Material', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (35, 25);

ALTER TABLE Filing_Cabinet ENABLE CONSTRAINT Cabinet_CabinetLocation_ID_NULL;


--Additional Data

-- Setting up the filing cabinet, container, and folders
-- Inserting a person (Alex Johnson) into the Person table
INSERT INTO Person (Person_ID, First_Name, Middle_Name, Last_Name, Email, Phone, Shipping_Address, Zip) 
VALUES (12, 'Alex', 'J', 'Johnson', 'alex.johnson@example.com', '310-555-1234', '1234 Artist Lane', 90001);

INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (1, 'Alex Johnson Retrospective', 'Exclusive compilation of Alex Johnson''s career milestones and featured artworks', 'Artistic Career Insights', 26);

-- Inserting Items and linking them to folders and persons
INSERT INTO Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification, In_Folder) VALUES (ITEM_ID.NEXTVAL, 'Alex Johnson Artistic Catalogue', 'Detailed catalogue of Alex Johnson''s major works and exhibitions', TO_DATE('2023-04-15', 'YYYY-MM-DD'), TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'Booklet', 'Catalog', 'Yes');
INSERT INTO Foldered_Item (Item_ID, Folder_ID) VALUES (Item_ID.CURRVAL, Folder_ID.CURRVAL);
INSERT INTO Person_Item (Person_ID, Item_ID) VALUES (Person_ID.CURRVAL, Item_ID.CURRVAL);

-- Linking Alex Johnson to his Artistic Catalogue in the Person_Item table
-- Folders for Box: Event Documents (Container ID 16)
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Unsorted Event Brochures', 'A mix of various brochures from different events, unsorted and collected over time', 'Event Brochures', 16);
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Miscellaneous Event Documents', 'Assorted documents including notes and memos from various events', 'Event_Info', 16);

-- Folders for Box: Pam’s Desk Exhibition Files (Container ID 18)
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Pam’s Exhibition Notes', 'Personal notes and informal documentation from Pam’s desk', 'Exhibition Documents', 18);
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Pam’s Desk Clutter', 'Various unsorted exhibition-related papers from Pam’s desk', 'Exhibit Plans', 18);

-- Folders for Box: Art Project Mishmash (Container ID 19)
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Art Project Brainstorms', 'Creative brainstorming notes and sketches for art projects', 'Project Insights', 19);
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Art Project Concepts', 'Conceptual drafts and project ideas for various art installations', 'Artist Portfolios', 19);

-- Folders for Box: Event Leftovers Box (Container ID 20)
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Random Event Ephemera', 'Leftover event items including flyers and miscellaneous notes', 'Video Promotions', 20);
INSERT INTO Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID) VALUES (Folder_ID.NEXTVAL, 'Assorted Event Papers', 'An assortment of papers and materials left from past events', 'Exhibition_Info', 20);


--Query 1:
--List the total number of  orgs listed as a co sponsor”                                                                                                                 SELECT COUNT(DISTINCT Organization_ID) AS Total_Event_Cosponsors
SELECT COUNT(DISTINCT Organization_ID) AS Total_Event_Cosponsors
FROM Organization_Role
WHERE Organization_Type = 'Event Cosponsor';

--Query 2:
--“Find all the items associated with the Project named 'ArtNight Pasadena at the Armor”                                                                                                                 SELECT UNIQUE E.EXHIBITION_ID,P.PROJECT_NAME, E.EXHIBITION_TYPE,I.ITEM_ID, I.ITEM_NAME, I.DESCRIPTION
 SELECT UNIQUE E.EXHIBITION_ID,P.PROJECT_NAME, E.EXHIBITION_TYPE,I.ITEM_ID, I.ITEM_NAME, I.DESCRIPTION
FROM EXHIBITION E, PROJECT_ITEM PI, ITEM I, PROJECT P
WHERE E.EXHIBITION_ID = PI.PROJECT_ID AND PI.ITEM_ID = I.ITEM_ID AND E.EXHIBITION_ID = P.PROJECT_ID AND P.PROJECT_NAME = 'ArtNight Pasadena at the Armory';


--Query 3:
--“List the details of the org associated with the artwork named Digital Dream”
SELECT Organizations.Organization_Name, Organizations.Street_Address, Zip_Code.City, Zip_Code.State
FROM Organizations
JOIN Organization_Role ON Organizations.Organization_ID = Organization_Role.Organization_ID
JOIN ArtWork_Organization ON Artwork_Organization.OrganizationRole_ID = Organization_Role.OrganizationRole_ID
JOIN Zip_Code ON Organizations.Zip = Zip_Code.Zip
JOIN Art_Work ON ArtWork_Organization.ArtWork_ID = Art_Work.ArtWork_ID
WHERE Art_Work.Name = 'Fusion of Times' ;
--Query 4:
--“List all people involved in Cityscapes and Soundwaves Exhibition’ and their roles”
SELECT p.First_Name, p.Last_Name, PR.PersonType
FROM Person p, Person_Role PR, Project_personnel PP, project proj
WHERE p.Person_ID = PR.Person_ID
AND PR.PersonRole_ID = PP.PersonRole_ID
AND PP.Project_ID = proj.Project_ID
AND proj.Project_Name = 'Cityscapes and Soundwaves'; 

--Query 5:
--“Find items associated with people”
SELECT UNIQUE P.PERSON_ID,P.FIRST_NAME,P.LAST_NAME, I.ITEM_ID, I.ITEM_NAME, I.DESCRIPTION
FROM ITEM I, PERSON P, PERSON_ITEM PI
WHERE I.ITEM_ID = PI.ITEM_ID AND PI.PERSON_ID = PI.PERSON_ID;
--Query 6:
--“Find items associated with organizations”
SELECT UNIQUE O.ORGANIZATION_ID,O.ORGANIZATION_NAME,I.ITEM_ID, I.ITEM_NAME, I.DESCRIPTION
FROM ORGANIZATIONS O, ORGANIZATION_ITEM OI, ITEM I
WHERE O.ORGANIZATION_ID = OI.ORGANIZATION_ID AND OI.ITEM_ID = I.ITEM_ID;

--Query 7:
--Find items associated with projects”
SELECT UNIQUE P.PROJECT_ID,P.PROJECT_NAME,I.ITEM_ID, I.ITEM_NAME, I.DESCRIPTION
FROM PROJECT P, PROJECT_ITEM PI, ITEM I
WHERE P.PROJECT_ID = PI.PROJECT_ID AND PI.ITEM_ID = I.ITEM_ID;

--Query 8:
--“Find items associated with exhibitions”
SELECT UNIQUE E.EXHIBITION_ID,P.PROJECT_NAME, E.EXHIBITION_TYPE,I.ITEM_ID, I.ITEM_NAME, I.DESCRIPTION
FROM EXHIBITION E, PROJECT_ITEM PI, ITEM I, PROJECT P
WHERE E.EXHIBITION_ID = PI.PROJECT_ID AND PI.ITEM_ID = I.ITEM_ID AND E.EXHIBITION_ID = P.PROJECT_ID;

--Query 9:
--“Find items associated with events”
SELECT UNIQUE E.EVENT_ID,P.PROJECT_NAME, E.EVENT_TYPE,I.ITEM_ID, I.ITEM_NAME, I.DESCRIPTION
FROM EVENT E, PROJECT_ITEM PI, ITEM I, PROJECT P
WHERE E.EVENT_ID = PI.PROJECT_ID AND PI.ITEM_ID = I.ITEM_ID AND E.EVENT_ID = P.PROJECT_ID;

--Query 10:
--“Find items associated with artwork”
SELECT UNIQUE A.ARTWORK_ID,A.NAME, A.DESCRIPTION, A.MEDIUM ,I.ITEM_ID, I.ITEM_NAME, I.DESCRIPTION
FROM ART_WORK A, ARTWORK_ITEM AI, ITEM I
WHERE A.ARTWORK_ID = AI.ARTWORK_ID AND AI.ITEM_ID = I.ITEM_ID;
spool off;
