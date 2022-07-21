create database Assignment;

create table OrderItem
(
id int not null primary key,
OrderId int,
ProductId int,
UnitPrice decimal(12,2),
Quantity int 
)

create table Product
(
id int not null primary key,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit
)

create table Orders
(
Id int NOT NULL Primary key,
OrderDate datetime NOT NULL,
OrderNumber nvarchar(10),
CustomerId int,
TotalAmount decimal(12,2),
 )

Create table Customer 
(
Id int NOT NULL Primary key,
FirstName varchar(40) NOT NULL,
LastName varchar(40),
City varchar(40),
Country varchar(40),
Phone varchar(40),
 )

create index IndexCustomerName
on Customer(FirstName , LastName)

create index IndexOrderCustomerId
on Orders(CustomerId)

create index IndexOrderOrderDate
on Orders(OrderDate)

create index IndexOrderItemOrderId
on OrderItem(OrderId)

create index IndexOrderItemProductId
on OrderItem(ProductId)

create index IndexProductname
on Product(ProductName)

alter table OrderItem add constraint orderitem_orderid_FK1
foreign key (OrderId) references Orders(Id)

alter table OrderItem add constraint orderitem_productid_FK2
foreign key (ProductId) references Product(Id)

alter table Orders add constraint orders_customerid_FK
foreign key (CustomerId) references Customer(Id)

insert into Customer (Id,FirstName,LastName,City,Country,Phone )
values (10,'ANUJ','KUMAR','RANCHI','INDIA',1234567890);

insert into Customer (Id,FirstName,LastName,City,Country,Phone )
values (11,'BINAY','SHARMA','PATNA','INDIA',1234667800);

insert into Customer (Id,FirstName,LastName,City,Country,Phone )
values (12,'RIYA','SINGH','NOIDA','INDIA',1246347890);

insert into Orders (Id,OrderDate,OrderNumber,CustomerId,TotalAmount )
values (100,'01-02-2022',12345,11,10000);

insert into Orders (Id,OrderDate,OrderNumber,CustomerId,TotalAmount )
values (101,'11-04-2022',13745,10,40000);

insert into Orders (Id,OrderDate,OrderNumber,CustomerId,TotalAmount )
values (102,'05-02-2022',17845,12,35000);

insert into Product(Id,ProductName,UnitPrice,Package,IsDiscontinued)
values(6262,'BED',10000,'CARGO',0)

insert into Product(Id,ProductName,UnitPrice,Package,IsDiscontinued)
values(6263,'SOFA',17500,'CARGO',1)

insert into Product(Id,ProductName,UnitPrice,Package,IsDiscontinued)
values(6264,'CHAIR',5000,'CARGO',NULL)


insert into OrderItem(Id,Orderid,ProductId,UnitPrice,Quantity )
values (500,101,6262,10000,4);

insert into OrderItem(Id,Orderid,ProductId,UnitPrice,Quantity )
values (600,102,6263,17500,2);

insert into OrderItem(Id,Orderid,ProductId,UnitPrice,Quantity )
values (700,100,6264,5000,2);


SELECT * FROM Customer

select Country from Customer
where Country like 'A%' or Country like 'I%'
group by Country

select firstname from Customer
where FirstName like '--i%'