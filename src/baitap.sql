use quanlybanhangs;
create table Orders
(
    OrderId         int(10)        NOT NULL auto_increment primary key,
    OrderDate       datetime       NOT NULL,
    OrderTotalPrice decimal(10, 2) NOT NULL,
    CustomerID      int(10)        NOT NULL,
    foreign key (CustomerID) references customer (customerid)
);
create table Products
(
    ProductId    int(10)        NOT NULL auto_increment primary key,
    ProductName  varchar(255)   NOT NULL,
    ProductPrice decimal(10, 2) NOT NULL
);
create table OrderDetails (
    OrderID int(10) NOT NULL,
    ProductID int(10) NOT NULL,
    OrderQTY decimal(10, 2) NOT NULL,
    foreign key (OrderID) references orders (OrderID),
    foreign key (ProductID) references products (ProductId)
);
insert into customer(customername, customerage)
value ('Xuân Mạnh',23);
UPDATE customer SET CustomerName = 'Minh Ngọc',CustomerAge = '24' where customerid = 1;

insert into customer(customername, customerage)
    value ('Xuân Mạnh',23);

insert into customer(customername, customerage)
    value ('Ngọc Tiến',20);

DELETE from customer where CustomerName = 'Ngọc Tiến';

insert into customer(customername, customerage)
    value ('Ngọc Tiến',20);

SELECT * FROM customer;