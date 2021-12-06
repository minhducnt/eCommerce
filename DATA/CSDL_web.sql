
create database dhs;
use dhs;

create table Account (
	id bigint primary key,
	username char(100) not null,
    passwordHash char(255) not null,
    phone char(10) not null,
    gender bit default 0 not null,
    email char(255),
    shopid bigint,
    birthday date,
    role bit default 0 not null,
    LAST_UPDATE datetime(0),
    avatar char(255)
);

create table Shop (
	id bigint primary key,
    accountId bigint not null,
    street_name char(255) not null,
    city char(150),
    district char(100),
    bank_id	int not null,
    number_product bigint not null,
    status smallint not null default 0,
    LAST_UPDATE datetime(0),
    
    foreign key (accountId) references Account(id)
);

create table Address (
	id bigint primary key,
    phone int(10) not null,
    street_name char(255) not null,
    city char(150),
    district char(100)
);

create table Cart (
	id bigint primary key,
    status		smallint(6),
    accountId 	bigint,
    phone 		int(10) not null,
    street_name char(255) not null,
    city		char(150) not null,
    district 	char(100) not null,
    delivery	char(100) not null,
    content 	text,
    
    foreign key (accountId) references Account(id)
);

create table Product (
	id bigint primary key,
    status smallint, #have permission form admin <1> : have permission <0> : don't have permission <3> had deleted
    shopId bigint not null,
    title char(255) not null,
    quality	smallint not null,
    price	float not null,
    decription	tinytext,
    content	text,
    updatedAt	datetime(0),
    createdAt	datetime(0),
    publishedAt	datetime(0),
    
    foreign key (shopId) references Shop(id)
);

create table Category (
	id bigint primary key,
    categoryName char(255) not null
);

create table Tag (
	id bigint primary key,
    tagName char(255) not null
);

create table Order_detail (
	id	bigint primary key,
    phone 		int(10) not null,
    street_name char(255) not null,
    city		char(150) not null,
    district 	char(100) not null,
    delivery	char(100) not null,
    createdAt	datetime(0) not null,
	shipPrice	float not null,
    totalPrice	float not null,
    updatedAt	datetime(0) not null,
    note	text
);

create table Transistion (
	id bigint primary key,
    customerId bigint,
    orderId bigint,
    states int(1) default 0,
    detailstates char(255),
    payment char(255) not null,
    detailpayment char(255),  #phone or bank id
    updatedAt datetime(0),
    
    foreign key (customerId) references Account(id),
    foreign key (orderId) references Order_Detail(id)
);

create table Delivery (
	id bigint primary key,
    methodName	char(100) not null,
    price	int		#This is shipping cost per km
);

create table Cart_item (
	id bigint primary key,
	cartId	bigint,
    productId	bigint,
    quality	smallint not null,
    price	float not null,
    discount	float default 0 not null,
    amount	int default 1 not null,
    content text,
    
    foreign key (cartId) references Cart(id),
    foreign key (productId) references Product(id)
);

create table Order_item (
	id bigint primary key,
	orderId	bigint,
    productId	bigint,
    quality	smallint not null,
    price	float not null,
    discount	float default 0 not null,
    amount	int default 1 not null,
    content text,
	foreign key (orderId) references Order_detail(id),
    foreign key (productId) references Product(id)
);

create table Tag_product (
	id bigint primary key,
	productId	bigint,
    tagId	bigint,
    
    foreign key (productId) references Product(id),
    foreign key (tagId) references Tag(id)
);

create table Category_product (
	id bigint primary key,
	productId	bigint,
    categoryId	bigint,
    
    foreign key (productId) references Product(id),
    foreign key (categoryId) references Category(id)
);

create table Review (
	id bigint primary key,
    productId	bigint,
    userId	bigint,
    title	char(255) not null,
    rating	smallint not null,
    createdAt	datetime(0) not null,
    content	text,
    
    foreign key (productId) references Product(id),
    foreign key (userId) references Account(id)
);

create table User_address (
	id bigint primary key,
	accountId bigint,
    addressId bigint,
    
    foreign key (accountId) references Account(id),
    foreign key (addressId) references Address(id)
);

create table Shop_delivery (
	id bigint primary key,
	shopId bigint,
    deliveryId bigint,
    
    foreign key (shopId) references Shop(id),
    foreign key (deliveryId) references Delivery(id)
);

create table Trans (
	id bigint primary key,
    accountId bigint,
    orderId bigint,
    
    foreign key (accountId) references Account(id),
    foreign key (orderId) references Order_Detail(id)
)