-- Active: 1701106485530@@127.0.0.1@3306@stockmarket
# Bank Table

CREATE TABLE Bank (
    Branch_Name varchar(255) NOT NULL,
    Branch_Code int NOT NULL,
    Branch_Location varchar(255),
    primary key(Branch_Code)
    
);

insert into Bank values('Mcdonalds - Stones River', 0000001, '2180 Old Fort Pkwy, Murfreesboro, TN 37129');
insert into Bank values('South Church Street', 0000002, '2424 S Church St, Murfreesboro, TN 37127');
insert into Bank values('Northfield', 0000003, '1625 Memorial Blvd, Murfreesboro, TN 37129');
insert into Bank values('Middle Tennessee Blvd.', 0000004, '1680 Middle Tennessee Blvd, Murfreesboro, TN 37130');
insert into Bank values('Mid - Tn State University', 0000005, '1301 E Main St, Murfreesboro, TN 37132');
insert into Bank values('Smyrna', 0000006, '589 S Lowry St, Smyrna, TN 37167');
insert into Bank values('Sam Ridley Parkway', 0000007, '460 Sam Ridley Pkwy W, Smyrna, TN 37167');
insert into Bank values('North Smyrna Remote', 0000008, '267 N Lowry St, Smyrna, TN 37167');
insert into Bank values('Lavergne', 0000009, '445 Waldron Rd, Lavergne, TN 37086');
insert into Bank values('Hickory Hollow', 0000010, '5434 Bell Forge Lane E, Antioch, TN 37013');

# Creating Branch Table

CREATE TABLE BRANCH (
    Name varchar(255) NOT NULL,
    ID int NOT NULL,
    City varchar(255),
    ZipCode int NOT NULL,
    Branch_Phone Varchar (15),
    primary key(ID)
    
);

insert into BRANCH values('Mcdonalds - Stones River', 0000001, '2180 Old Fort Pkwy, Murfreesboro, TN', '37129', '+16151028845');
insert into BRANCH values('South Church Street', 0000002, '2424 S Church St, Murfreesboro, TN', '37127', '+16153689845');
insert into BRANCH values('Northfield', 0000003, '1625 Memorial Blvd, Murfreesboro, TN', '37129', '+16153839445');
insert into BRANCH values('Middle Tennessee Blvd.', 0000004, '1680 Middle Tennessee Blvd, Murfreesboro, TN', '37130', '+16153682937');
insert into BRANCH values('Mid - Tn State University', 0000005, '1301 E Main St, Murfreesboro, TN', '37132', '+16154957645');
insert into BRANCH values('Smyrna', 0000006, '589 S Lowry St, Smyrna, TN', '37167', '+16153920445');
insert into BRANCH values('Sam Ridley Parkway', 0000007, '460 Sam Ridley Pkwy W, Smyrna, TN', '37167', '+16153629045');
insert into BRANCH values('North Smyrna Remote', 0000008, '267 N Lowry St, Smyrna, TN', '37167', '+16153620435');
insert into BRANCH values('Lavergne', 0000009, '445 Waldron Rd, Lavergne, TN', '37086', '+16153104845');
insert into BRANCH values('Hickory Hollow', 0000010, '5434 Bell Forge Lane E, Antioch, TN', '37013', '+16153680685');

#Creating Employee Table

CREATE TABLE Employeee (
    Emp_ID int NOT NULL,
    First_Name varchar(255) NOT NULL,
    Last_Name varchar(255) NOT NULL,
    City Varchar(20),
    Contact_Number varchar(15),
	Email Varchar(30),
    Role_Id int,
    B_Code INT,
    primary key(Emp_ID)
    
);

insert into Employeee values('10001', 'James','Robert', 'Murfreesboro','+16153689845','James.Robert@gmail.com',50001,0000001);
insert into Employeee values('10002', 'Michael','Michael', 'Murfreesboro','+16152494845','Michael.Michael@gmail.com',50002,0000001);
insert into Employeee values('10003', 'Matthew','Anthony', 'Smyrna','+16158494345','Matthew.Anthony@gmail.com',50002,0000002);
insert into Employeee values('10004', 'James','Anthony', 'Nashville','+16159601845','James.Anthony@gmail.com',50002,0000002);
insert into Employeee values('10005', 'Barbara','Robert', 'Chattanooga','+16395869845','Barbara.Robert@gmail.com',50003,0000003);
insert into Employeee values('10006', 'Linda','Donald', 'Lavernge','+16153299845','Linda.Donald@gmail.com',50003,0000003);
insert into Employeee values('10007', 'Paul','Steven', 'Chattanooga','+16150980845','Paul.Steven@gmail.com',50004,0000004);
insert into Employeee values('10008', 'Donald','Edward', 'Nashville','+16154859845','Donald.Edward@gmail.com',50004,0000005);
insert into Employeee values('10009', 'James','Brian', 'Lavernge','+16153204445','James.Brian@gmail.com',50005,0000006);
insert into Employeee values('10010', 'Jessica','Timothy', 'Smyrna','+16153699995','Jessica.Timothy@gmail.com',50005,0000007);

# creating Customer

CREATE TABLE Customer (
    Cust_ID int NOT NULL,
    F_Name varchar(255) NOT NULL,
    L_Name varchar(255) NOT NULL,
    City Varchar(20),
    Contact_Number varchar(15),
	Email Varchar(30),
    Date_of_Birth DATE,
    Zip int,
    primary key(Cust_ID)
    
);

insert into Customer values('50001', 'Tyler','Robert', 'Murfreesboro','+16153395545','Tyler.Robert@gmail.com','1998-05-21',37128);
insert into Customer values('50002', 'Brenda','Michael', 'Murfreesboro','+16166664845','Brenda.Michael@gmail.com','1994-09-30',37126);
insert into Customer values('50003', 'Christine','Anthony', 'Smyrna','+16158777745','Christine.Anthony@gmail.com','1939-06-22',37132);
insert into Customer values('50004', 'Adam','Anthony', 'Nashville','+16159688885','Adam.Anthony@gmail.com','1956-01-12',36124);
insert into Customer values('50005', 'Frances','Robert', 'Chattanooga','+16395999945','Frances.Robert@gmail.com','1924-03-19',37134);
insert into Customer values('50006', 'Evelyn','Donald', 'Lavernge','+16153344845','Evelyn.Donald@gmail.com','1955-04-24',37156);
insert into Customer values('50007', 'Rose','Steven', 'Chattanooga','+16150955555','Rose.Steven@gmail.com','1999-05-29',37168);
insert into Customer values('50008', 'Joe','Edward', 'Nashville','+16154111145','Joe.Edward@gmail.com','2000-08-09',37176);
insert into Customer values('50009', 'Ralph','Brian', 'Lavernge','+16153222245','Ralph.Brian@gmail.com','1999-11-11',31245);
insert into Customer values('50010', 'Roy','Timothy', 'Smyrna','+16153622115','Roy.Timothy@gmail.com','1955-12-12',42312);

# Creating Account (Have to add acc_Code column in fur\ture)

CREATE TABLE Account (
    Acc_no int NOT NULL,
    Balance int not null,
    Cust_Name varchar(255) NOT NULL,
    Type varchar(255) NOT NULL,
    Date_Opened DATE,
    Status varchar(15),
	Branch_Code int,
    Customer_Id int,
    primary key(Acc_no)
    
);

insert into Account values('1200000001', 3000,'Tyler Robert', 'Checkings','2000-05-21','Active', 0000001, 50001);
insert into Account values('1200000002', 1289.45,'Brenda Michael', 'Savings','2008-09-30','Active',0000002, 50002);
insert into Account values('1200000003', 4594.5,'Christine Anthony', 'Checkings','2013-06-22','Closed',0000003, 50003);
insert into Account values('1200000004',54545.67, 'Adam Anthony', 'Checkings','2019-01-12','Hold',0000004, 50004);
insert into Account values('1200000005', 12120.43,'Frances Robert', 'Savings','1999-03-19','Active',0000005, 50005);
insert into Account values('1200000006', 3435.56,'Evelyn Donald', 'Savings','2002-04-24','Active',0000006, 50006);
insert into Account values('1200000007', 9897.98,'Rose Steven', 'Chattanooga','2004-05-29','Closed',0000007, 50007);
insert into Account values('1200000008', 867693.00,'Joe Edward', 'Savings','2009-08-09','Active',0000008, 50008);
insert into Account values('1200000009', 9846546.99,'Ralph Brian', 'Savings','2020-11-11','Active',0000009, 50009);
insert into Account values('1200000010', 354545.66,'Roy Timothy', 'Savings','2021-12-12','Active',0000010, 50010);

# Creating Account_Types table

CREATE TABLE Account_Type (
    Acc_Code Varchar(20) NOT NULL,
    Acc_Type Varchar(30) not null,
  
    primary key(Acc_Code)
    
);

insert into Account_Type values('SAV001', 'Savings_Account');
insert into Account_Type values('CHK002', 'Checkings_Account');
insert into Account_Type values('LOA003', 'Loan_Account');
insert into Account_Type values('MMA004', 'MoneyMarket_Account');
insert into Account_Type values('Join001', 'Joint_Account');
insert into Account_Type values('CD001', 'Certificate_of_Deposit_Account');

# Creating Loan Table

CREATE TABLE Loan (
    Loan_No Varchar(20) NOT NULL,
    Loan_Code Varchar(30) not null,
    Loan_Type varchar(40) not null,
    Account_No int,
    Loan_Amount int,
    Due_Amount int,
    ROI int,
    Branch_Code int,
    primary key(Loan_No)
    
);

insert into Loan values('L0000001','PL0001', 'Personal Loan',1200000001,984394.43,89454.54,9,0000001);
insert into Loan values('L0000002','STU0003', 'Student Loans',1200000002,45454.43,89454.54,5,0000002);
insert into Loan values('L0000003','PL0001', 'Personal Loan',1200000003,343545.43,3435.54,9,0000003);
insert into Loan values('L0000004','PL0001', 'Personal Loan',1200000004,23232.43,5654.54,9,0000004);
insert into Loan values('L0000005','STU0003', 'Student Loans',1200000005,24345.43,5657.54,5,0000005);
insert into Loan values('L0000006','PL0001', 'Personal Loan',1200000006,57676.43,89454.54,9,0000006);
insert into Loan values('L0000007','Mort0004', 'MoneyMarket_Account',1200000007,67686.43,89454.54,7,0000007);
insert into Loan values('L0000008','Mort0004', 'MoneyMarket_Account',1200000008,98787.43,89454.54,7,0000008);
insert into Loan values('L0000009','AL0002', 'Auto Loan',1200000009,564545.43,87454.54,8,0000009);
insert into Loan values('L0000010','PL0001', 'Personal Loan',1200000010,676756.43,89454.54,8,0000010);

# create Loan_type (Add Rate of interest field)

CREATE TABLE Loan_Type (
    Loan_Code Varchar(20) NOT NULL,
    Loan_Type Varchar(30) not null,
  
    primary key(Loan_Code)
    
);

insert into Loan_Type values('PL0001', 'Personal Loan');
insert into Loan_Type values('AL0002', 'Auto Loan');
insert into Loan_Type values('STU0003', 'Student Loans');
insert into Loan_Type values('Mort0004', 'MoneyMarket_Account');

# Creating Transactions Table

CREATE TABLE Transactions (
    Trans_ID Varchar(20) NOT NULL,
    ACC_No int not null,
    Cust_ID int not null,
    WithdrawlAMT int,
    withdrawl_time  DATETIME,
    Emp_ID int,
    primary key(Trans_ID)
    
);

insert into Transactions values('Tid0001','1200000001', '50001',230,'2022-09-22 23:59:59',10001);
insert into Transactions values('Tid0002','1200000002', '50002',20,'2022-02-09 14:32:59',10002);
insert into Transactions values('Tid0003','1200000003', '50003',35,'2022-03-01 12:21:59',10003);
insert into Transactions values('Tid0004','1200000004', '50004',60,'2022-03-30 13:32:59',10002);
insert into Transactions values('Tid0005','1200000005', '50005',100,'2022-04-21 09:43:59',10001);
insert into Transactions values('Tid0006','1200000005', '50006',300,'2022-04-19 10:34:59',10005);
insert into Transactions values('Tid0007','1200000006', '50007',90,'2022-05-11 22:12:59',10007);
insert into Transactions values('Tid0008','1200000007', '50008',100,'2022-06-02 21:55:59',10008);
insert into Transactions values('Tid0009','1200000008', '50009',120,'2022-07-12 16:32:59',10006);
insert into Transactions values('Tid0010','1200000009', '50010',300,'2022-09-13 19:34:59',10006);



