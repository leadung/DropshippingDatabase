create table products(
    P_ID char(8) not null,
    P_Name varchar2(50) not null,
    P_Description varchar(100) not null,
    Price number(10) not null,
    primary key(P_ID));

create table customers(
    C_Email varchar2(50) not null,
    C_pass varchar(20) not null,
    C_ID char(8) not null,
    C_Name varchar2(50) not null,
    C_Address varchar2(50) not null,
    Phone number(12) not null,
    primary key(C_ID));

create table seller(
    S_Email varchar(50) not null,
    S_pass varchar(20) not null,
    S_ID char(8) not null,
    S_Name varchar2(50) not null,
    S_Address varchar2(50) not null,
    primary key(S_ID));

create table sell(
    S_ID char(8) not null,
    P_ID char(8) not null,
    sell_date date,
    foreign key(S_ID) references seller(S_ID),
    foreign key(P_ID) references products(P_ID));

create table buy(
    C_ID char(8) not null,
    P_ID char(8) not null,
    buy_date date,
    foreign key(C_ID) references customers(C_ID),
    foreign key(P_ID) references products(P_ID));

create table shippers(
    SH_ID char(8) not null,
    Shipping_detail varchar(50) not null,
    primary key(SH_ID));

create table deliver(
    SH_ID char(8) not null,
    ship_address varchar(50) not null,
    shipping_date date,
    foreign key(SH_ID) references shippers(SH_ID));

create table admin_acc(
    ad_ID char(8) not null,
    ad_username varchar2(50) not null,
    ad_password varchar2(50) not null,
    primary key(ad_ID));

create table admins(
    ad_ID char(8) not null,
    A_Name varchar2(50) not null,
    S_ID char(8),
    foreign key(ad_ID) references admin_acc(ad_ID),
    foreign key(S_ID) references seller(S_ID));

create table admin_cust_acc(
    adcus_ID char(8) not null,
    adcus_username varchar2(50) not null,
    adcus_password varchar2(50) not null,
    primary key(adcus_ID));

create table admin_cust(
    adcus_ID char(8) not null,
    adcus_name varchar2(50) not null,
    C_ID char(8) not null,
    foreign key(adcus_ID) references admin_cust_acc(adcus_ID),
    foreign key(C_ID) references customers(C_ID));