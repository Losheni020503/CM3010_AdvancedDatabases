USE heart_disease;


-- Drop existing tables if they exist
DROP TABLE IF EXISTS Diagnostics;
DROP TABLE IF EXISTS Treatments;
DROP TABLE IF EXISTS Patients;

-- Create Patients table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    age INT,
    sex VARCHAR(10),
    resting_bp INT,
    cholesterol INT,
    fasting_bs INT,
    max_hr INT,
    exercise_angina VARCHAR(10),
    oldpeak FLOAT,
    num_major_vessels INT,
    thalassemia VARCHAR(20),
    heart_disease INT
);

-- Create Diagnostics table
CREATE TABLE Diagnostics (
    diagnostic_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    chest_pain_type VARCHAR(20),
    resting_ecg VARCHAR(20),
    slope VARCHAR(20),
    date_recorded DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Create Treatments table
CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    medication VARCHAR(255),
    dosage VARCHAR(100),
    frequency VARCHAR(50),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
