drop table department;
drop table branch;
drop table Admanistation;
drop table Employee;
drop table bonus;
drop table Payment;
drop table Debit;


create table department(
    Dept_Id   NUMBER(8),
    Dept_Name  varchar(20),
    Daddress     varchar(20),
    Dtype    varchar(10),
    primary key(Dept_Id)    
);
insert into department values(10001,'Marketing','dhaka','strategy');
insert into department values(10002,'tecnolgy','khulna','accont');
insert into department values(10003,'production','barishal','operation');




create table branch(
    Branch_Id  Number(8),
    Branch_Name  varchar(20),
    Baddress     varchar(20),
    Contact     Number(20),
    primary key(Branch_Id)
);
insert into branch values(901,'doshani','bagerhat',01713915801);
insert into branch values(902,'Rupsha','khulna',01713915802);
insert into branch values(903,'jhalokati','barishal',01713915803);


create table Admanistation(
    Ad_Id  Number(8),
    AName   varchar(20),
    Email   varchar(30),
    APassword   varchar(15),
    primary key(Ad_Id)
);
insert into Admanistation values(001,'sabbir','sabbir112@gmai.com','sgsad12345');
insert into Admanistation values(002,'shahin','shahin@gmai.com','sgsad12346');
insert into Admanistation values(003,'shehab','shehab@gmai.com','sgsad12347');

create table Employee(
    Em_Id  Number(8),
    EName   varchar(20),
    Dept_Name  varchar(20),
    Branch_Name  varchar(20),
    JoiningDate    date,
    Salary  Number(10),
    BankAcc Number(20),
    primary key(Em_Id)
    );
   

insert into Employee values(100,'abdul','Marketing','doshani','1-mar-2014',15000,147852);
insert into Employee values(101,'mina','sells','royal','2-feb-2015',15001,147853);
insert into Employee values(102,'raju','production','boyra','3-feb-2015',15002,147854);

create table Bonus(
    Bon_Id  Number(8),
    Bon_Name   varchar(20),
    Bon_Amount   Number(10),
    Bdate   date,
    Branch_Name  varchar(20),
    Em_Id Number(8),
    primary key(Bon_Id)
    /*foreign key (Branch_Name) references  branch (Branch_Name) on delete cascade,
    foreign key (Em_Id) references  Employee (Em_Id) on delete cascade*/
    );
insert into Bonus values(123454,'eid bonus',20000,'1-mar-2015','bagerhat doshani',100);
insert into Bonus values(123455,'new-year bonus',10000,'1-jan-2015','Rupsha',101);
insert into Bonus values(123456,' bonus',2000,'20-july-2015','Boyra',102);

create table Debit(
    Deb_Id  Number(8),
    DebName     varchar(20),
    DebAmount Number(10),
    Ddate   date,
    Branch_Name  varchar(20),
    Em_Id  Number(8),
    primary key(Deb_Id)
    /*foreign key (Branch_Name) references  branch (Branch_Name) on delete cascade,
    foreign key (Em_Id) references  Employee (Em_Id) on delete cascade*/
);
insert into Debit values(455,'bus fair',600,'1-mar-2015','bagerhat doshani',100);
insert into Debit values(456,'canteen',2500,'1-jan-2015','Rupsha',101);
insert into Debit values(457,'absent',3000,'20-july-2015','Boyra',102);

create table Payment(
    Pay_Id   Number(8),
    Bon_Amount   Number(6),
    Deb_Amount   Number(6),
    PayDate     date,
    Salary  Number(7),
    BankAcc     varchar(6),
    primary key(Pay_Id)
    /*foreign key (Bon_Amount) references bonus (Bon_Amount) on delete cascade,
    foreign key (Deb_Amount) references Debit (Deb_Amount) on delete cascade,
    foreign key (Salary) references Employee (Salary) on delete cascade,
    foreign key (BankAcc) references Employee (BankAcc) on delete cascade*/
);
insert into Payment values(20000100,600000,700000,'1-mar-2015',1500000,147852);
insert into Payment values(20000101,600001,700001,'2-mar-2015',1500001,147853);
insert into Payment values(20000102,600002,700002,'3-mar-2015',1500002,147854);



