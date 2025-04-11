USE heart_disease;

-- Drop the existing denormalized table if it exists
DROP TABLE IF EXISTS denormalised;

-- Create a new denormalized table
CREATE TABLE denormalised (
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
    heart_disease INT,
    chest_pain_type VARCHAR(20),
    resting_ecg VARCHAR(20),
    slope VARCHAR(20)
    treatment_id INT ,
    patient_id INT,
    medication VARCHAR(255),
    dosage VARCHAR(100),
    frequency VARCHAR(50),
    start_date DATE,
    end_date DATE,
);

-- Load data from raw CSV into the denormalized table
LOAD DATA INFILE '/home/coder/project/heart_disease/data/heart_disease_dataset.csv'
INTO TABLE denormalised
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
