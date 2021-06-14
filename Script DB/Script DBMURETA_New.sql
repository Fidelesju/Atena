create database MuretaDatabase;	
use MuretaDatabase;

create table Access(
IdAccess int primary key auto_increment,
UserName char(50) not null,
LoginUser char(15) not null unique,
PasswordUser char (15) not null,
AccessUser char (15) not null
);


create table Mureta(
IdMureta int primary key auto_increment,
BoxMureta int (10) not null unique,
TypeMureta char (15) not null,
UserMureta char (50) not null
);

SHOW ENGINE innodb STATUS;
create table Meter(
IdMeter int primary key auto_increment,
BoxMeter int (10) not null unique,
foreign key (BoxMeter) references Mureta(BoxMureta),
ModelMeter char (20) not null,
UserMeter char(50) not null
);

create table Collect(
IdCollect int primary key auto_increment,
NumberMeter int (10) not null,
DateCollect TIMESTAMP DEFAULT current_timestamp,
foreign key (NumberMeter) references Meter(BoxMeter),
value03 decimal (15,4),
value24 decimal (15,4),
value31 decimal (15,4),
value103 decimal (15,4),
value124 decimal (15,4),
value131 decimal (15,4),
Meter text (15) not null,
Alarm text (15),
Obs text (1500),
UserCollect char(50) not null,
DateUpdate TIMESTAMP DEFAULT current_timestamp
);




-- inserting data into the Access table
insert into Access (UserName,LoginUser,PasswordUser,AccessUser)
values('Julia Fideles','fideles','12345','Admin');
-- MURETA DADOS
insert into Mureta (BoxMureta, TypeMureta, UserMUreta) 
values ('1','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta, TypeMureta, UserMUreta) 
values ('2','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta, TypeMureta, UserMUreta) 
values ('3','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('4','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('5','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('6','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('7','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('8','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('9','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('10','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('11','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('12','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('13','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('14','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('15','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('16','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('17','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('18','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('19','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('20','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('21','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('22','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('23','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('24','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('25','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('26','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('27','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('28','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('29','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('30','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('31','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('32','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('33','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('34','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('35','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('36','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('37','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('38','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('39','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('40','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('41','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('42','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('43','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('44','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('45','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('46','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('47','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('48','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('49','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('50','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('51','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('52','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('53','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('54','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('55','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('56','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('57','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('58','Trifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('59','Trifasica', 'Julia Fideles');

insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('72','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('73','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('74','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('75','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('76','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('77','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('78','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('79','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('80','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('81','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('82','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('83','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('84','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('85','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('86','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('87','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('88','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('89','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('90','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('91','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('92','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('93','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('94','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('95','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('96','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('97','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('98','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('99','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('100','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('101','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('102','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('103','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('104','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('105','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('106','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('107','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('108','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('109','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('110','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('111','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('112','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('113','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('114','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('115','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('116','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('117','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('118','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('119','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('120','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('121','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('122','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('123','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('124','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('125','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('126','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('127','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('128','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('129','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('130','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('131','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('132','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('133','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('134','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('135','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('136','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('137','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('138','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('139','Monofasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('140','Monofasica', 'Julia Fideles');

insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('554','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('555','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('556','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('557','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('558','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('559','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('560','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('561','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('562','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('563','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('564','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('565','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('566','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('567','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('568','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('569','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('570','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('571','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('572','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('573','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('574','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('575','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('576','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('577','Bifasica', 'Julia Fideles');
insert into Mureta (BoxMureta,TypeMureta, UserMUreta)
values('578','Bifasica', 'Julia Fideles');


-- DADOS MEDIDOR
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('1','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('2','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('3','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('4','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('5','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('6','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('7','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('8','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('9','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('10','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('11','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('12','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('13','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('14','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('15','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('16','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('17','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('18','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('19','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('20','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('21','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('22','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('23','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('24','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('25','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('26','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('27','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('28','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('29','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('30','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('31','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('32','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('33','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('34','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('35','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('36','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('37','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('38','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('39','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('40','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('41','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('42','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('43','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('44','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('45','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('46','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('47','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('48','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('49','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('50','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('51','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('52','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('53','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('54','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('55','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('56','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('57','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('58','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('59','ZEUS', 'Julia Fideles');

insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('72','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('73','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('74','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('75','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('76','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('77','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('78','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('79','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('80','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('81','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('82','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('83','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('84','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('85','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('86','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('87','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('88','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('89','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('90','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('91','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('92','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('93','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('94','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('95','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('96','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('97','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('98','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('99','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('100','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('101','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('102','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('103','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('104','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('105','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('106','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('107','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('108','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('109','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('110','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('111','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('112','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('113','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('114','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('115','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('116','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('117','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('118','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('119','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('120','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('121','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('122','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('123','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('124','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('125','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('126','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('127','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('128','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('129','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('130','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('131','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('132','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('133','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('134','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('135','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('136','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('137','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('138','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('139','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('140','ZEUS', 'Julia Fideles');

insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('554','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('555','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('556','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('557','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('558','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('559','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('560','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('561','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('562','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('563','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('564','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('565','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('566','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('567','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('568','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('569','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('570','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('571','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('572','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('573','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('574','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('575','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('576','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('577','ZEUS', 'Julia Fideles');
insert into Meter (BoxMeter, ModelMeter, UserMeter) 
values ('578','ZEUS', 'Julia Fideles');



-- DADOS COLETA

-- mono 

insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect ) 
values ('72','1166.68','0.03', '3121.59', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('73','1159.76','0.03', '3121.11', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('74','567','0', '1377', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('75','560','0', '1375', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('76','553','0', '1372', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('77','546','0', '1368', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('78','541','0', '1366', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('79','533','0', '1361', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('80','527','0', '1359', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('81','519','0', '1355', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('82','513','0', '1352', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('83','506','0', '1347', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('84','500','0', '1345', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('85','493','0', '1343', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('86','485','0', '1338', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('87','5418','81', '4115', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('88','5392','91', '4066', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('89','5391','102', '3949', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('90','5370','113', '3835', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('91','4687','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('92','4648','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('93','4633','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('94','2944.1','3.5', '7372.4', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('95','2929.8','3.6', '7216.2', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('96','2421.5','276.1', '2896.9', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('97','2438.5','314.9', '2807.6', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('98','0','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('99','2424.3','392.4', '2624.1', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('100','0','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('101','2352.3','518.6', '2299.8', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('102','2318.4','551.1', '2223.8', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect ) 
values ('103','0','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('104','2485.7','9.4', '4105', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('105','0','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('106','2523.8','68.9', '3902.9', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('107','2452.3','68.2', '3711.9', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('108','2449.4','7.3', '3560.1', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('109','2431.7','7.4', '3429', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('110','2416.6','13.8', '3295.9', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('111','2405.9','11.6', '3198.5', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('112','2399','15.9', '3057.4', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('113','2448.4','30.3', '2985.5', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('114','2393.2','30.2', '2796.7', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('115','2379.1','36', '2661.5', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('116','0','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('117','2354.1','46.3', '2415.6', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('118','2344.6','54.7', '2296.6', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('119','2337.9','62.5', '2184.7', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('120','2329.6','72.9', '2072.4', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('121','1950.2','87.3', '1547.4', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('122','2314.7','108.3', '1822.8', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('123','2303.2','129', '1727', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('124','2294.3','159.2', '1608.2', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('125','2295.8','189.4', '1505.2', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('126','2276.3','223.2', '1379.3', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('127','2261','250.2', '1289.5', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('128','83','0', '43', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('129','2794.9','8.5', '5841.5', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('130','1658','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('131','1641','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('132','54','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('133','1592','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('134','1690','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('135','1662','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('136','0','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('137','1661','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('138','1645','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('139','1704','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('140','324','5', '164', 'ZEUS','Julia Fideles');

-- tri 

insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('1','3406.68','0.08', '3110.53', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('2','3686.68','0.08', '3107.83', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('3','3381.94','0.08', '3104.55', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('4','3374.90','0.08', '33101.97', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('5','1537','0', '1337', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('6','1530','0', '1327', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('7','1524','0', '1315', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('8','1516','0', '1304', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('9','1509','0', '1297', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('10','1502','0', '1293', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('11','1494','0', '1282', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('12','1451','0', '1134', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('13','1445','0', '1124', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('14','1438','0', '1114', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('15','1431','0', '1102', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('16','1424','0.08', '1091', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('17','3201.99','1.23', '2474.81', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('18','3198','1', '2460', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('19','9099','122', '2503', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('20','9076','224', '2415', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('21','9065','258', '2342', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('22','9077','183', '2316', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('23','9013','153', '2275', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('24','12261','16', '11607', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('25','12036.2','0.9', '9588', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('26','12277.8','15.5', '11465.6', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('27','12340.3','16.9', '12074.5', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('28','12304','17', '11747', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('29','12253.2','17.1', '11392.3', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('30','5866','1', '4273', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('31','12415','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('32','12534','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('33','12517','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('34','12465','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('35','12492','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('36','11956','0', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect ) 
values ('37','3848.4','126.3', '159.9', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('38','3868.2','210.7', '257.2', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('39','3808.5','132.8', '271.6', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('40','6862.2','166.7', '4770.4', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect ) 
values ('41','5939','118', '3832', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('42','2867','129', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('43','2856','143', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('44','2855','156', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('45','2850','170', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('46','2844','184', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('47','3538','60', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('48','2830','227', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('49','2824','240', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('50','2822','254', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('51','2812','268', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('52','2811','284', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('53','2808','298', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('54','2799','312', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('55','2799','327', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('56','2795','342', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('57','2788','358', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter ,UserCollect ) 
values ('58','2788','374', '0', 'ZEUS','Julia Fideles');
insert into Collect (NumberMeter, value03, value24,value31, Meter,UserCollect  ) 
values ('59','1233','198', '12', 'ZEUS','Julia Fideles');

                
DELETE from Mureta WHERE BoxMureta =  999 ;
DELETE FROM Meter WHERE BoxMeter = 999;
select Meter.BoxMeter, Meter.ModelMeter, Mureta.TypeMureta from Meter,Mureta;

select * from Access where LoginUser = 'fideles';
-- deletar uma coluna
ALTER TABLE Mureta drop column UserMureta;
   
   -- adicionar uma coluna
alter table Collect ADD DateUpdate TIMESTAMP DEFAULT current_timestamp;
describe Mureta;
select IdCollect, NumberMeter ,DateCollect AS CollectData ,Meter as ModelMeter ,value03 as v3, value24 as v24,value31 as v31, value103 as v103, value124 as v124,value131 as v131,Obs as Comments from Collect order by DateCollect;


SELECT * FROM Collect WHERE DateCollect BETWEEN CURRENT_DATE() - '7'AND CURRENT_DATE();
SELECT * FROM Collect WHERE NumberMeter = '1';
SELECT * FROM Collect WHERE NumberMeter = '1' ;
select * from Meter;
insert into Collect (NumberMeter, Value03, Value24, Value31, Value103, Value124, Value131, Meter, Alarm, Obs,UserCollect)
 values ('1', '10', ' 0.008 ', '11', '0.0','0.0', '0.0', 'ZEUS', 'No', 'No','Julia Fideles');

select value03, DateCollect from Collect where NumberMeter >= 1 and NumberMeter <= 59 ;
