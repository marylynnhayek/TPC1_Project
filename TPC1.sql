create table IMMEUBLE(
  ADI varchar(50) NOT NULL,
  NBETAGES int not null,
  DATEC date,
  PROP varchar(50),
  primary key(ADI)
  );
  
create table APPIM(
  ADI varchar(50) NOT NULL,
  NAPR int NOT NULL,
  OCCUP varchar(50),
  TYPE varchar(50),
  SUPER varchar(50),
  ETAGE int,
  foreign key(ADI) references IMMEUBLE(ADI),
  primary key(ADI,NAPR)
  );
  
create table PERSONNES(
  NOM varchar(50) NOT NULL,
  AGE int,
  PROF varchar(50),
  ADR varchar(50),
  NAPR int NOT NULL,
  foreign key(NAPR) references APPIM(NAPR),
  primary key(NOM)
  );
  
create table ECOLE(
  NOMEC varchar(50) NOT NULL,
  ADEC varchar(50),
  NBCLASSES int,
  DIR varchar(50),
  primary key(NOMEC)
  );
  
create table CLASSE(
  NOMEC varchar(50),
  NCL varchar(3),
  MAITRE varchar(50),
  NBEL int,
  foreign key(NOMEC) references ECOLE(NOMEC),
  primary key(NOMEC,NCL)
  );
  
create table ENFANT(
  NOMP varchar(50),
  PRENOM varchar(50),
  AN date,
  NOMEC varchar(50),
  NCL varchar(3),
  foreign key(NCL) references CLASSE(NCL),
  foreign key(NOMEC) references ECOLE(NOMEC),
  primary key(NOMP,PRENOM)
  );