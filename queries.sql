# List doctors based at a hospital (hospital_id = n)

SELECT
    hospitals.hospital_id,
    hospitals.name AS hospital_name,
    doctors.person_id AS doctor_id,
    doctors.name AS doctor_name,
    doctors.date_of_birth AS doctor_dob,
    doctors.address AS doctor_address
FROM hospitals
LEFT JOIN doctors
ON hospitals.hospital_id = doctors.hospital_id
WHERE hospitals.hospital_id = n;


# List prescriptions for a patient (person_id = n) ordered by 
dates

SELECT
    patients.person_id AS patient_id,
    patients.name AS patient_name,
    prescriptions.*
FROM patients
LEFT JOIN prescriptions
ON patients.person_id = prescriptions.patient_id
WHERE patients.person_id = n
ORDER BY prescription_date;


# List prescriptions by a doctor (person_id = n)

SELECT
    doctors.person_id AS doctor_id,
    doctors.name AS doctor_name,
    prescriptions.*
FROM doctors
LEFT JOIN prescriptions
ON doctors.person_id = prescriptions.doctor_id
WHERE person_id = n;


# Add a new patient (name: patient's name, date of birth: day/month/year, address: patient's address doctor_id: n)

INSERT INTO patients (name, date_of_birth, address, role, doctor_id) VALUES ('patient's name', 'year-month-day', 'patient's address', 'Patient', n);


# Identify the doctor with most prescriptions

SELECT
    doctors.person_id,
    doctors.name,
COUNT(*) AS prescription_count
FROM doctors
INNER JOIN prescriptions
ON doctors.person_id = prescriptions.doctor_id
GROUP BY doctors.person_id, doctors.name
ORDER BY prescription_count DESC
LIMIT 1;



# List the doctors at the hospital with biggest size

SELECT
    doctors.*
FROM hospitals
LEFT JOIN doctors
ON hospitals.hospital_id = doctors.hospital_id
WHERE hospitals.size = (
SELECT MAX(size) FROM hospitals
);
