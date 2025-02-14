
Create database Hotel_Complex;
Use Hotel_Complex;	
Create Table Customers(customer_id int Primary Key,
first_name Varchar (20),
last_name Varchar (30),
email Varchar (30),
phone_number Varchar (50));

Create Table Rooms 
(room_number int Primary Key,
room_type Varchar (20),price_per_night int,
availability Varchar (20));
 
 Create Table Bookings (booking_id int Primary Key,
customer_id int, 
room_number int, 
check_in_date Date,
check_out_date Date,
Foreign key (customer_id) references customers (customer_id),
foreign key (Room_number) references Rooms (Room_Number));

Desc bookings;

Insert Into Customers  Values (101, "Mukesh", "Rawat", "Mukesh@gmail", "8745652595");
Insert Into Customers  Values (102, "Suresh", "Saini", "Suresh@gmail", "9745567895");
Insert Into Customers  Values (103, "Kishan", "Kapoor", "Kishan@gmail", "95784564232");
Insert Into Customers  Values (104, "Mahesh", "Kumar", "Mahesh@gmail", "9678451258");
Insert Into Customers  Values (105, "Sunil", "Singh", "Sunil@gmail", "8456789542");
Insert Into Customers  Values (106, "Nilesh", "Gupta", "Nilesh@gmail", "9894235678");
Insert Into Customers  Values (107, "Prakash", "Saxena", "Prakash@gmail", "8745652595");
Insert Into Customers  Values (108, "Harish", "Neta", "Harish@gmail", "7485642562");
Insert Into Customers  Values (109, "Nikil", "Verma", "Nikil@gmail", "9784564231");
Insert Into Customers  Values (110, "Vinod", "Mehta", "Vinod@gmail", "9356487512");

Select * From Customers;
Insert Into Rooms Values (1301, "non AC", 1200, "Available");
Insert Into Rooms Values (1302, "AC", 1800, "Available"), 
(1303, "General", 700, "Occupied"),
(1304, "AC", 1900, "Occupied"),
(1305, "non AC", 1000, "Occupied"),
(1306, "General", 500, "Available"),
(1307, "AC With Food Service", 3000, "Available"),
(1308, "non AC Without Foods", 650, "Occupied"),
(1309, "General With Foods", 900, "Available"),
(1310, "General", 800, "Available");

Insert Into Bookings Values (90001, 101, 1301, '20201015', '20201018');
Insert Into Bookings Values (90002, 102, 1302, '20221206', '20221210');
Insert Into Bookings Values (90003, 103, 1303, '20241107', '20241108');
Insert Into Bookings Values (90004, 104, 1304, '20240101', '20240105');
Insert Into Bookings Values (90005, 105, 1305, '20210815', '20210817');
Insert Into Bookings Values (90006, 106, 1306, '20201001', '20201002');
Insert Into Bookings Values (90007, 107, 1307, '20240410', '20240413');
Insert Into Bookings Values (90008, 108, 1308, '20230220', '20230222');
Insert Into Bookings Values (90009, 109, 1309, '20200521', '20200524');
Insert Into Bookings Values (90010, 110, 1310, '20240608', '20240610');
select * From Bookings;
#1.	Retrieve all customer information:
Select * From Customers;
Select * From Rooms;
Select * From Bookings;

#2.	Retrieve all customer information:
Select * From rooms Where availability = "Available";

#3.	Retrieve bookings for a specific customer:
Select * From Bookings Where Customer_id = 104;

#4.	Retrieve total number of bookings:
Select count(*) as Total_booking From Bookings;

#5.	Retrieve the most expensive room type:
select max(Price_Per_Night)As Mosyt_Expensive_Room From Rooms;
 


#6.	Update room availability after check-out:
Update Rooms Set Availability = "Available" where Room_Number = 1305;

#.	Delete a booking by booking ID:
Delete From Bookings where Booking_id = 108;

#.	Calculate the total revenue generated:
select sum(price_per_night) as total_Revenue From Rooms Where Availability = "occupied";

#.	Find the average price per night for each room type:
select Room_type, avg(Price_Per_Night)From Rooms Group by Room_Type order by room_type;

#0. Retrieve bookings for a specific date range:
select* from bookings Where Check_in_date Between '20200521' and '20200524';

#1. Retrieve the latest check-in date among all bookings:
Select max(Check_in_date) as Leatest_Check From Bookings;

#2. Retrieve customers with multiple bookings
Select Customer_id,Count(*) from bookings as Multiple_booking Group by Customer_id;

#4. Find rooms with prices below a certain threshold:
select * from rooms where price_per_night > 2000;


#15 Retrieve the number of available rooms for each room type:
select room_type,sum(availability) from rooms where availability = "available" group by room_type;

#16 Retrieve the earliest check-in date among all bookings:
SELECT MIN(check_in_date) AS earliest_check_in_date
FROM Bookings;


