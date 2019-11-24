create table interviews (
id int(5) not null auto_increment,
duration int(3) not null,
start_date datetime default current_timestamp,
personality set('1','2','3','4','5'),
education set('1','2','3','4','5'),
experience set('1','2','3','4','5'),
recruiter_username varchar(15),
candidate_username varchar(15),
job_id int(5) not null,
comments varchar(250),
primary key(id),
constraint anakoinwnei foreign   key(recruiter_username) references recruiter(username) on delete cascade on update cascade,
constraint kleinetai   foreign   key(candidate_username) references candidate(username) on delete cascade on update cascade,
constraint apaitei     foreign   key(job_id)             references job(id)             on delete cascade on update cascade
)engine=InnoDB;

insert into interviews (
duration ,start_date ,personality,education,experience,recruiter_username,candidate_username,job_id,comments)values
(2   ,          NOW(),        '3',       '2',         '1',     'msmith','cleogeo', 1,"jjj"),
(3   ,          NOW(),        '3',       '5',         '4',    'varcon82','zazahir23',2,"kkk");
  
create table sections (
title varchar(100) not null,
text  varchar(250) not null,
parent varchar(20) default null,
primary key(title)
)engine=InnoDB;


insert into sections values
("Web Programming Systems","Computer Networks",NULL),
("Digital Electronics","Operating Systems","Hardware"),
("Artificial Intelligence","Digital Telecommunications","Hardware");


create table sections_per_company (
company_afm varchar(10) not null, 
section varchar(30)    not null,
primary key(company_afm,section),
constraint exei foreign  key(company_afm) references  etaireia(AFM)   on delete cascade on update cascade,
constraint anhkei foreign  key(section)     references  sections(title) on delete cascade on update cascade
)engine=InnoDB;

create table action (
id int(5) not null auto_increment,
username varchar(20) not null,
actiontype varchar(25) not null,
time datetime default current_timestamp,
tablename varchar(25) not null,
success int(5) not null,
primary key(id)
)engine=InnoDB;

create table logindatabase (
username varchar(30) not null,
password varchar(30) not null,
primary key (username)
)engine=InnoDB;





