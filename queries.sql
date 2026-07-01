CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15)
);
desc table patients;

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(50)
);
desc table doctors;

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
desc table appointments;

CREATE TABLE Bills (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    amount DECIMAL(10,2),
    bill_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
desc table bills;

select * from patients;
select * from doctors;
select * from appointments;
select * from bills;

INSERT INTO Patients VALUES(1,'Amit Jadhav',25,'Male','9876543210');
INSERT INTO Patients VALUES(2,'Priya Patil',30,'Female','9876543211');
INSERT INTO Patients VALUES(3,'Rahul Sutar',28,'Male','9876543212');
INSERT INTO Patients VALUES(4,'Sneha Joshi',22,'Female','9876543213');
INSERT INTO Patients VALUES(5,'Vikas Pedamkar',35,'Male','9876543214');
INSERT INTO Patients VALUES(6,'Anjali Mehta',27,'Female','9876543215');
INSERT INTO Patients VALUES(7,'Rohit Yadav',31,'Male','9876543216');
INSERT INTO Patients VALUES(8,'Pooja Desai',29,'Female','9876543217');
INSERT INTO Patients VALUES(9,'Karan Medhekar',40,'Male','9876543218');
INSERT INTO Patients VALUES(10,'Neha Kulkarni',26,'Female','9876543219');
INSERT INTO Patients VALUES(11,'Arjun Bhosle',33,'Male','9876543220');
INSERT INTO Patients VALUES(12,'Meera Iyer',24,'Female','9876543221');
INSERT INTO Patients VALUES(13,'Sanjay Verma',45,'Male','9876543222');
INSERT INTO Patients VALUES(14,'Kavita Rao',38,'Female','9876543223');
INSERT INTO Patients VALUES(15,'Manish Sonavle',29,'Male','9876543224');
INSERT INTO Patients VALUES(16,'Ritu Singh',34,'Female','9876543225');
INSERT INTO Patients VALUES(17,'Deepak Kumar',37,'Male','9876543226');
INSERT INTO Patients VALUES(18,'Swati Patil',23,'Female','9876543227');
INSERT INTO Patients VALUES(19,'Nikhil Sutar',32,'Male','9876543228');
INSERT INTO Patients VALUES(20,'Asha Gupta',41,'Female','9876543229');
INSERT INTO Patients VALUES(21,'Varun Das',28,'Male','9876543230');
INSERT INTO Patients VALUES(22,'Komal Shah',26,'Female','9876543231');
INSERT INTO Patients VALUES(23,'Raj Malhotra',39,'Male','9876543232');
INSERT INTO Patients VALUES(24,'Preeti Sharma',27,'Female','9876543233');
INSERT INTO Patients VALUES(25,'Suresh Reddy',50,'Male','9876543234');
INSERT INTO Patients VALUES(26,'Divya Nair',22,'Female','9876543235');
INSERT INTO Patients VALUES(27,'Ankit Jain',31,'Male','9876543236');
INSERT INTO Patients VALUES(28,'Shreya Kulkarni',28,'Female','9876543237');
INSERT INTO Patients VALUES(29,'Mohit Verma',36,'Male','9876543238');
INSERT INTO Patients VALUES(30,'Tanvi Joshi',25,'Female','9876543239');
 
select * from patients;

INSERT INTO Doctors VALUES(1,'Dr. Mehta','Cardiologist');
INSERT INTO Doctors VALUES(2,'Dr. Sharma','Dermatologist');
INSERT INTO Doctors VALUES(3,'Dr. Patel','Orthopedic');
INSERT INTO Doctors VALUES(4,'Dr. Bavkar','Neurologist');
INSERT INTO Doctors VALUES(5,'Dr. Iyer','Pediatrician');
INSERT INTO Doctors VALUES(6,'Dr. Gupta','General Physician');
INSERT INTO Doctors VALUES(7,'Dr. Bhosle','Gynecologist');
INSERT INTO Doctors VALUES(8,'Dr. Singh','ENT Specialist');
INSERT INTO Doctors VALUES(9,'Dr. Das','Psychiatrist');
INSERT INTO Doctors VALUES(10,'Dr. Shinde','Dentist');

select * from doctors;

INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date) VALUES(1,1,1,TO_DATE('2026-04-01','YYYY-MM-DD'));

INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(2,2,2,TO_DATE('2026-04-02','YYYY-MM-DD'));
INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date) VALUES(3,3,3,TO_DATE('2026-04-03','YYYY-MM-DD'));
INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date) VALUES(4,4,4,TO_DATE('2026-04-04','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(5,5,5,TO_DATE('2026-04-05','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(6,6,6,TO_DATE('2026-04-06','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(7,7,7,TO_DATE('2026-04-07','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(8,8,8,TO_DATE('2026-04-08','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(9,9,9,TO_DATE('2026-04-09','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(10,10,TO_DATE(10,'2026-04-10','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(11,11,1,TO_DATE('2026-04-11','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(12,12,2,TO_DATE('2026-04-12','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(13,13,3,TO_DATE('2026-04-13','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(14,14,4,TO_DATE('2026-04-14','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(15,15,5,TO_DATE('2026-04-15','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(16,16,6,TO_DATE('2026-04-16','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(17,17,7,TO_DATE('2026-04-17','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(18,18,8,TO_DATE('2026-04-18','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(19,19,9,TO_DATE('2026-04-19','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(20,20,10,TO_DATE('2026-04-20','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(21,21,1,TO_DATE('2026-04-21','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(22,22,2,TO_DATE('2026-04-22','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(23,23,3,TO_DATE('2026-04-23','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(24,24,4,TO_DATE('2026-04-24','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(25,25,5,TO_DATE('2026-04-25','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(26,26,6,TO_DATE('2026-04-26','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(27,27,7,TO_DATE('2026-04-27','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(28,28,8,TO_DATE('2026-04-28','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(29,29,9,TO_DATE('2026-04-29','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(30,30,10,TO_DATE('2026-04-30','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(31,1,2,TO_DATE('2026-05-01','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(32,2,3,TO_DATE('2026-05-02','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(33,3,4,TO_DATE('2026-05-03','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(34,4,5,TO_DATE('2026-05-04','YYYY-MM-DD'));
INSERT INTO Appointments(appointment_id, patient_id, doctor_id, appointment_date)  VALUES(35,5,6,TO_DATE('2026-05-05','YYYY-MM-DD'));

desc table appointments;
select * from appointments;


INSERT INTO Bills VALUES(1,1,500,To_date('2026-04-01','YYYY-MM-DD'));
INSERT INTO Bills VALUES(2,2,700,To_date('2026-04-02','YYYY-MM-DD'));
INSERT INTO Bills VALUES(3,3,800,To_date('2026-04-03','YYYY-MM-DD'));
INSERT INTO Bills VALUES(4,4,600,To_date('2026-04-04','YYYY-MM-DD'));
INSERT INTO Bills VALUES(5,5,900,To_date('2026-04-05','YYYY-MM-DD'));
INSERT INTO Bills VALUES(6,6,750,To_date('2026-04-06','YYYY-MM-DD'));
INSERT INTO Bills VALUES(7,7,650,To_date('2026-04-07','YYYY-MM-DD'));
INSERT INTO Bills VALUES(8,8,850,To_date('2026-04-08','YYYY-MM-DD'));
INSERT INTO Bills VALUES(9,9,950,To_date('2026-04-09','YYYY-MM-DD'));
INSERT INTO Bills VALUES(10,10,400,To_date('2026-04-10','YYYY-MM-DD'));
INSERT INTO Bills VALUES(11,11,500,To_date('2026-04-11','YYYY-MM-DD'));
INSERT INTO Bills VALUES(12,12,700,To_date('2026-04-12','YYYY-MM-DD'));
INSERT INTO Bills VALUES(13,13,800,To_date('2026-04-13','YYYY-MM-DD'));
INSERT INTO Bills VALUES(14,14,600,To_date('2026-04-14','YYYY-MM-DD'));
INSERT INTO Bills VALUES(15,15,900,To_date('2026-04-15','YYYY-MM-DD'));
INSERT INTO Bills VALUES(17,17,650,To_date('2026-04-17','YYYY-MM-DD'));
INSERT INTO Bills VALUES(18,18,850,To_date('2026-04-18','YYYY-MM-DD'));
INSERT INTO Bills VALUES(19,19,950,To_date('2026-04-19','YYYY-MM-DD'));
INSERT INTO Bills VALUES(20,20,400,To_date('2026-04-20','YYYY-MM-DD'));
INSERT INTO Bills VALUES(21,21,550,To_date('2026-04-21','YYYY-MM-DD'));
INSERT INTO Bills VALUES(22,22,720,To_date('2026-04-22','YYYY-MM-DD'));
INSERT INTO Bills VALUES(23,23,810,To_date('2026-04-23','YYYY-MM-DD'));
INSERT INTO Bills VALUES(24,24,620,To_date('2026-04-24','YYYY-MM-DD'));
INSERT INTO Bills VALUES(25,25,910,To_date('2026-04-25','YYYY-MM-DD'));
INSERT INTO Bills VALUES(26,26,760,To_date('2026-04-26','YYYY-MM-DD'));
INSERT INTO Bills VALUES(27,27,660,To_date('2026-04-27','YYYY-MM-DD'));
INSERT INTO Bills VALUES(28,28,860,To_date('2026-04-28','YYYY-MM-DD'));
INSERT INTO Bills VALUES(29,29,960,To_date('2026-04-29','YYYY-MM-DD'));
INSERT INTO Bills VALUES(30,30,420,To_date('2026-04-30','YYYY-MM-DD'));

select  * from bills;
--===================================================================================
--                                     ACTUAL QUERIES 
--===================================================================================

-- Show patients older than 40
select name,age from patients where age >40;

-- Show female patients
select name,gender from patients where gender ='Female';

-- Show patients sorted by name(sorted = ascending, descending)
select * from patients order by name desc;

-- Count total doctors
select count(name)as total_doctors from doctors;

-- Show all specializations
select name,specialization from doctors;

-- Show distinct specializations
select distinct name,specialization from doctors;

-- Show bills less than 500
select * from Bills where amount <500;

-- Find maximum age
select max(age)as highest_age from patients;

-- Find minimum age
select min(age)as lowest_age from patients;

-- Show appointments in may
select * from Appointments 
where appointment_date BETWEEN TO_DATE ('2026-05-01','YYYY-MM-DD')and TO_DATE('2026-05-31','YYYY-MM-DD');

-- Show patients with name starting with 'A'
select * from patients where name like'A%';

-- Show doctors with name ending with 'a'
select * from DOCTORS where name like'%a';

-- Show patient + doctor + appointment date
select p.name,d.name,a.appointment_id 
from appointments a 
join patients p 
on p.PATIENT_ID = a.PATIENT_ID 
join doctors d 
on a.DOCTOR_ID = d.DOCTOR_ID;

-- Show all patients with appointments
select p.name,a.appointment_id 
from APPOINTMENTS a 
inner join PATIENTS p 
on p.PATIENT_ID = a.PATIENT_ID;

-- Show all patients (with or without appointments)
select p.name,a.appointment_id 
from patients p 
left join appointments a 
on p.patient_id = a.PATIENT_ID;

-- Show patient name and bill
select p.name,b.bill_id,b.amount 
from bills b 
inner join PATIENTS p 
on p.PATIENT_ID = b.PATIENT_ID;

-- Show doctor name and total appointments
select d.name,count(a.appointment_id)as total_appointments 
from doctors d 
join appointments a 
on  d.doctor_id = a.doctor_id 
group by d.name ;

-- Show patients who visited 'Dermatologist'
select a.patient_id,p.name,d.name 
from patients p 
join appointments a 
on p.patient_id =a.patient_id
join doctors d  
on a.DOCTOR_ID = d.DOCTOR_ID
where d.SPECIALIZATION = 'Dermatologist'; 

-- Show patients who have no bills
select p.name,b.amount,b.bill_id 
from bills b 
right join patients p 
on p.patient_id = b.patient_id 
where b.amount is null;

-- Show appointment details after a specific date
select * from appointments 
where appointment_date > TO_DATE('2026-04-19','YYYY-MM-DD');

-- Show patient and doctor for each bill
select b.bill_id,a.patient_id,p.name as patients_name,d.name as doctors_name 
from patients p 
join appointments a 
on p.patient_id =a.patient_id
join doctors d  
on a.DOCTOR_ID = d.DOCTOR_ID
join bills b 
on a.PATIENT_ID = b.PATIENT_ID;

-- Show all appointments with patient age
select a.appointment_id, p.name as patients_name,p.age as patients_age 
from PATIENTS p 
join APPOINTMENTS a 
on a.PATIENT_ID = p.PATIENT_ID;

-- Show doctors who handled female patients
select d.doctor_id ,p.patient_id ,p.name as patients_name ,d.name as doctors_name 
from DOCTORS d 
join APPOINTMENTS a 
on a.DOCTOR_ID = d.DOCTOR_ID
join PATIENTS p 
on a.PATIENT_ID = p.PATIENT_ID
where p.GENDER = 'Female';

-- Show patients who visited more than one doctor
select p.PATIENT_ID,p.name 
from patients p 
join appointments a 
on a.PATIENT_ID = p.PATIENT_ID
group by p.PATIENT_ID,p.NAME
having count (DISTINCT a.DOCTOR_ID)>1;


-- Show patient and total bill amount
SELECT p.name, SUM(b.amount) AS total_bill
FROM Patients p
JOIN Bills b
ON p.patient_id = b.patient_id
GROUP BY p.name;

-- Show specialization and number of patients
SELECT d.specialization, COUNT(DISTINCT a.patient_id) AS number_of_patients
FROM Doctors d
JOIN Appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.specialization;

-- Find patient with highest total bill
select p.PATIENT_ID,p.name ,sum(b.amount) as total_bill
from  patients p
join bills b
on p.PATIENT_ID = b.PATIENT_ID
group by p.PATIENT_ID,p.NAME
order by total_bill desc;

-- Find doctor with most appointments
select d.DOCTOR_ID,d.name,count(a.appointment_id)as most_appointment
from APPOINTMENTS a 
join doctors d 
on a.DOCTOR_ID = d.DOCTOR_ID 
group by d.DOCTOR_ID,d.NAME
order by most_appointment DESC;

-- Find average bill per doctor
SELECT d.doctor_id, d.name,
       AVG(b.amount) AS average_bill
FROM Doctors d
JOIN Appointments a 
ON d.doctor_id = a.doctor_id
JOIN Patients p 
ON a.patient_id = p.patient_id
JOIN Bills b 
ON p.patient_id = b.patient_id
GROUP BY d.doctor_id, d.name
ORDER BY average_bill DESC;

-- Find patients with more than 1 appointments
select p.patient_id , p.name 
from patients p 
join appointments a 
on a.PATIENT_ID = p.PATIENT_ID
group by p.PATIENT_ID , p.name
having count (a.APPOINTMENT_ID)>1;

-- Find total revenue per day
SELECT b.bill_date, SUM(b.amount) AS total_revenue
FROM bills b
GROUP BY b.bill_date;

-- Find doctors who treated patients above age 50
select d.doctor_id, d.name ,p.age 
from DOCTORS d
join appointments a 
on d.DOCTOR_ID = a.DOCTOR_ID
join patients p 
on a.PATIENT_ID = p.PATIENT_ID
where p.age >= 50 ;

-- Find patient who visited most times
SELECT p.patient_id, p.name, COUNT(a.appointment_id) AS visit_count
FROM patients p
JOIN appointments a 
ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.name
ORDER BY visit_count DESC;

-- Find specialization with highest patients
select d.specialization, count(a.patient_id) as total_patients
from doctors d
join appointments a
on d.doctor_id = a.doctor_id
group by d.specialization
order by total_patients desc;

-- Find second highest bill
select max(amount) as second_highest_bill
from bills
where amount < (select max(amount) from bills);

-- Find patients with bills between 500–800
select b.bill_id , p.name , b.amount
from bills b 
join appointments a 
on b.PATIENT_ID = a.PATIENT_ID
join PATIENTS p 
on a.PATIENT_ID = p.PATIENT_ID
where b.amount BETWEEN 500 and 800;

-- Find doctors whose total earnings > 2000
select d.doctor_id , d.name , sum (b.amount)as total_earning
from doctors d 
join appointments a 
on d.DOCTOR_ID = a.DOCTOR_ID
join bills b 
on a.PATIENT_ID = b.PATIENT_ID
group by d.DOCTOR_ID,d.NAME
having sum (b.amount) >2000;

-- Find doctors who never generated any bill
select d.doctor_id,d.name from doctors d 
left join appointments a 
on d.doctor_id = a.doctor_id
left join bills b 
on a.patient_id = b.patient_id
where b.BILL_ID is null;

-- Find day with highest revenue
select bill_date,sum(amount)as highest_revenue
from bills
group by bill_date
order by highest_revenue desc;

-- Find doctors with at least 3 different patients
SELECT d.doctor_id, d.name
FROM doctors d
JOIN appointments a 
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name
HAVING COUNT(DISTINCT a.patient_id) >= 3;



































































































