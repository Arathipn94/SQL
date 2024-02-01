/* ------------------HEALTH CARE DB---------------*/ 
-- SQL PROJECT BY ARATHI PILLAI DSA/T307

create database hospital; -- DATABASE CREATED
use hospital;
# PATIENT TABLE
 create table patient(
 patient_id int primary key not null,  -- USE OF PRIMARY KEY AND NOT NULL CONSTRAINTS
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 gender char(10),
 date_of_birth date,
 address varchar(50),
 phone_number numeric,
 email_id varchar(100));
desc patient; -- FOR VIEWING PATIENT TABLE STRUCTURE 
 -- INSERTING VALUES INSIDE TABLE PATIENT
insert into patient
values("101","John","dsouza","Male","1975-10-18","Thane",9123456789,"john@gmail.com");

insert into patient
values("102","Rudra","Singh","Male","1955-05-21","Thane",9876456789,"rudra@gmail.com"),
("103","Rahul","Mehta","Male","1980-11-28","Mulund",7123456789,"rahul@gmail.com"),
("104","Shweta","Shah","Female","1995-08-01","Vashi",8123456789,"shweta@gmail.com"),
("105","Mayuri","Patel","Female","1979-02-18","Dombivli",9987456123,"mayurip@gmail.com"),
("106","Faizal","Khan","Male","1978-11-08","Ambernath",9245678989,"khanfaizal@gmail.com"),
("107","aishwarya","Pillai","Female","1981-12-29","Badlapur",8794561232,"aishwarya@gmail.com"),
("108","Savita","Patil","Female","1985-01-07","Mumbai",7589461230,"savita@gmail.com"),
("109","Gunjan","Dhum","Female","1999-08-03","Pune",9870235465,"gunjan@gmail.com"),
("110","Priyanka","Jadhav","Female","2000-04-05","Ambernath",7589456789,"priyanka@gmail.com"),
("111","Mahesh","Vekhande","Male","2003-09-11","Kalyan",9923458789,"mahesh@gmail.com"),
("112","Rajashree","Patil","Female","1968-08-25","Thakurli",8975648923,"rajashree@gmail.com"),
("113","Bhupendra","Patil","Male","1989-02-18","Vikhroli",7985463210,"bhupendra@gmail.com"),
("114","Jaideep","Hazare","Male","1972-07-16","Thane",9895456789,"jaideep@gmail.com"),
("115","Rahul","Choudhry","Male","1955-09-05","Badlapur",8321579456,"rahul@gmail.com"),
("116","Malti","Yadav","Male","1950-09-09","Thane",8957633789,"malti@gmail.com"),
("117","Jeetu","Kamra","Male","1952-03-20","Thane",9223456789,"jeetu@gmail.com"),
("118","Mohan","Nair","Male","1975-10-28","Vashi",9987654321,"mohan@gmail.com"),
("119","Aquib","Khan","Male","1970-11-07","Badlapur",7223456789,"aquib@gmail.com"),
("120","Peter","Sebastin","Male","1995-04-05","Mumbai",8323456789,"peter@gmail.com"),
("121","Chandan","Yadav","Male","1985-01-27","Pune",7823456789,"chandan@gmail.com"),
("122","Kiron","Kher","Female","1988-09-07","Ulhasnagar",9123987789,"kiron@gmail.com"),
("123","Babita","Reddy","Female","1994-12-04","Bangalore",9123459898,"babita@gmail.com"),
("124","Mitali","Sood","Female","1987-05-04","Delhi",9435956789,"mitali@gmail.com"),
("125","Sid","Shetty","Male","1995-06-14","Karnataka",8059456789,"sid@gmail.com"),
("126","Ritu","Nair","Female","1990-12-08","Kerala",7587456789,"ritu@gmail.com"),
("127","Princy","Varghese","Female","1994-05-25","Ghatkopar",9123451234,"princy@gmail.com"),
("128","Sherin","Thomas","Male","1993-01-17","Kurla",9123348659,"sherin@gmail.com"),
("129","Abhishek","Agarwal","Male","1945-04-19","Byculla",9123897441,"abhishek@gmail.com"),
("130","Sayali","Chavan","Female","1935-08-23","Mumbai",9987556789,"sayali@gmail.com");

select * from patients;
-- DOCTOR TABLE CREATION
create table doctors(
Doc_id varchar(50) primary key not null,
first_name varchar(50),
last_name varchar(50),
speciality varchar(50),
phone_number numeric,
email_id varchar(50)
);
desc doctors;
insert into doctors
values("A01","Manoj","Mahajan","Heart","8976524430","dr.manoj@gmail.com");


insert into doctors
values("A02","Abhishek","Mahajan","ORTHOPEADIC","9554542150","dr.abhishek@gmail.com"),
("A03","Pramod","Panicker","ENT","9354456565","dr.pramod@gmail.com"),
("A04","Gayatri","Sawant","SPINE","8874152626","dr.gayatri@gmail.com"),
("A05","Mahesh","Rathod","NUERO","7958522530","dr.mahesh@gmail.com"),
("A06","Albert","Pinto","Kidney","7814535623","dr.albert@gmail.com"),
("A07","Revathy","Jathar","Gynac","9365852322","dr.revathy@gmail.com"),
("A08","Santosh","Reddy","General_physician","8256325635","dr.santosh@gmail.com");
select * from doctors;

-- APPOINTMENT TABLE CREATED
create table appointment(
appointment_id int primary key auto_increment,
patient_id int, foreign key(patient_id) references patients(patient_id), -- USE OF FOREIGN KEY: TO CREATE LINK BETWEEN TWO TABLES
Doc_id varchar(50), foreign key(Doc_id) references doctors(Doc_id),
status varchar(50)
);

select * from appointment;
insert into appointment(patient_id,Doc_id,status)
values(101,'A01','scheduled'),
(103,'A02','scheduled'),
(105,'A06','scheduled'),
(107,'A04','cancelled'),
(109,'A04','scheduled'),
(102,'A05','scheduled'),
(104,'A07','in progress'),
(106,'A03','scheduled'),
(108,'A02','in progress'),
(120,'A04','scheduled'),
(125,'A01','scheduled'),
(129,'A06','in progress'),
(111,'A01','scheduled'),
(115,'A07','in progress'),
(116,'A07','scheduled'),
(118,'A02','scheduled'),
(101,'A04','scheduled');
select * from appointment;


insert into appointment(patient_id,Doc_id,status)
values(117,'A05','scheduled'),
(121,'A01','scheduled'),
(130,'A04','scheduled');
-- nurse table
create table nurse (
employee_id varchar(20) unique , 
name varchar(50),
gender varchar(10),
position varchar(50));

insert into nurse
values("N01","Jayanti Mudliar","female","Nurse Practioner"),
("N02","Shweta Tiwari","Female","Head Nurse"),
("N03","Dereck Pinto","Male","Head Nurse"),
("N04","Suman Arora ","female","Nurse Practioner"),
("N05","Jaisey John","female","Nursing Assistant"),
("N06","Divya Menon","female","Nursing Assistant"),
("N07","Ganesh Rathod","Male","Nursing Assistant"),
("N08","Sayali Patil","female","Nursing Assistant"),
("N09","Apeksha Yadav","female","Nursing Assistant"),
("N10","Renuka Iyer","female","Nursing Assistant"),
("N11","Jaison Verghese","Male","Nurse Practioner"),
("N12","Jyoti Reddy","female","Nurse Practioner"),
("N13","Parvati Nambiar","female","Nurse Practioner"),
("N14","Nancy Thomas","female","intern"),
("N15","Deepak Singh","Male","intern"),
("N16","Veena Vishwanath","female","intern");
select * from  nurse ;
create table block(
block_floor varchar(20),
block_code varchar(20));

insert into block
values("first floor","F101"),
("first floor","F102"),
("first floor","F103"),
("first floor","F104"),
("first floor","F105"),
("first floor","F106"),
("first floor","F107"),
("first floor","F108"),
("first floor","F109"),
("first floor","F110"),
("second floor","F111"),
("second floor","F112"),
("second floor","F113"),
("second floor","F114"),
("second floor","F115"),
("second floor","F116"),
("second floor","F117"),
("second floor","F118"),
("second floor","F119"),
("second floor","F120"),
("third floor","F121"),
("third floor","F122"),
("third floor","F123"),
("third floor","F124"),
("third floor","F125"),
("third floor","F126"),
("third floor","F127"),
("third floor","F128"),
("third floor","F129"),
("third floor","F130");
select * from block;

-- CHANGING OR UPDATING COLUMN VALUES
update appointment
set status="completed"
where patient_id in (101,109,106,111,118,117,130,102,105,125);

-- TABLE MEDICAL_RECORD CREATION
create table medical_record(
record_id int primary key,
patient_id int, foreign key(patient_id) references patients(patient_id),
Doc_id varchar(50), foreign key(Doc_id) references doctors(Doc_id),
record_date date,
diagnosis varchar(500),
treatment varchar(500)
);             
desc medical_record;
insert into medical_record
values(1001,101,"A01","2023-09-04","block in left artery","angiography with stent");    
insert into medical_record
values(1002,109,"A04","2023-09-03","herniated disc","spinal surgery"),
(1003,106,"A03","2023-09-04","ear infection","antibiotics for 5 days"),
(1004,111,"A01","2023-09-03","arrhythmia","heart MRI"),
(1005,118,"A02","2023-09-04","broken femur","surgery"),
(1006,117,"A05","2023-09-03","alzeimers","spinal surgery"),
(1007,130,"A04","2023-09-03","sciatica","pain killers along withmuscle relaxers"),
(1008,105,"A06","2023-09-04","kidney stone","medications"),
(1009,102,"A05","2023-09-03","epilepsy","pain killers along withmuscle relaxers"),
(1010,125,"A01","2023-09-03","cardiomyopathy","medicines");
select * from medical_record;



-- MEDICATION TABLE CREATION
create table medication(
medication_id varchar(10) primary key,
name varchar(50),
description varchar(100)
);

insert into medication
values("MWBS001","IBUPROFEN","anti-inflammatory drug to relieve pain"),
("HBHS002","
Acetaminophen","Paracetamol is a non-opioid analgesic and antipyretic agent"),
("LVSB003"," Nifedipine"," for treating kidney stones"),
("KUTS004","Donepezil","To treat all stages of Alzheimer's disease"),
("ZTSK005","Tylenol","pain killer"),
("POSV006","Levetiracetam","anti-seizure drugs ");
select * from medication;
-- PRESCRIPTION TABLE CREATION
create table prescription(
prescription_id int primary key,
record_id int, foreign key(record_id) references medical_record(record_id),
medication_id varchar(10), foreign key(medication_id) references medication(medication_id),
dosage varchar(50),
instructions varchar(100)
);
desc prescription;



-- CHANGING TABLE CONSTRAINTS

insert into prescription
values("P001",1001,"HBHS002","1-0-1","1 tablet each breakfast and dinner after food"),
("P002",1002,"MWBS001","1-1-1","1 tablet each breakfast lunch and dinner after food"),
("P003",1003,"ZTSK005","1-0-1","1 tablet each breakfast and dinner after food"),
("P004",1004,"MWBS001","1-1-1","1 tablet each breakfast lunch and dinner after food"),
("P005",1005,"ZTSK005","1-0-1","1 tablet each breakfast and dinner after food"),
("P006",1006,"KUTS004","1-1-1","1 tablet each breakfast lunch and dinner after food"),
("P007",1007,"HBHS002","1-1-1","1 tablet each breakfast lunch and dinner after food"),
("P008",1008,"LVSB003","1-1-1","1 tablet each breakfast lunch and dinner after food"),
("P009",1009,"POSV006","1-0-1","1 tablet each breakfast dinner after food"),
("P010",1010,"LVSB003","1-0-1","1 tablet each breakfast lunch and dinner after food");
SELECT * FROM PRESCRIPTION;

/* -------------SQL QUERIES------------*/
#DDL 
-- 1.	CREATE TABLES
-- a.	patients
create table patient(
 patient_id int primary key not null,  -- USE OF PRIMARY KEY AND NOT NULL CONSTRAINTS
 first_name varchar(50) not null,
 last_name varchar(50) not null,
 gender char(10),
 date_of_birth date,
 address varchar(50),
 phone_number numeric,
 email_id varchar(100));
-- b.	doctor
create table doctors(
Doc_id varchar(50) primary key not null,
first_name varchar(50),
last_name varchar(50),
speciality varchar(50),
phone_number numeric,
email_id varchar(50)
);
-- c.	appointment
create table appointment(
appointment_id int primary key auto_increment,
patient_id int, foreign key(patient_id) references patients(patient_id),
Doc_id varchar(50), foreign key(Doc_id) references doctors(Doc_id),
status varchar(50)
);
-- d.	nurse
create table nurse (
employee_id varchar(20) unique , 
name varchar(50),
gender varchar(10),
position varchar(50));
-- e.	block
create table block(
block_floor varchar(20),
block_code varchar(20));
-- f.	medical record
 create table medical_record(
record_id int primary key,
patient_id int, foreign key(patient_id) references patients(patient_id),
Doc_id varchar(50), foreign key(Doc_id) references doctors(Doc_id),
record_date date,
diagnosis varchar(500),
treatment varchar(500)
);          
-- g.	medication
create table medication(
medication_id varchar(10) primary key,
name varchar(50),
description varchar(100)
);
-- h.Prescription
create table prescription(
prescription_id int primary key,
record_id int, foreign key(record_id) references medical_record(record_id),
medication_id varchar(10), foreign key(medication_id) references medication(medication_id),
dosage varchar(50),
instructions varchar(100)
);
-- 2.	WRITE A QUERY TO DISPLAY THE STRUCTURE OF PATIENTS TABLE
    desc patients;
          -- OR
    describe patients;
-- 3.	 CHANGE THE COLUMN NAME OF MEDICATION ID TO MED_ID
alter table medications
rename column medication_id to med_id;
-- 4.	CHANGE  TABLE NAME OF PATIENT TO PATIENTS
            alter table patient
             rename patients;
-- 5.	 CHANGE THE DATA TYPE OF BLOCK FLOOR FROM INT TO VARCHAR
alter table block
modify block_floor varchar(20) primary key;
-- 6.	 CHANGE THE DATA TYPE OF PRESCRIPTION FROM INT TO VARCHAR
alter table prescription
modify column prescription_id varchar(10);
-- 7.	ADD THE COLUMN BLOCK_ID IN FIRST COLUMN IN BLOCK TABLE
     alter table block
     add column block_id int first;
-- 8.	ADD  COLUMN BLOCK_CODE IN PATIENT TABLE
     alter table patients
    add column block_code varchar(20);
-- 9.	Add column patient name in appointment table after patient_id
alter  table appointment 
add column patient_name varchar(50) after patient_id;
-- 10.	Truncate block table
truncate table block;

#DML 
-- 11.	Write syntax to insert values/attributes in a particular table
/* a.	Approach 1
        insert into tablename(col1,col2,col3,.....,coln)
        values(val1,val2,val3,.....,valn);
 b.	Approach 2
insert into tablename
values(val1,val2,val3,.....,valn);             */

-- 12.	UPDATE  COLUMN SPECIALITY  TO HEART WHERE DOC_ID IS A01 IN DOCTOR TABLE
update doctors 
set speciality="HEART"
where Doc_id="A01";
-- 13.	UPDATE COLUMN STATUS TO COMPLETED IN PATIENT IDS  101,109,106,111,118,117,130,102,105,125.
update appointment
set status="completed"
where patient_id in (101,109,106,111,118,117,130,102,105,125);
-- 14.	UPDATE COLUMN TREATMENT  TO MEDICATIONS IN MEDICAL_RECORD TABLE WHERE RECORD_ID IS 1009.
update medical_record 
set treatment="medications"
where record_id=1009;  
-- 15.	ADD A NEW PATIENT IN PATIENTS TABLE
insert into patients
values("131","RAJ","SAWANT","Male","1979-05-09","Thane",9123467890,"raj@gmail.com");
-- 16.	INSERT A NEW MEDICINE IN THE MEDICATION TABLE
insert into medication
values("MWBS010","VOLINI GEL","anti-pain topical medication to relieve pain");

-- 17.	Delete entire block table
delete from block; 
-- 18.	Delete record of F101 from block table
delete from block
where block_code=”F101”;
-- 19.	CHANGE THE NAME OF DOCTOR ABHISHEK MAHAJAN TO ABHIRAJ MAHAJAN
update doctors
set First_name=”Abhiraj” 
where doc_id=”A02”;
-- 20.	Update first_name,last_name and address  with patient_id=104. New record are as follows
-- First_name as surya, last_name as singh ,  address as panvel 

      update patients
       set first_name=”surya”, last_name=”singh”,address=”panvel”
       where patient_id=104;
-- DQL
-- 21.	 DISPLAY THE LIST OF APPOINTMENT THAT IS SCHEDULED
select * from appointment
where status ="scheduled";

-- 22.	 RETRIEVE ALL DETAILS OF PATIENTS AND THEIR MEDICAL RECORD
select *
from patients p
left join medical_record m
on p.patient_id=m.patient_id
union all
select * 
from patients p
right join medical_record m
on p.patient_id=m.patient_id;

-- 23.	 generate a list of scheduled appointment for specific doctor
select *
from appointment
where status="scheduled" and doc_id="A01";
-- 5.sql query to count no of male patients
select count(distinct patient_id) as "no.of patients taken at least one appointment"
from patients;

-- 24.	 display all details of patients who are senior citizen

select *,
floor(datediff(curdate(), date_of_birth)/365) as age 
from patients 
where date_add(Date_of_birth, interval 60 year)<=curdate();


-- 25.	 sql query to find the details of all FEMALE PATIENT 
SELECT *
FROM PATIENTS
WHERE GENDER="FEMALE";
-- 26.	 display all patients who is treating for heart related problems
select * from patients
where patient_id in (select patient_id from appointment
                       where Doc_id="A01");

-- 27.	display record of nurse in higher postion
select * from nurse
where position="head nurse";
 
 -- 28. distinct
select distinct instructions from prescription;

-- 29.	 PATIENTS LIVING IN Maharashtra
select * from patients
where address not in("delhi","bangalore","kerala","karnataka");

-- 30.display all the records of all the columns of patients living in mumbai or thane or ambernath
select *
from patients
where address='mumbai' or address='thane' or address='ambernath';

select *
from patients
where address in ('mumbai','thane','ambernath');

#31.display all the records of all the columns of employees not living in mumbai or thane or ambernath
select *
from patients
where not (address='mumbai' or address='thane' or address='ambernath');

select *
from patients
where address not in ('mumbai','thane','ambernath');


-- 32./* LIKE Operator : Filtering purpose */
select * from doctors;

select * from doctors where first_name like 'S%';-- starts with s
select * from nurse where name like '%e';-- ends with a
select * from medication where name like 'd%l';-- starts with j ends with d
select * from doctors where last_name like '_a%';-- second alphabet is a
select * from patients where last_name like '%a%';-- a is anywhere

select * from emp where name not like 's%'; -- name not starts with s

-- 33/* LIMIT CLAUSE */

select * from appointment;-- all records

select * from appointment limit 5;-- first 5 records

-- 34 /* Display all the records of patients from 5 to 10 */
select *
from patients
where patient_id>=105 and patient_id<=110;

select *
from patients
where patient_id between 105 and 110;
select *
from patients limit 10,20;-- start is exclusive

-- 35. display all the records of all the columns from patients table in increasing order of age
select *
from patients
order by date_of_birth ; 

-- 36. diaplay all the records of patients in decreasing order of age
select *
from patients
order by date_of_birth desc;

-- 37./* Display the person who is the eldest */
select *
from patients
order by date_of_birth limit 1;

-- 38./* Display the person who is the second eldest person */
select *
from patients
order by date_of_birth limit 1,1;
-- 39. display the patient who is the youngest 
select * 
from patients
order by date_of_birth limit 1;
-- 40. display no. of patients in the hospital
select count(patient_id)
from patients; 
-- 41. display no. of doctors in the hospital
select count(Doc_id)
from doctors;
-- 42 display average age of patients
select avg(date_of_birth)
from patients;
/* String functions */
-- 43.. concatenate : used two combine multiple strings
select concat('Health','CareDB');
select concat('Health',' ','CareDB');
select concat('Health',' ','CareDB') as full_name;

-- 44.display the fullname and address of an patients in a single column 
select first_name,last_name,address
from patients;

select concat(first_name,address)
from patients;

select concat(first_name,'-->',speciality)
from doctors;

select concat(first_name,'-->',address) as name_address
from patients;

-- 45.display name and address in a single column of Mumbai location only
select concat(first_name,'-->',address) as name_address
from patients
where address='mumbai';

-- 46.lower : convert the string into lowercase
select lower('HealthCareDB');

select lower(name) from nurse ;

-- 47.display name in lowercase,age,department,salary from emp table
select lower(name),gender,position
from nurse;

-- 48.upper : convert the string into uppercase
select upper('healthcaredb');
select upper(name) from nurse;

-- 49.display name in uppercase,gender,position from emp table
select upper(name),gender,position
from nurse;

-- 50.replace : to replace a particular string with some value
select replace('Good Morning','Morning','Night');
select replace('Good Morning','o','a');

-- 51. replace ent eith its full form in doctors table
select replace(speciality,'ENT','Ear Nose Throat')
from doctors;
select replace(speciality,'Ear Nose Throat','ENT')
from doctors;

-- 52 substring : used to extract subpart of a string
select substring('healthcaredb',3,8);
select substr('healthcaredb',1,3);

-- 53.display first 4 alphabets of name from emp table
select substr(name,1,4)
from nurse;

select name,substr(name,1,4)
from nurse;

-- 54.length : used to find length of the string
select length('healthcaredb');
select length(465456545);

-- 55.display city and length of the city from emp table
select address,length(address)
from patients;

-- 56 left : to select the characters from the left side

select name, left(name,3) from nurse;

-- 57 right : to elect the characters from the right side

select first_name,right(first_name,3) from doctors;

-- 58 trim : to remove spaces from both the sides of the string
select trim('     healthcaredb    ');
select ltrim('         healthcaredb     ');
select rtrim('     healthcaredb       '); 


-- 59. /* Aggregate functions */
select count(name) from nurse;
select count(name) as no_of_nurses from nurse;

select sum(date_of_birth) from patients;

-- 60. display oldest age of patients using aggregate functions
select min(date_of_birth) as oldest from patients;
 
 -- 61. display youngest age of patients using aggregate functions
select max(date_of_birth) as youngest from patients; 

-- 62. display details of youngest age of patients using subquery
select * from patients
where date_of_birth = ((select max(date_of_birth) from patients ));

-- 63. display details of oldest age of patients using subquery
select * from patients
where date_of_birth = ((select min(date_of_birth) from patients ));

-- 64 display addresswise count of patients
select address,count(first_name) from patients group by address;

-- 65 gender wise count of employees group by age
select gender, count(first_name) from patients  group by gender;

-- 66 display addresswise min,max,age
select address,min(date_of_birth),max(date_of_birth)
from patients
group by address;

-- 67 display tables containing doctor and appointment details(INNER JOIN)
select *
from doctors d
join appointment a
where d.doc_id=a.doc_id;

-- 68  display table containing doctor and appointment details(LEFT JOIN)
select *
from doctors d
left join appointment a
on d.doc_id=a.doc_id;

-- 69  display table containing doctor and appointment details(RIGHT JOIN)
select *
from doctors d
RIGHT join appointment a
ON d.doc_id=a.doc_id;

-- 70  display tables containing doctor and appointment details(CROSS JOIN)
select *
from doctors d
CROSS join appointment a
ON d.doc_id=a.doc_id;

-- 71.	 RETRIEVE ALL DETAILS OF PATIENTS AND THEIR MEDICAL RECORD
select *
from patients p
left join medical_record m
on p.patient_id=m.patient_id
union all
select * 
from patients p
right join medical_record m
on p.patient_id=m.patient_id;

-- 72.	 RETRIEVE ALL DETAILS OF PATIENTS AND THEIR MEDICAL RECORD WITHOUT DUPLICATES
select *
from patients p
left join medical_record m
on p.patient_id=m.patient_id
union 
select * 
from patients p
right join medical_record m
on p.patient_id=m.patient_id;