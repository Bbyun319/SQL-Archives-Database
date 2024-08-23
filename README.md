# SQL-Archives-Database
The main functions of this database are centered around ensuring data storage, entry and retrieval, as the Armory Center for the Arts aims to transition their exhibition archives digitally. 
Executive Summary

The relational data model developed through SQL is aimed to simplify the storage and retrieval of data from the Armory Center for the Arts in Pasadena, California. The Armory Center for the Arts, previously known as the Pasadena Art Museum opened its doors in 1947. For nearly eight decades the Armory has hosted the work of local and distinguished artists and provided a space for the residents of Pasadena and the greater Los Angeles area. The Armory Center’s mission is,  “to nurture our community and its young people by creating, learning, and presenting art to advance equity and social justice. We envision joyful, healthy, and equitable communities shaped by imagination, creativity, and diverse voices.” The Armory Center has been an active member of their local community and has partnered with organizations that are committed to promoting youth interest in fine arts. 

Over the past decades, the Armory Center has relied on paper records to track their activity. Their current physical database includes thousands of printed documents and other media items sorted by boxes that were manually retrieved based on an unclear naming convention. Our project reorganized this data, allowing for information about artists, exhibitions and programs to be more efficiently accessible. 

The main functions of this database are centered around ensuring data storage, entry and retrieval, as the Armory Center for the Arts aims to transition their exhibition archives digitally. Using SQL, our team has created a product that will enable the Armory to quickly review the information held in their archives without having to dig through old files for hours. 

The goal of this project was to reorganize the relational model of the physical data logging system previously used to a more efficient data model that is not based on arbitrary conventions like a traditional filing structure. For example, if an artist participated in multiple exhibitions at the Armory Center, the files would be held in separate folders and likely separate boxes, requiring an employee or patron with the knowledge of both exhibits to accurately track the artist’s exhibition history. With our new SQL database, a user could simply use the name of the artist to find all the exhibitions they participated in. Our team thoughtfully crafted a first iteration of the database for the Armory Center optimizing for data storage about exhibits, events and artists who the Armory Center has recorded their connection with.

# Planning for the Database: Practical Database Development

To determine the scope for this project our team visited the Armory Center to view their archives. We also spoke to current employees to understand their essential business functions and deepen our understanding of typical art industry jargon. When analyzing their archives we carefully looked at the types of information they stored identifying what kinds of attributes would be necessary for the entities we created and how the entities should relate to each other based on the business rules we observed. The Armory Center for the Arts has been open for decades and has hosted hundreds of exhibitions with thousands of artists. In addition to their exhibitions, the Armory Center hosts events and classes. 

To best prepare for modeling our database we created a function versus entity chart to anticipate which entities would be needed for the functions we wanted to have in our database. This exercise allowed us to grasp the nature of the relationships we plan to build in SQL. This chart also identified the most important entities to our model and potential integrity constraints we should consider when getting to the more advanced stages of design. 

# Conceptual Design

## ERD
Our entity relationship diagrams are interpretations of the current physical archive at the Armory Center for Arts. Below we have provided images of the physical user views. In some cases our entity relationship diagrams represent a synthesized interpretation of the Armory Center’s available user views to better translate into SQL formatting.

The first ERD represents the organization of items in the format of folders and boxes of folders. Each unique folder contains items relating to the folder topic. There is a rare occasion where items are not housed in a folder. For each folder there is a box that it is held in which is labeled based on its contents. In our model each box is given a unique name and folders are categorized based on their content type, which could include artist background, budgeting or reports about attendance. Most folders hold multiple items and at minimum hold one item. This model most represents userview examples #1 and #3

The second ERD represents finding an item. Each item within the Armory Center’s archive may be related to a person (could be an artist or employee), organization, artwork or project. The model is most related to the second user view which indicates the contents within the box physically listed by an employee who manually identified the box contents. Due to the disorganization of the current archival system at the Armory Center, our team developed this user view using our understanding of the business practices of the arts center.

For a better viewing experience of our ERDs, we have provided a link to the Lucid Chart document.

## CDM
The conceptual data model integrates the entities and relationships from our individual enterprise relationship diagrams based on user views to create one composite diagram indicating how our final data model will operate. Our final conceptual data model includes 37 different entities. To smoothly combine our ERDs we created ‘lookup tables’ to support the underlying many to many relationships present between entities. Below is an image of our data model. For better viewing of our model please use this link.

## Business Rules
For the purposes of this project we have adopted a few different business rules to clarify the relationships between the entities we have created. We allow a person involved with the Armory to hold multiple identities including as an artist and employee. The Armory also is connected to many different organizations, some of which are collectives or a consortium of arts organizations. The Armory currently organizes its data in a combination of locations, including physical spaces like boxes in filing cabinets as well as digital documents and media forms on Google Drive. An event or person may have data stored in many different locations both physically and digitally. For the purpose of this project an item is defined as an individual piece  of media including documents, online videos, online and physical images, cassette tapes, DVDs, CDs, etc. Additionally, our database includes the Project entity as a superclass to the Event and Exhibition entities, meaning that a project may be an event or an exhibition. Similarly, the entity Container is a super class for Box and Cabinet Location, indicating that a container can be a box or cabinet. There are two types of items in our database, either items held in folders or items that are not within folders.

Here we would like to highlight some definitions relating to the entities and attributes we created that may be less intuitive based on our naming. An item classification refers to the content type or theme of a particular item. The item type indicated the physical features of an item (i.e. printed document, cassette tape, CD). The medium represents the type of art (i.e. oil on canvas, paper mache, sculpture). The person type identifies the category of the individual this would include an artist, employee, volunteer, etc. A container is a superclass of box and cabinet and generally refers to a location that a folder or item would be housed in. Folder content describes the theme of information that is found in a folder like budget, artist background, exhibition and more.

## Domain Definitions
There are a few different domain classifications within our database. Many of the primary keys of our entities like Artwork_ID, Box_ID, Item_ID and Person_ID will be a number domain. Other attributes that are descriptors or contain personal data are likely variable-length character string (varchar2) domain. This would include attributes like Person(First_Name) and Medium(Description). The other domain frequently used in this database is date. This is included in entities like Item and Project that both have Start_Date and End_Date attributes.

# Logical Design with the Relational Model
Third Normal Form Statements (3NFs)
Key: primary key, not null, foreign key, Unique, Subclass Alias, Check Statements
```
Zip_Code (Zip, City, State)
Event_Type (Event_Type)
Exhibition_Type (Exhibition_Type, Description)
Item_Classification (Item_Classification, Description)
Item_Type (Item_Type, Description)
Medium (Medium, Description)
Organization_Type (OrganizationType, Description)
Person_Type (PersonType, Description)
Project_Type (ProjectType, Description)
Room (Room_Name)
Container_Type(Container_Type, Description)
Container (Container_ID, Container_Name, Description, Room_Name, Container_Type)
Filing_Cabinet (Cabinet_ID, Description, Room_Name)
Folder_Content (Folder_Content, Description)
Organizations (Organization_ID, Organization_Name, Street_Address, Zip, Phone_Number, Email)
Person (Person_ID, First_Name, Middle_Name, Last_Name, Email, Phone, Shipping_Address, Zip)
Box (Box_ID, Start_Date, End_Date, Archive_Date)
Folder (Folder_ID, Folder_Name, Description, Folder_Content, Container_ID)
Item (Item_ID, Item_Name, Description, Start_Date, End_Date, Item_Type, Item_Classification)
Art_Work (ArtWork_ID, Name, Description, Date_Created, Medium)
Project (Project_ID, Project_Name, Description, Start_Date, End_Date, ProjectType)
Exhibition (Exhition_ID, Exhibition_Type)
Person_Role (PersonRole_ID, [Person_ID, PersonType])
Event (Event_ID, Exhibition_ID, Event_Type)
Cabinet_Location (CabinetLocation_ID, [Row_Number, Cabinet_ID ], Description)
Foldered_Item (Item_ID, Folder_ID)
Folderless_Item (Item_ID, Container_ID)
Person_Item (Person_ID, Item_ID)
Organization_Item (Organization_ID, Item_ID)
Project_Item (Project_ID, Item_ID)
ArtWork_Item (Artwork_ID, Item_ID)
Project_ArtWork (Project_ID, ArtWork_ID)
Organization_Role (OrganizationRole_ID, (Organization_ID, Organization_Type), Description)
ArtWork_Organization (ArtWork_ID, OrganizationRole_ID, Description)
Project_Organization (Project_ID, OrganizationRole_ID, Description)
Artwork_Personnel (ArtWork_ID, PersonRole_ID, Description)
Project_Personnel (PersonRole_ID, Project_ID, Description)
Our third normal form statements have noted particular entities that require additional check statements in the physical implementation of our design in order to protect the integrity of the data. These will enforce basic business rules like ensuring the start date of a project is before the end date of a project. In our key, all primary keys are assumed to be unique so they are not additionally labeled in red font. To be clear about the naming convention of our attributes we also noted the instances when a subclass’ primary key (which is the same as its superclass primary key) is named with an ‘alias’ that may fit better with the subclass entity’s naming convention. 
```
# Physical Design and Implementation with the Relational Model

Process versus Entity Matrix
The process versus entity matrix represents our analysis of the anticipated usage of our database, measuring the creates, reads, updates and deletes of each entity based on the processes that will occur in the database. I have provided a link to the excel sheet for our process versus entity matrix.


# Transaction Analysis Forms
Our transaction analysis forms are used to track each entity affected by a particular function modeled in our database. Each entity included in the form has a particular action tied to it (create, update, read or delete) and an estimated number of times this action occurs per transaction. These numbers are then multiplied by the peak number of transactions (estimated by our team) to find the total number of references per period. Below is a sample TAF for creating an item stored in a folder. All of our transaction analysis forms can be found using this link.

This composite usage map combines the transaction analysis forms we created to indicate the anticipated usage of each entity in relation to the processes we highlighted. Each entity has numbers indicating the total number of hits, its percentage of database hits and CUD/CRUD ratio.

# Summary and Conclusions

Our final data model aims to simplify the process of entering and retrieving data for the Armory Center for the Arts. Due to the database’s archival nature, we anticipate that the majority of the usage of this database will be for reads. The architecture of our database is structured to best support the expected usage behaviors. 

One of the biggest challenges in creating this database was determining our business rules. This required hands-on research through visits to the Armory Center as well as independent research to understand the art terminology and industry practices. Understanding the architecture of an organization like the Armory enhances our ability to produce an efficient database that mimics the behavior and practices of the employees who will ultimately be using our final product.

One of the team’s favorite aspects of the database is enhanced ability to track items. Previously, all items had to be manually retrieved and most items were only identified by the box and folder they are held in. With our database, items can be searched for based upon the item type (the physical nature of the item), item classification (the content nature of the item), the type of content it is held in and its relation to a project, person, piece of artwork or organization. Currently most of the boxes are sorted by year or exhibition, if there was one artist who was involved in multiple exhibitions over different years an employee would have to locate each box and have previous knowledge of which exhibits the artist participated in to find the items they were looking for. Now if an employee wants to find all items relating to an artist they can easily perform a search to retrieve each item relating to that particular person. 

As our first iteration of the database, there are a few functions we would like to add in the future to enhance the user experience, particularly about the non-central functions of the Armory Center. While we focused on the archival aspect of the Armory Center they are an active member of the local community and creating a process on the database to track more of their participation would be an element to further improve our database. Additionally, tracking the location of an item relies on the employees retaining the physical location after use. For example, if an employee extracted a file from a box and placed it inside a new box there is no way to combat physical dislocation. Luckily our database will store the correct location information so in the case this occurs an employee will know where an item should be stored. 
