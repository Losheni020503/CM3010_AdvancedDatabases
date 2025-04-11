# 🩺 Chronic Kidney Disease (CKD) Database Exploration & Visualization

This project presents a comprehensive **data-driven exploration** of Chronic Kidney Disease (CKD) using a MySQL relational database and a Node.js web application. The project integrates data engineering, database design, and full-stack development to deliver insights into CKD demographics, clinical symptoms, and diagnostic factors.

---

## 🔍 Project Overview

- 🗃️ **Dataset**: Kaggle’s Chronic Kidney Disease Dataset  
- 🛠️ **Backend**: MySQL (Structured database for medical records)  
- 🌐 **Frontend**: Node.js + Express.js (Interactive visual dashboard)  
- 🧮 **Research Focus**: Risk analysis, demographic trends, and CKD indicators

---

## 📌 Key Features

### ✅ MySQL Relational Database

- Designed a **normalized schema** (3NF) for optimal data integrity.
- Implemented complex **SQL queries** for:
  - Demographic analysis
  - Clinical measurement statistics
  - Diagnosis frequency
- Tables include:
  - `Patients`
  - `Demographics`
  - `MedicalHistory`
  - `ClinicalMeasurements`
  - `Symptoms`
  - `Diagnosis`

### 🔄 Entity-Relationship (E/R) Model

- One-to-many and one-to-one relationships across:
  - Patient profiles
  - Medical and symptom data
  - Diagnosis tracking
- Fully normalized to **3NF** to reduce redundancy and ensure atomicity.

### 🌐 Node.js Application

- Visual interface to:
  - Display patient trends and risk profiles
  - Execute live SQL queries from the front end
  - Generate charts and reports
- Built with **Node.js, Express.js, and MySQL2** connector

### 📊 Research Questions Addressed

- What demographic factors are most associated with CKD?
- Which medical attributes are most predictive of CKD?
- Can we identify patterns among different patient stages?
- How can we visualize symptom clusters across diagnoses?

---

## 🧱 Schema Design Snapshot

Table: Patients
- PatientID (PK)
- Name, Age, Gender, Address

Table: Demographics
- DemographicID (PK)
- PatientID (FK)
- Ethnicity, EducationLevel, Occupation

Table: MedicalHistory
- MedicalHistoryID (PK)
- PatientID (FK)
- Hypertension, Diabetes, Anemia, CAD

Table: ClinicalMeasurements
- ClinicalMeasurementID (PK)
- PatientID (FK)
- BloodPressure, SerumCreatinine, Hemoglobin, etc.

Table: Diagnosis
- DiagnosisID (PK)
- PatientID (FK)
- Stage, DiagnosisDate, TreatmentPlan

---

How to Run the Project 
🧰 Requirements
MySQL 8+

Node.js 18+

npm packages: mysql2, express, ejs, body-parser

---

🔧 Setup
Clone this repo:

git clone https://github.com/your-username/ckd-database-project.git
cd ckd-database-project
Import SQL schema into MySQL:

mysql -u root -p < schema.sql
Run Node.js server:

npm install
node index.js
Visit: http://localhost:3000

📈 Sample SQL Queries

-- 1. Age and gender distribution of CKD patients
SELECT age, gender, COUNT(*) FROM patients
JOIN diagnosis ON patients.PatientID = diagnosis.PatientID
WHERE diagnosis.Stage IS NOT NULL
GROUP BY age, gender;

-- 2. Average Hemoglobin levels by CKD Stage
SELECT stage, AVG(Hemoglobin) FROM clinicalmeasurements
JOIN diagnosis ON clinicalmeasurements.PatientID = diagnosis.PatientID
GROUP BY stage;
🧠 Learning Outcomes
Designed and normalized a relational medical database.

Built full-stack web apps for real-time medical data querying.

Gained insights into CKD patterns through SQL-driven research.

---

👤 Author
Losheni Meenakshi Sundaram
Student, University Of London , Singapore Institute of Management
📫 Email: losheni.ms@gmail.com

