use sys;
create table Netflix (Series_id Int auto_increment Primary Key, Series_Name Varchar(100) Not Null, 
Country_Id Int , Rating Float, Release_Date Varchar (20));  

 Create Table Country_Codes ( Country_Id int, Country_Name Varchar (100), 
 foreign key (Country_Id) References Netflix (Series_Id));
 Desc Country_Codes;
 Insert Into Netflix Values(102, "GULLAK", 4501, 4.0, "20-10-2023");
 insert Into Country_Codes Values(102, "India");
 select * From Netflix;
 Select * From Country_Codes;
 insert into Netflix Values (103, "Indori Ishq", 4502, 4.2, "15-08-2023");
insert into netflix (series_Name, Country_Id, Rating, Release_Date)values ("Hello Mini", 4503, 4.3,"20-02-2021"); 
insert into netflix (series_Name, Country_Id, Rating, Release_Date)values ("mirzapur", 4504, 4.3,"10-05-2022"); 
insert into netflix (series_Name, Country_Id, Rating, Release_Date)values ("apharan", 4505, 4.6,"25-07-2019");
insert Into Netflix (series_Name, Country_Id, Rating, Release_Date) values("kala Ptthar", 4506, 4.4,"21-09-2020");  
Insert Into Netflix (series_Name, Country_Id, Rating, Release_Date) values("Hello Mini2", 4507, 4.6,"20-08-2018");  
insert into Netflix(series_Name, Country_Id, Rating, Release_Date) values("Cirminal", 4508, 4.5,"22-11-2021");  
insert into Netflix(series_Name, Country_Id, Rating, Release_Date) values("She Was Pretty", 4509, 4.2,"20-01-2024");  
insert into Netflix(series_Name, Country_Id, Rating, Release_Date) values("Panchayat Fulera", 4510, 4.8,"25-11-2020");
insert Into country_Codes Values (104, "India");
Select * From Country_Codes;
insert Into country_Codes Values (103, "India");
Insert into Country_Codes Values (104, "Indonesia");
insert into Netflix values (112, "Murder", 4511, 4.9, "20-05-2020");
insert into Netflix values (113, "Murder2", 4512, 4.7, "21-06-2022");
insert into Netflix values (114, "Farzi", 4513, 4.2, "04-02-2023");
insert into Netflix values (115, "Kidnape", 4514, 4.8, "22-06-2017");
insert into Netflix values (116, "7 Khoon Maaf", 4515, 4.1, "16-08-2015");
insert into Netflix values (117, "Shooter", 4516, 4.1, "02-10-2020");
insert into Netflix values (118, "Killer", 4517, 4.5, "20-05-2020");
insert into Netflix values (119, "Firoti", 4518, 4.2, "15-09-2021");
insert into Netflix values (120, "Raid", 4519, 4.9, "16-10-2016");
Select * From Netflix;
Insert Into Netflix Values (121, "The Iron Man", 4520, 4.0, "19-04-2021");
Insert Into Netflix Values (122, "X-man", 4521, 4.2, "14-08-2015"),
(123, "Spiderman", 4522, 4.3, "25-06-2011"),
(124, "mohabbatein", 4523, 4.6, "18-12-2023"),
(125, "FIghting Club", 4524, 4.3, "17-09-2016"),
(126, "The Man", 4525, 4.7, "14-08-2015"),
(127, "Metter", 4526, 4.5, "13-11-2017"),
(128, "Black Money", 4527, 4.6, "17-10-2022"),
(129, "kiran", 4528, 4.9, "25-09-2012"),
(130, "X-man6", 4529, 5.3, "31-12-2010");


insert Into Country_Codes Values (130, "Pakistan");
insert Into Country_Codes Values (129, "Pakistan");
insert Into Country_Codes Values (105, "India");
insert Into Country_Codes Values (106, "Uzbakistan");
insert Into Country_Codes Values (107, "Pakistan"), (108, "afghanistan"), (109, "Australiya"), (110, "USA"), (111, "Pakistan");
select * from Country_Codes;
insert into country_Codes (Country_Id, Country_Name)Values (112, "Bangladesh");
insert into country_Codes ( Country_Name)Values ( "Bangladesh");
insert into country_Codes (Country_Id, Country_Name)Values (113, "Canada");


















