-- show databases;

-- create database hospital;

-- use hospital;

CREATE TABLE patients (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender ENUM('Male', 'Gender') NOT NULL
);

CREATE TABLE doctors (
	id INT PRIMARY KEY auto_increment,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    specialization ENUM('Cardiologist', 'Dermatologist', 'Pediatrician', 'Neuro Surgeon', 'Physician')
);

CREATE TABLE appointments(
	id INT auto_increment PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE  NOT NULL,
    FOREIGN KEY(patient_id) REFERENCES patients(id),
    FOREIGN KEY(doctor_id) REFERENCES doctors(id)
);
    