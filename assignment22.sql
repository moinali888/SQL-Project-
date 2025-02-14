create database RestaurantBooking;
use RestaurantBooking;
create table Customers (customer_id int auto_increment primary key, First_name varchar (20), last_name varchar (20), 
ph_namuber varchar (15), email varchar (20));
Alter Table Customers drop ph_namuber;
Alter table customers add Ph_Number Varchar(20);
Desc Customers;
Insert into Customers (First_name, Last_name, Ph_Number, Email) Values ("Krishna", "Pant", "6352489745", "Krishna@gmail.com");
Insert into Customers (First_name, Last_name, Ph_Number, Email) Values ("Jitendra", "Rawat", "9256857541", "Jitendra@gmail.com");

Select * From Customers;


create table tables (table_id int auto_increment primary key, Table_number int,
capacity int, is_Reserved boolean);
Desc tables;
Insert into Tables (Table_Number, Capacity, is_Reserved) Values (1, 4, False), (2, 6, True), (3, 8, False);

Select * From Tables;


create table Reservations (Reseervation_id int auto_increment primary key, customer_id int, 
table_id int, Reservation_date date, Reservation_time time, Number_of_Guest int,
foreign key (customer_id) references Customers (customer_id),
foreign key (table_id) references tables (table_id));
Desc Reservations;
insert into Reservations (customer_id, table_id, reservation_date, reservation_time, number_of_guest) values
(1, 2, '2024-08-18', '19:00:00', 4),
(2, 3, '2024-08-19', '20:30:00', 6);
Select * From Reservations;


#•  Find all tables and their reservation status:
Select table_id, is_Reserved as Occupied from Tables Where Is_Reserved = True;

#•  List all reservations for a specific date:
Select Reservation_Date, Reservation_Time, Number_of_guest From Reservations Where Reservation_Date = "2024-08-18";

-- •  Find available tables with a certain capacity:
Select Table_Number, Capacity as Available_Tables, Is_Reserved  From Tables  Where Is_Reserved = False;

#•  Get all reservations made by a particular customer:
Select Reseervation_id, Customer_id, Number_of_guest as all_Reservations From Reservations Where Customer_Id = 1;