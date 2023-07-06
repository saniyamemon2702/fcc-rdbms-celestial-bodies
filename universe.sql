-- create database
create database universe;

--create tables
create table galaxy();
create table star();
create table planet();
create table moon();

-- adding primary key
alter table galaxy add column galaxy_id serial not null primary key;
alter table star add column star_id serial not null primary key;
alter table planet add column planet_id serial not null primary key;
alter table moon add column moon_id serial not null primary key;

--adding name key
alter table galaxy add column name varchar(30) not null;
alter table star add column name varchar(30) not null;
alter table planet add column name varchar(30) not null;
alter table moon add column name varchar(30) not null;

alter table star add column galaxy_id int not null;
alter table planet add column star_id int not null;
alter table moon add column planet_id int not null;

--adding two int attributes
alter table galaxy add column size int;
alter table galaxy add column no_of_children int;

--adding numeric dt to planet table
alter table planet add column mass numeric(5,3);

--adding text dt to star planet
alter table star add column description text;

--adding boolean dt to planet table
alter table planet add column has_life boolean
alter table planet add column has_moon boolean

--adding foreign key

alter tabel star add foreign key(galaxy_id) references galaxy(galaxy_id);
alter tabel planet add foreign key(star_id) references star(star_id);
alter tabel moon add foreign key(planet_id) references panet(planet_id);

--adding 5th table 
create table celestial_events(celestial_events_id serial not null primary key, name varchar(30) not null, description text, event_date date not null)

--adding unique constarint
alter table galaxy add constraint galaxy_unique unique(name);
alter table star add constraint star_unique unique(name);
alter table planet add constraint planet_unique unique(name);
alter table moon add constraint moon_unique unique(name);
alter table celestial_events add constraint celestial_events_unique unique(name);

--creating extra columns in each table to make it 5
alter table galaxy add column age int;

alter table star add column radius real;

alter table moon add column radius real;
alter table moon add column orbital_period_days int;

 


