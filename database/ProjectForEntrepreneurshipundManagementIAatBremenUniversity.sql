create database ProjectForEntrepreneurshipundManagementIAatBremenUniversity
use ProjectForEntrepreneurshipundManagementIAatBremenUniversity

drop database ProjectForEntrepreneurshipundManagementIAatBremenUniversity2

CREATE TABLE subscribe_tb(
email nvarchar(50) primary key
)

CREATE TABLE messagefrommvp_tb(
personid int primary key,
firstandlastname nvarchar(50),
phone  nvarchar(50),
[rank]  nvarchar (255) NOT NULL CHECK ([rank] IN('important', 'not important','very important')) DEFAULT 'important',
email nvarchar(50),
usermessage TEXT
)


CREATE TABLE registerationaccount_tb(
personid int primary key,
firstandlastname nvarchar(50),
email nvarchar(50),
userpassword nvarchar(50),
checkpassword BIT
)

CREATE TABLE account_tb(
personid int FOREIGN KEY (personid) REFERENCES registerationaccount_tb(personid),
bloodtype nvarchar(10),
age int,
firstname nvarchar(50),
lastname nvarchar(50),
useraddress  nvarchar(225),
city nvarchar(50),
country nvarchar(50),
postalcode nvarchar(10),
allergies TEXT,
chronicillness TEXT,
aboutme TEXT,
title nvarchar(20),
university nvarchar(50),
shortaboutme nvarchar(50),
qrcode image
)
