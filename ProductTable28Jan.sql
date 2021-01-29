use Assignment28Jan
--1. create table
create table Product(
ProductId int not null primary key identity(1,1),
Descriptions varchar(30) not null UNIQUE,
SetQty int not null 
CHECK(SetQty=1 or setqty=5 or setqty=10)
default 1,
Rate decimal(10,2)
Check (Rate >= 51 and rate <=5000)
)

--2 Insert 20 records
insert into Product values('Amul Ghee',1,360.35)
insert into Product values('Dettol Liquid',5,52.32)
insert into Product values('Gillete Guard',5,63.25)
insert into Product values('Dove Soap',10,55.39)
insert into Product values('Colgate Max fresh',5,70)
insert into Product values('Himalya Face Wash',5,80)
insert into Product values('Axe Deo',5,110.70)
insert into Product values('Ashirwad Aata',1,335.85)
insert into Product values('Fortune Refined',5,90.85)
insert into Product values('Chocos',10,55.36)
insert into Product values('Maggie',10,65)
insert into Product values('Horlicks',1,190.45)
insert into Product values('Lizol',5,97)
insert into Product values('Ariel Matic',5,80.65)
insert into Product values('Himalaya Body lotion',1,205)
insert into Product values('Himalaya Anti Hairfall Oil',1,175)
insert into Product values('Cadbury Oreo',10,60.35)
insert into Product values('Apple Cider Vinegar',1,318)
insert into Product values('Patanjali Chyawanprash',1,280)
insert into Product values('Patanjali Badam Pak ',5,85.25)

--3 Update all rates with 10% hike
Update Product set rate = rate *1.1
from Product

--4 Delete record 
delete from product
where ProductId=16

--5 Alter the table with margin code
alter table product
add MarginCode char(1)
check (MarginCode='A' or MarginCode='B' or MarginCode=null)

--6 update few records
update Product
set MarginCode='A'
where productid < 7 

update product
set MarginCode = 'B'
where ProductId > 14

--7 Update all setqty to 10
update product
set SetQty = 10
where margincode = 'A'

update product
set setqty = 5
where margincode = 'B' and setqty=1

select * from Product
