Use Databased;
Create Table Regions (Region_id int primary Key, Region_Name Varchar (35));
Desc Regions ;
Insert Into Regions Values (201, "Asia"),(202, "Africa"),(203, "America"),(204, "Europ"),(205, "Australia"),
(206, "North America"),(207, "South America"),(208, "North Asia"),(209, "East And Africa"),(210, "South Asia");

Select * From Regions;

Create Table Countries (Country_Id int Primary Key, Country_Name varchar (30), Region_Id int,
foreign key (Region_Id) references Regions (Region_id));
Desc Countries;
Insert Into Countries Values (3011, "India", 201), (3012, "Argentina", 201), (3013, "Australia", 203),
(3014, "England", 204), (3015, "Pakistan", 205), (3016, "Afghanistan", 206), (3017, "Uzbekistan", 207), 
(3018, "Oman", 208), (3019, "Saudi Arbia", 209), (3020, "Canada", 210);

Select * From Countries; 


Create Table Locations (Location_id int Primary Key , Street_Address Varchar (35), Postal_Code Int,
City Varchar (15), State_Province Varchar (30), Country_id int,
foreign key (Country_id) references Countries (Country_Id));
Desc Locations;
Insert Into Locations Values (1001, "Sidkul Parle Chowk", 4578, "Rudrapur", "Uttarakhand", 3011),
(1002, "Sidkul Britannia Chowk", 2054, "Rudrapur", "Uttarakhand", 3012),
(1003, "Sidkul Sector 62", 2540, "Noida", "Uttarpradesh", 3013),
(1004, "Sidkul Sector 63", 3689, "Greater Noida", "Uttarpradesh", 3014),
(1005, "Sidkul Sector 11", 6389, "Rudrapur", "Uttarakhand", 3015),
(1006, "Sidkul Sugar Fectory", 5674, "Sitarganj", "Uttarakhand", 3016),
(1007, "Sidkul Office 1", 5052, "Rudrapur", "Uttarakhand", 3017),
(1008, "Sidkul sirtma Chauraha", 9054, "Sitarganj", "Uttarakhand", 3018),
(1009, "Sidkul Railway Crossing", 3034, "Kashipur", "Uttarakhand", 3019),
(1010, "Sidkul Main Chauraha", 2378, "Sitarganj", "Uttarakhand", 3020);

Select * From locations;

Create Table Jobs (Job_id Int Primary Key, Job_Title Varchar (20), Min_Salary Float, Max_Salary Float);
Desc jobs;
Insert Into Jobs Values (161, "As a Supervision", 20000.500, 25000),
(162, "As a Operator", 10000.500, 12000),
(163, "As a Manager", 60000.200, 80000),
(164, "As a Mfg. Head", 120000.100, 150000),
(165, "As a Shop Head", 80000.500, 100000),
(166, "As a Qty Head", 50000.500, 70000),
(167, "As a Sweeper", 10000.500, 13000),
(168, "As a TL", 40000.300, 60000),
(169, "As a Pro. Head", 75000.800, 90000),
(170, "As a Plant Head", 250000.500, 400000);

Select * From Jobs;

Create Table Employees (Employee_id int Primary Key, First_Name Varchar (20), Last_Name Varchar (20),
Email Varchar (30), Ph_Number Varchar (20),Hire_Date Date, Job_Id Int, Salary Float, 
Manager_Id int, Department_id Int,
Foreign Key (Job_Id) References Jobs (Job_Id)); 
Desc Employees;

Insert Into Employees Values (4501, "Akash", "Gupta", "Akash@gmail.com", 9874524587, "20221205", 161, 40000, 5021, 6001);
Insert Into Employees Values (4502, "Vishesh", "Mehra", "Vishesh@gmail.com", 9978456245, "20231008", 162, 60000.20, 5022, 6002);
Insert Into Employees Values (4503, "Vikas", "Rathore", "Vikas@gmail.com", 9245687945, "20201110", 163, 50000, 5023, 6003);
Insert Into Employees Values (4504, "Mahessh", "Sharma", "Mahesh@gmail.com", 6385789542, "20210804", 164, 70000, 5024, 6004);
Insert Into Employees Values (4505, "Suresh", "Kaushal", "Sureshsh@gmail.com", 7489568742, "20201002", 165, 40000.50, 5025, 6005);
Insert Into Employees Values (4506, "Shakeel", "Ansari", "Shakeel@gmail.com", 9875486235, "20220405", 166, 30000.20, 5026, 6006),
(4507, "Anam", "Khan", "Anam@gmail.com", 6987458562, "20210610", 167, 85000.20, 5027, 6007),
(4508, "Moin", "Ali", "Moinali@gmail.com", 9875486235, "20230505", 168, 90000.80, 5028, 6008),
(4509, "Suneel", "Petwal", "Suneel@gmail.com", 7845658942, "20220405", 169, 20000.20, 5029, 6009),
(4510, "Piyush", "Joshi", "Piyush@gmail.com", 6345698712, "20211106", 170, 30000.20, 5030, 6010);

Select * From Employees;

Create Table Dependents (Dependent_id Int primary Key, First_Name Varchar (20), Last_Name Varchar (20), 
Relationship Varchar (30), Employee_ID int,
foreign key (Employee_Id) References Employees (Employee_Id));
Desc Dependents;
Insert Into dependents Values (1111, "Vishal", "Saxena", "Child", 4501),(1112, "Kamal", "Kishor", "Child", 4502),
(1113, "Vipin", "Arora", "Child", 4503),(1114, "Nitin", "Sharma", "Child", 4504), (1115, "Shubham", "Verma", "Child", 4505),
(1116, "Brijesh", "Rajpoot", "Child", 4506), (1117, "Kunal", "Shrivastav", "Child", 4507), (1118, "Pankaj", "Singh", "Child", 4508),
(1119, "Nikil", "Gatkari", "Child", 4509), (1120, "Raveen", "Kapoor", "Child", 4510);

Select * From Dependents;


Create Table Departments (Department_ID int Primary Key , Department_Name Varchar (20), Location_Id int,
Foreign Key (Location_Id) references Locations (Location_Id));
Desc Departments;

Insert Into Departments Values (1531, "Production", 1001), (1532, "Quality", 1002), (1533, "Packing", 1003),
(1534, "Maintenence", 1004), (1535, "Tooling", 1005), (1536, "Dispetch", 1006), (1537, "Loading", 1007),
(1538, "Unloading", 1008), (1539, "Testing", 1009), (1540, "Shifting", 1010);

Select * From Departments;