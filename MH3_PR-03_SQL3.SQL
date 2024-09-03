show databases;
drop database Students;
create database Students;
use Students;

/*PET TABLE*/
create table pet(name varchar(20),owner varchar(20),species char(10),sex char(1),birth date, death date);
show tables;
describe pet;


/*ACTOR TABLE*/
create table actor_New(actor_id smallint(5),First_name varchar(45),last_name varchar(45),last_update datetime);
show tables;
describe actor_New;

/*FILM TABLE*/
create table film_New(film_id smallint(5),Title varchar(255),Description text,Release_year year,Language_id tinyint, original_language_id tinyint, rental_duration tinyint, rental_rate decimal, length smallint,replacement_cost decimal(5,2),rating enum('G','PG','PG-13','R','NC-17'),special_feature set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes'),last_update datetime);
show tables;
describe film_New;
