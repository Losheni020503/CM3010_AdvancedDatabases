USE heart_disease

-- Insert data into Patients table
INSERT INTO Patients (
    age, sex, resting_bp, cholesterol, fasting_bs, max_hr, 
    exercise_angina, oldpeak, num_major_vessels, thalassemia, heart_disease
)
SELECT DISTINCT 
    age, sex, resting_bp, cholesterol, fasting_bs, max_hr, 
    exercise_angina, oldpeak, num_major_vessels, thalassemia, heart_disease
FROM denormalised;

-- Insert data into Diagnostics table
INSERT INTO Diagnostics (
    patient_id, chest_pain_type, resting_ecg, slope, date_recorded
)
SELECT DISTINCT 
    p.patient_id, d.chest_pain_type, d.resting_ecg, d.slope, CURDATE()
FROM denormalised d
JOIN Patients p
ON d.age = p.age AND d.sex = p.sex AND d.resting_bp = p.resting_bp
AND d.cholesterol = p.cholesterol AND d.fasting_bs = p.fasting_bs
AND d.max_hr = p.max_hr AND d.exercise_angina = p.exercise_angina
AND d.oldpeak = p.oldpeak AND d.num_major_vessels = p.num_major_vessels
AND d.thalassemia = p.thalassemia AND d.heart_disease = p.heart_disease;

-- Insert data into Treatments table (assuming that all treatments start from today and end in one year for this example)
INSERT INTO Treatments (
    patient_id, medication, dosage, frequency, start_date, end_date
)
SELECT DISTINCT 
    p.patient_id, 'Med_A', 'Dosage_A', 'Frequency_A', CURDATE(), DATE_ADD(CURDATE(), INTERVAL 1 YEAR)
FROM denormalised d
JOIN Patients p
ON d.age = p.age AND d.sex = p.sex AND d.resting_bp = p.resting_bp
AND d.cholesterol = p.cholesterol AND d.fasting_bs = p.fasting_bs
AND d.max_hr = p.max_hr AND d.exercise_angina = p.exercise_angina
AND d.oldpeak = p.oldpeak AND d.num_major_vessels = p.num_major_vessels
AND d.thalassemia = p.thalassemia AND d.heart_disease = p.heart_disease;
